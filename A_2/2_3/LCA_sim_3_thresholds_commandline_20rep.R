date()
library(tidyverse)
library(randomLCA)
library(mclust)
library(permute)
library(docopt)
library(mvtnorm)


'Get Files

usage:
LCA_sim_commandline.R  programs <p> delta <d> sigma.z <z> proportion <g> out <o>...
LCA_sim_commandline.R -h| --help

options:
-h --help  Show this screen' -> doc

# load the docopt library
# retrieve the command-line arguments
opt <- docopt(doc)
# what are the options? Note that stripped versions of the parameters are added to the returned list
print(str(opt))
# 
# 
# p=7        # number of callers
# delta=0.5  # separation between score
# sigma.z=4 # sd for random effect
# p.0=   0.1          # proportion of genes with binding
# constload=TRUE
# out="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA"

p=as.integer(opt$p)
delta=as.numeric(opt$d)
sigma.z=as.numeric(opt$z)
p.0=as.numeric(opt$g)
#constload=as.numeric(opt$c)
out=as.character(opt$o)

#constload=as.logical(constload)
# things to change: p, delta, sigma.z, p.0, b, threshold, random.effect
######################## for loop ##########################
correlation=tibble(posterior.gmm=0, posterior.F.cl=0, posterior.T.cl=0, posterior.T.ncl=0)
# b_record=tibble(program_1=0, program_2=0, program_3=0, program_4=0, program_5=0)
lca.F_record=list()
lca.T.cl_record=list()
lca.T.ncl_record=list()
gmm_record=list()

post.T.cl_record=list()
post.T.ncl_record=list()
post.F_record=list()
x_record=list()

###################################################### Set Up ############################################################################
set.seed(291118)
print("n")
n=3000
print(n)
print("p")# total number of genes
print(p) 
print("delta")# number of callers
print(delta)
print("sigma.z") # separation between score
print(sigma.z) # sd for random effect
print("p.0")
print(p.0)
print("b")# proportion of genes with binding
b=runif(p,0,2)
#b_record[i,]=b
print(b)
print("threshold")#coefficients for random effects
threshold=c(-0.6, 0, 0.6)
#threshold=(runif(3*p,-0.5,0.5))
#threshold=matrix(threshold[order(threshold)], ncol=p)
print(threshold)


#### for posterior bayes
Sigma=diag(rep(1,p))+sigma.z*outer(b,b) #Variance matrix for posterior Bayes
m0=rep(-delta,p)   #Mean vector for posterior Bayes
m1=rep(delta,p)    #Mean vector for posterior Bayes
#perm.matrix=allPerms(p) # matix of permutations for thresholds, low med high
if(p==5){
  perm.matrix=as.matrix(expand.grid(c(1,2,3),
                          c(1,2,3),
                          c(1,2,3),
                          c(1,2,3),
                          c(1,2,3)))
  
}else{
  perm.matrix=as.matrix(expand.grid(c(1,2,3),
                                    c(1,2,3),
                                    c(1,2,3),
                                    c(1,2,3),
                                    c(1,2,3),
                                    c(1,2,3),
                                    c(1,2,3)))  
  
}


