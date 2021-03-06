date()
library(tidyverse)
library(randomLCA)
library(permute)
library(mclust)
library(docopt)



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


# p=5        # number of callers
# delta=0.5  # separation between score
# sigma.z=0 # sd for random effect
# p.0=0.7              # proportion of genes with binding
# constload=TRUE
# out="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA"

p=as.integer(opt$p)
delta=as.numeric(opt$d)
sigma.z=as.numeric(opt$z)
p.0=as.numeric(opt$g)
#constload=as.numeric(opt$c)
out=as.character(opt$o)

set.seed(291118)
#constload=as.logical(constload)
# things to change: p, delta, sigma.z, p.0, b, threshold, random.effect
######################## for loop ##########################
correlation=tibble(posterior.gmm=0, posterior.lca.F=0)
b_record=tibble(program_1=0, program_2=0, program_3=0, program_4=0, program_5=0)
lca.F_record=list()
# lca.T.CL_record=list()
# lca.T.NCL_record=list()

###################################################### Set Up ############################################################################
print("n")
n=3000
print(n) # total number of genes
print("p")
print(p) # number of callers
print("delta")
print(delta) # separation between score
print("sigma.z")  
print(sigma.z) # sd for random effect
print("p.0")
print(p.0) # proportion of genes with binding
print("b")
b=runif(p,0, 2) #coefficients for random effects
b_record[1,]=b
print(b)
print("threshold")
threshold=rep(1,p)
print(threshold)

for(i in 1:20){
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
y=matrix(0,n,p)
y=data.frame(y)
y[x>outer(rep(1,n),threshold)]=1
print("y")
print(head(y))
######################################################## LCA and MGMM ######################################################################
lca.fit.F=tryCatch({
  randomLCA(y,random=F,probit=T, quadpoints = 190, qniterations = 5)
  
}, error = function(e){
  cat("ERROR in Non-Random :", conditionMessage(e), "\n")
  return(NA)})


# lca.fit.T.CL=tryCatch({
#   randomLCA(y,random=T,probit=T, quadpoints=190, qniterations=5, constload = T)
# }, error=function(e){
#   cat("ERROR in Random Con Load :", conditionMessage(e), "\n")
#   return(NA)})
# 
# 
# lca.fit.T.NCL =tryCatch({
#   randomLCA(y,random=T,probit=T, quadpoints=190, qniterations=5, constload = F)
# }, error=function(e){
#   cat("ERROR in Random Non-Con Load :", conditionMessage(e), "\n")
#   return(NA)})
# 
# 


print("Use merge to get posterior probabilities but, carry original scores for ordering")
temp=data.frame(x,y)

if(is.logical(lca.fit.F)){
  posterior.lca.F=rep(NA,3000)
  
}else{
  temp.F=merge(temp,postClassProbs(lca.fit.F))
  posterior.lca.F=temp.F$'Class 1'
}

# if(is.logical(lca.fit.T.CL)){
#   posterior.lca.T.CL=rep(NA,3000)
#   
# }else{
#   temp.T.CL=merge(temp,postClassProbs(lca.fit.T.CL))
#   posterior.lca.T.CL=temp.T.CL$'Class 1'
# }
# 
# if(is.logical(lca.fit.T.NCL)){
#   posterior.lca.T.NCL=rep(NA,3000)
#   
# }else{
#   temp.T.NCL=merge(temp,postClassProbs(lca.fit.T.NCL))
#   posterior.lca.T.NCL=temp.T.NCL$'Class 1'
# }





print("extract original scores in same order as lca posterior probabilities")
x.sort=temp.F[,(p+1):(2*p)]
print(head(x.sort))
y.sort=temp.F[,(1):(p)]

print("fit gaussian mixture model and extract posterior probabilities")
library(mclust)
gmm.fit=Mclust(x.sort,G=2)
posterior.gmm=predict(gmm.fit)$z[,1]
summary(posterior.gmm)

print("#compare LCA and GMM posterior probabilities")
if(is.na(posterior.lca.F[1])==F & cor(posterior.gmm,posterior.lca.F)<0) posterior.lca.F=1-posterior.lca.F
# if(is.na(posterior.lca.T.CL[1])==F & cor(posterior.lca.T.CL,posterior.gmm)<0) posterior.lca.T.CL=1-posterior.lca.T.CL
# if(is.na(posterior.lca.T.NCL[1])==F & cor(posterior.gmm,posterior.lca.T.NCL)<0) posterior.lca.T.NCL=1-posterior.lca.T.NCL



#jpeg(filename=paste0(out, "gmm_vs_lca_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0, "_conts_load_", constload,".jpeg"))
#pairs(cbind(posterior.gmm,posterior.lca.F,posterior.lca.T))
#dev.off()

#save(out, lca.fit.T, lca.fit.F,  x.sort, gmm.fit, posterior.lca.F, posterior.lca.T, posterior.gmm,file=paste0(out, "results_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0, "const_load", constload) )

print("cor(cbind(posterior.gmm,posterior.lca.F,posterior.lca.T.CL,posterior.lca.T.NCL, ))")
print(cor(cbind(posterior.gmm,posterior.lca.F)))
cor(cbind(posterior.gmm,posterior.lca.F))

# lca.T.CL_record[[i]]=lca.fit.T.CL
# lca.T.NCL_record[[i]]=lca.fit.T.NCL
 lca.F_record[[i]]=lca.fit.F
correlation[i,]=(cor(cbind(posterior.gmm,posterior.lca.F)))

}
correlation
save(correlation, file=paste0(out, "/3models_150118_p1_contThresh_correlation_5_samples_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0))
# save(lca.T.CL_record, file=paste0(out, "/3models_100118_n0.5_contThresh_lca.T.CL_record_5_samples_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0))
# save(lca.T.NCL_record, file=paste0(out, "/3models_100118_n0.5_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0))
save(lca.F_record, file=paste0(out, "/3models_150118_p1_contThresh_lca.F_record_5_samples_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0))
save(b_record,p, delta, sigma.z, p.0, file=paste0(out, "/3models_150118_p1_contThresh_b_record_parameter_list_5_samples_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0))

print(correlation)
save(out, lca.fit.F,  x.sort, y.sort, threshold, gmm.fit, posterior.lca.F, posterior.gmm,file=paste0(out, "3models_150118_p1_contThresh_results_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0) )


# things to change: p, delta, sigma.z, p.0, b, threshold, random.effect


