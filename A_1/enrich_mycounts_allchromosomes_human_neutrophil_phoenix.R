library(enRich)

library("optparse")

option_list = list(
  make_option(c("-D", "--data"), type="character", default=NULL,
              help="count data for each genome", metavar="character"),
  make_option(c("-c", "--chromosome"), type="character", default=NULL, help="chromosome number", metavar="character"),
  make_option(c("-o", "--output"), type="character", default=NULL,
              help="where should I put this?", metavar="character")
);


opt_parser = OptionParser(option_list=option_list)
opt = parse_args(opt_parser)


if (any(is.null(opt))){
  print_help(opt_parser)
  stop("all arguments must be supplied.n", call.=FALSE)
}



file=opt$data
print(file)

chr=opt$chromosome
print(chr)

output=opt$output
print(output)

load(file)
data=my_H3K36me3.1000bp


names_vec=(colnames(data$counts))

sub_init=function(x){
  substr(x, 1, 4)
}

names_vec=sapply(names_vec,sub_init, simplify="vector")
names_vec=as.vector(names_vec)
names_vec=as.numeric(factor(names_vec))


## Joint analysis combining technical replicates
##   (CBPT301,CBPT302) and (p300T301, p300T302)
H3K36me3.1000bp.mrf<-mrf.joint(data, method="NB",
                         rep.vec=names_vec, p.vec=names_vec, exp.label=colnames(data$count))

## Enriched regions for all conditions and differentially bound
##   regions for CBP and p300 at T30 using a 5
H3K36me3.1000bp.enrich<-enrich.mrf(H3K36me3.1000bp.mrf, analysis="joint", differential=TRUE, diff.vec=names_vec)
H3K36me3.1000bp.enrich

save(H3K36me3.1000bp.mrf, H3K36me3.1000bp.enrich, file=paste(output,"/enrich_results_170818_", chr, sep="" ))


#(END)