for(j in 1:20){
  print(j)
#work out number in each group
n1=round(p.0*n)
n2=n-n1
#simulate scores
x1=matrix(rnorm(n1*p),ncol=p)-delta
x2=matrix(rnorm(n2*p),ncol=p)+delta
x=rbind(x1,x2)
#simulate random effect
z=rnorm(n,sd=sigma.z)
#add random effect to scores to obtain final scores
x=x+outer(z,b)
print("x")
print(head(x))
#now derive matrix of calls by applying threshold to final scores

#initialise 

print("initialise")
#initialise
y=matrix(0,n,p)
y=data.frame(y)
y[x>outer(rep(1,n),threshold[perm.matrix[1,]])]=1

lca.fit.F=tryCatch({
  randomLCA(y,random=F,probit=T, quadpoints = 190, qniterations = 5)

  }, error = function(e){
  cat("ERROR in Non-Random :", conditionMessage(e), "\n")
  return(NA)})

# 
lca.fit.T.cl=tryCatch({
  randomLCA(y,random=T,probit=T, quadpoints=190, qniterations=5, constload = T)
}, error=function(e){
  cat("ERROR in Random Con Load :", conditionMessage(e), "\n")
  return(NA)})


lca.fit.T.ncl =tryCatch({
  randomLCA(y,random=T,probit=T, quadpoints=190, qniterations=5, constload = F)
}, error=function(e){
  cat("ERROR in Random Non-Con Load :", conditionMessage(e), "\n")
  return(NA)})

index=1:nrow(y)
temp=data.frame(index,y)


if(is.logical(lca.fit.F)){
  post.F=data.frame(index, p=rep(NA, n))
  
}else{
  temp.F=merge(temp,postClassProbs(lca.fit.F))  
  post.F=data.frame(index=temp.F$index,p=temp.F$'Class 1')
  
}

post.F

if(is.logical(lca.fit.T.cl)){
  post.T.cl=data.frame(index, p=rep(NA, n))
  
}else{
  temp.T.cl=merge(temp,postClassProbs(lca.fit.T.cl))  
  post.T.cl=data.frame(index=temp.T.cl$index,p=temp.T.cl$'Class 1')
  
}
post.T.cl

if(is.logical(lca.fit.T.ncl)){
  post.T.ncl=data.frame(index, p=rep(NA, n))
  
}else{
  temp.T.ncl=merge(temp,postClassProbs(lca.fit.T.ncl))
  post.T.ncl=data.frame(index=temp.T.ncl$index,p=temp.T.ncl$'Class 1')
  
}
post.T.ncl



######################################################## Threshold Permutations for LCA ########################################################
print("thresholds")

#loop over threshold permutations
for(i in 2:nrow(perm.matrix)){
  #print(i)
  #now derive matrix of calls by applying threshold to final scores
  y=matrix(0,n,p)
  y=data.frame(y)
 # y[x>outer(rep(1,n),diag(threshold[perm.matrix[i,],c(1,2,3,4,5)])
#)]=1
  
   y[x>outer(rep(1,n),threshold[perm.matrix[i,]])]=1
  
  #Fit randomlca with probit option so that fitting a correct model
   lca.fit.F=tryCatch({
     randomLCA(y,random=F,probit=T, quadpoints = 190, qniterations = 5)
     
   }, error = function(e){
     cat("ERROR in Non-Random :", conditionMessage(e), "\n")
     return(NA)})
   
   
   lca.fit.T.cl=tryCatch({
     randomLCA(y,random=T,probit=T, quadpoints=190, qniterations=5, constload = T)
   }, error=function(e){
     cat("ERROR in Random Con Load :", conditionMessage(e), "\n")
     return(NA)})


   lca.fit.T.ncl =tryCatch({
     randomLCA(y,random=T,probit=T, quadpoints=190, qniterations=5, constload = F)
   }, error=function(e){
     cat("ERROR in Random Non-Con Load :", conditionMessage(e), "\n")
     return(NA)})
   

  # lca.fit.F=randomLCA(y,random=F,probit=T, quadpoints=190, qniterations=5)
  # lca.fit.T.cl=randomLCA(y,random=T,probit=T, quadpoints=190, qniterations=5, constload = T)
  # lca.fit.T.ncl =randomLCA(y,random=T,probit=T, quadpoints=190, qniterations=5, constload = F)
  # #Use merge to get posterior probabilities but, carry ordering
  index=1:nrow(y)
  
  temp=data.frame(index,y)
  
  if(is.logical(lca.fit.F)){
    temp.F=data.frame(index, p=rep(NA, n))
    post.F=merge(post.F,temp.F,by="index")
    
  }else{
    temp.F=merge(temp,postClassProbs(lca.fit.F))  
    temp.F=data.frame(index=temp.F$index,p=temp.F$'Class 1')
    post.F=merge(post.F,temp.F,by="index")
  }
  
  if(is.logical(lca.fit.T.cl)){
    temp.T.cl=data.frame(index,p=rep(NA, n))
    post.T.cl=merge(post.T.cl, temp.T.cl, by="index")
  }else{
    temp.T.cl=merge(temp,postClassProbs(lca.fit.T.cl))
    temp.T.cl=data.frame(index=temp.T.cl$index,p=temp.T.cl$'Class 1')
    post.T.cl=merge(post.T.cl,temp.T.cl,by="index")

  }
  # 
  if(is.logical(lca.fit.T.ncl)){
    temp.T.ncl=data.frame(index, p=rep(NA,n))
    post.T.ncl=merge(post.T.ncl, temp.T.ncl, by="index")
  }else{
    temp.T.ncl=merge(temp,postClassProbs(lca.fit.T.ncl))
    temp.T.ncl=data.frame(index=temp.T.ncl$index,p=temp.T.ncl$'Class 1')
    post.T.ncl=merge(post.T.ncl,temp.T.ncl,by="index")
  }


  print(i)
 }


first.F=min(which(is.na(post.F[1,2:ncol(post.F) ])==FALSE))+1
first.T.cl=min(which(is.na(post.T.cl[1,2:ncol(post.T.cl) ])==FALSE))+1
first.T.ncl=min(which(is.na(post.T.ncl[1,2:ncol(post.T.ncl) ])==FALSE))+1

for(i in (first.F+1):ncol(post.F)) if(is.na(post.F[1,i])==F & cor(post.F[,i],post.F[,first.F])<0){ post.F[,i]=1-post.F[,i]}
post.F
for(i in (first.T.cl+1):ncol(post.T.cl)) if(is.na(post.T.cl[1,i])==F & cor(post.T.cl[,i],post.T.cl[,first.T.cl])<0) post.T.cl[,i]=1-post.T.cl[,i]
post.T.cl
for(i in (first.T.ncl+1):ncol(post.T.ncl)) if(is.na(post.T.ncl[1,i])==F & cor(post.T.ncl[,i],post.T.ncl[,first.T.ncl])<0) post.T.ncl[,i]=1-post.T.ncl[,i]
post.T.ncl


#Calulate average of probabilies for all permutations
posterior.F.ave=rowMeans(post.F[,-1], na.rm = T)
posterior.T.cl.ave=rowMeans(post.T.cl[,-1], na.rm = T)
posterior.T.ncl.ave=rowMeans(post.T.ncl[,-1], na.rm=T)


#posterior.bayes=apply(x,1,function(z)
#{p.0*dmvnorm(z,mean=m0,sigma=Sigma)/(p.0*dmvnorm(z,mean=m0,sigma=Sigma)+(1-p.0)*dmvnorm(z,mean=m1,sigma=Sigma))})


################# guassian model #############################################
x.sort=x[post.F[,1],]
print(head(x.sort))

print("fit gaussian mixture model and extract posterior probabilities")
library(mclust)
gmm.fit=Mclust(x.sort,G=2)
posterior.gmm=predict(gmm.fit)$z[,1]
summary(posterior.gmm)

# plot(posterior.bayes,posterior.F.ave)
# plot(posterior.bayes,posterior.T.ave)



print(cor(posterior.gmm,posterior.F.ave))
print(cor(posterior.gmm,posterior.T.cl.ave))
print(cor(posterior.gmm,posterior.T.ncl.ave))



#jpeg(filename=paste0(out, "gmm_vs_lca_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0, "_conts_load_", constload,".jpeg"))
#pairs(cbind(posterior.gmm,posterior.lca.F,posterior.lca.T))
#dev.off()

#save(out, lca.fit.T, lca.fit.F,  x.sort, gmm.fit, posterior.lca.F, posterior.lca.T, posterior.gmm,file=paste0(out, "results_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0, "const_load", constload) )


 lca.T.cl_record[[j]]=posterior.T.cl.ave
 post.T.cl_record[[j]]=post.T.cl
 lca.T.ncl_record[[j]]=posterior.T.ncl.ave
 post.T.ncl_record[[j]]=post.T.ncl
 lca.F_record[[j]]=posterior.F.ave
 post.F_record[[j]]=post.F
 gmm_record[[j]]=posterior.gmm
 x_record[[j]]=x.sort

correlation[j,]=(cor(cbind(posterior.gmm,posterior.F.ave,posterior.T.cl.ave, posterior.T.ncl.ave)))

save(correlation, lca.T.cl_record, lca.T.ncl_record, lca.F_record, gmm_record, file=paste0(out, "/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0))
#save(posterior.T.ncl.ave, posterior.T.cl.ave, posterior.F.ave, posterior.gmm, file=paste0(out, "/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0))
save(post.F_record, post.T.cl_record, post.T.ncl_record, x_record, p, delta, sigma.z, p.0, file=paste0(out, "/phoenix_full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0))


}

correlation
save(correlation, lca.T.cl_record, lca.T.ncl_record, lca.F_record, gmm_record, file=paste0(out, "/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0))
#save(posterior.T.ncl.ave, posterior.T.cl.ave, posterior.F.ave, posterior.gmm, file=paste0(out, "/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0))
save(post.F_record, post.T.cl_record, post.T.ncl_record, x_record, p, delta, sigma.z, p.0, file=paste0(out, "/phoenix_full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0))


print(correlation)


# things to change: p, delta, sigma.z, p.0, b, threshold, random.effect



