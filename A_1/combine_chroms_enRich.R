# enRich_data=tibble()
# 
# for(i in c(seq(1,22), "X", "Y", "M")){
#   tmp=load(paste("enRich_analysis/enrich_results_170818_", i, sep="" ))
#   enRich_data=rbind(enRich_data, H3K36me3.1000bp.enrich$diffenrich2)
# }
# 
# 
# save(enRich_data, file="enRich_analysis/combined_enRich_data" )
# 
# nrow(enRich_data)


enRich_data=tibble()

names_vec=c("Control_Rep_1", "Control_Rep_2", "H3K36me3_Rep_1", "H3K36me3_Rep_2")

sub_init=function(x){
  substr(x, 1, 4)
}

names_vec=sapply(names_vec,sub_init, simplify="vector")
names_vec=as.vector(names_vec)
names_vec=as.numeric(factor(names_vec))

for(i in c(seq(1,22), "X", "Y", "M")){
  tmp=load(paste("enRich_analysis/enrich_results_170818_", i, sep="" ))
  H3K36me3.1000bp.enrich=enrich.mrf(H3K36me3.1000bp.mrf, analysis="joint", differential=TRUE, diff.vec=names_vec)
  enRich_data=rbind(enRich_data, H3K36me3.1000bp.enrich$diffenrich2)
}

save(enRich_data, file="enRich_analysis/combined_enRich_data" )

nrow(enRich_data)
