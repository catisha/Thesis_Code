library(tidyverse)
load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/average_plot_simulation_fixed_thresh_sample7")
load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/average_plot_correlation_ave_thresh")

fixed_thresholds=filter(av_plot, p==5, threshold=="Varying over Programs") %>%
  dplyr::select(-index)
fixed_thresholds$threshold=recode_factor(fixed_thresholds$threshold, "Varying over Programs"="Fixed, Varied", "Constant Over Programs"="Fixed, Constant")



average_thresholds_correlation=mutate(average_thresholds_correlation, p=as.factor(p))
colnames(average_thresholds_correlation)=c("LCA", "LCRE.CL", "LCRE.NCL", "p", "delta", "sigma.z", "p.0", "threshold")


thresholds=inner_join(fixed_thresholds, average_thresholds_correlation, by=c("p","delta", "sigma.z", "p.0"), suffix=c("_fixed", "_average")) %>%
  mutate(p=as.factor(p)) %>%
  dplyr::select(-"threshold_fixed", -"threshold_average")


best_corr_fixed=filter(thresholds, round(LCA_fixed,2)>round(LCA_average,2))
best_corr_average=filter(thresholds, round(LCA_fixed,2)<round(LCA_average,2))



find_trend=function(best_corr){
  trends=list()
  for(i in 1:4){
    tmp=best_corr %>%
      group_by(best_corr[,(3+i)]) %>%
      summarise(freq=n())
    trends[[i]]=tmp
  }
  return(trends)
}

find_trend(best_corr_fixed)
find_trend(best_corr_average)
#  group_by(threshold, p, delta, p.0, sigma.z) %>%
summarise(freq=)
best_corr_LCRE.CL


best_corr_LCA_sigma=filter(av_plot, round(LCRE.CL,2)<round(LCA,2) & round(LCA,2)>round(LCRE.NCL,2))%>%
  dplyr::select(-index) %>%
  filter(sigma.z==2 | sigma.z==4)

latex(as.matrix(best_corr_LCA_sigma), file="~/Documents/Thesis/Images/table_param_best_corr_LCA_sigma")



a=ggplot(thresholds, aes(x=LCA_fixed, y=LCA_average, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  # theme(axis.title.y = element_blank(),   axis.text.y = element_blank(),  axis.ticks = element_blank())+
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  labs(x="Fixed LCA Thresholds \n Average Correlation", y ="Average LCA Thresholds\n Average Correlation") +
  scale_colour_brewer(palette="Set1")+
  geom_abline(aes(intercept=0, slope=1))
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

b=ggplot(thresholds, aes(x=LCRE.CL_fixed, y=LCRE.CL_average, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  geom_abline(aes(intercept=0, slope=1))+
  labs(x="Fixed LCRE (CL) Thresholds\n Average Correlation", y ="Average LCRE (CL) Thresholds\n Average Correlation") +
  scale_colour_brewer(palette="Set1")
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)


c=ggplot(thresholds, aes(x=LCRE.NCL_fixed, y=LCRE.NCL_average, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  #  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  geom_abline(aes(intercept=0, slope=1))+
  labs(x="Fixed LCRE (no CL) Thresholds\n Average Correlation", y ="Average LCRE (no CL) Thresholds \n Average Correlation") +
  scale_colour_brewer(palette="Set1")
#ggsave("Simulation_Average_Correlation_sigmaz_pairs.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

grid.arrange(a,b,c, ncol=2, layout_matrix=rbind(c(1,2),
                                                c(3, 3)))
pairs(av_plot[,1:3])

grid_arrange_shared_legend <- function(..., ncol = length(list(...)), nrow = 1, position = c("bottom", "right")) {
  
  plots <- list(...)
  position <- match.arg(position)
  g <- ggplotGrob(plots[[1]] + theme(legend.position = position))$grobs
  legend <- g[[which(sapply(g, function(x) x$name) == "guide-box")]]
  lheight <- sum(legend$height)
  lwidth <- sum(legend$width)
  gl <- lapply(plots, function(x) x + theme(legend.position="none"))
  gl <- c(gl, ncol = ncol, nrow = nrow)
  
  combined <- switch(position,
                     "bottom" = arrangeGrob(do.call(arrangeGrob, gl),
                                            legend,
                                            ncol = 1,
                                            heights = unit.c(unit(1, "npc") - lheight, lheight)),
                     "right" = arrangeGrob(do.call(arrangeGrob, gl),
                                           legend,
                                           ncol = 2,
                                           widths = unit.c(unit(1, "npc") - lwidth, lwidth)))
  
  grid.newpage()
  grid.draw(combined)
  
  # return gtable invisibly
  invisible(combined)
  
}
library(ggplot2)
library(gridExtra)
library(grid)
fig=grid_arrange_shared_legend(a,b,c , ncol = 2, nrow = 2, position="bottom") 
ggsave("Simulation_Average_Correlation_sigmaz_fixedvave_pairs.jpeg",plot=fig, path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

########################################################### RMSE ################################################################################

load("sqrt_diff_plot_simulation_average_thresh")
load("sqrt_diff_plot_simulation_fixed_thresh")


measure_sqrt_av_thresh
measure_sqrt_fixed_thresh=filter(measure_sqrt_var_thresh, p==5, threshold=="Varying over Programs")

measure_sqrt=inner_join(measure_sqrt_fixed_thresh, measure_sqrt_av_thresh, by=c("p","delta", "sigma.z", "p.0"), suffix=c("_fixed", "_average")) %>%
  mutate(p=as.factor(p)) %>%
  select(-"threshold_fixed", -"threshold_average", -index_fixed, -index_average)





a=ggplot(measure_sqrt, aes(x=LCA_fixed, y=LCA_average, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  # theme(axis.title.y = element_blank(),   axis.text.y = element_blank(),  axis.ticks = element_blank())+
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  labs(x="Fixed LCA Thresholds \n RMSE", y ="Average LCA Thresholds\n RMSE") +
  scale_colour_brewer(palette="Set1")+
  geom_abline(aes(intercept=0, slope=1))
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

b=ggplot(measure_sqrt, aes(x=LCRE.CL_fixed, y=LCRE.CL_average, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  geom_abline(aes(intercept=0, slope=1))+
  labs(x="Fixed LCRE (CL) Thresholds\n RMSE", y ="Average LCRE (CL) Thresholds\n Average RMSE") +
  scale_colour_brewer(palette="Set1")
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)


c=ggplot(measure_sqrt, aes(x=LCRE.NCL_fixed, y=LCRE.NCL_average, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  #  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  geom_abline(aes(intercept=0, slope=1))+
  labs(x="Fixed LCRE (no CL) Thresholds\n RMSE", y ="Average LCRE (no CL) Thresholds \n RMSE") +
  scale_colour_brewer(palette="Set1")
#ggsave("Simulation_Average_Correlation_sigmaz_pairs.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

grid.arrange(a,b,c, ncol=2, layout_matrix=rbind(c(1,2),
                                                c(3, 3)))
pairs(av_plot[,1:3])

grid_arrange_shared_legend <- function(..., ncol = length(list(...)), nrow = 1, position = c("bottom", "right")) {
  
  plots <- list(...)
  position <- match.arg(position)
  g <- ggplotGrob(plots[[1]] + theme(legend.position = position))$grobs
  legend <- g[[which(sapply(g, function(x) x$name) == "guide-box")]]
  lheight <- sum(legend$height)
  lwidth <- sum(legend$width)
  gl <- lapply(plots, function(x) x + theme(legend.position="none"))
  gl <- c(gl, ncol = ncol, nrow = nrow)
  
  combined <- switch(position,
                     "bottom" = arrangeGrob(do.call(arrangeGrob, gl),
                                            legend,
                                            ncol = 1,
                                            heights = unit.c(unit(1, "npc") - lheight, lheight)),
                     "right" = arrangeGrob(do.call(arrangeGrob, gl),
                                           legend,
                                           ncol = 2,
                                           widths = unit.c(unit(1, "npc") - lwidth, lwidth)))
  
  grid.newpage()
  grid.draw(combined)
  
  # return gtable invisibly
  invisible(combined)
  
}
library(ggplot2)
library(gridExtra)
library(grid)
fig=grid_arrange_shared_legend(a,b,c , ncol = 2, nrow = 2, position="bottom") 
ggsave("Simulation_RMSE_sigmaz_fixedvave_pairs.jpeg",plot=fig, path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)


best_diff_average=filter(measure_sqrt, round(LCA_fixed,2)>round(LCA_average,2))
best_diff_fixed=filter(measure_sqrt, round(LCA_fixed,2)<round(LCA_average,2)) 



find_trend=function(best_corr){
  trends=list()
  for(i in 1:4){
    tmp=best_corr %>%
      group_by(best_corr[,(3+i)]) %>%
      summarise(freq=n())
    trends[[i]]=tmp
  }
  return(trends)
}

find_trend(best_diff_fixed)
find_trend(best_diff_average)

best_diff_all=cbind(best_diff_LCA, best_diff="LCA") %>%
  rbind(cbind(best_diff_LCRE.CL, best_diff="LCRE.CL")) %>%
  rbind(cbind(best_diff_LCRE.NCL, best_diff="LCRE.NCL")) %>%
  mutate(p=as.factor(p), delta=as.factor(delta), sigma.z=as.factor(sigma.z), p.0=as.factor(p.0))

is.factor(best_diff_all$p)

best_all=full_join(best_corr_all, best_diff_all, by=c("p", "delta", "sigma.z", "p.0", "threshold"), suffix=c("_corr", "_diff"))


################################################################## proportion binding ########################################################3

load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/proportion_binding_average")
plot_binding_average=plot_binding

load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/proportion_binding_fixed")
plot_binding_fixed=plot_binding[,1:8] %>%
  dplyr::filter(p==5, threshold=="varied") 



binding_accuracy=inner_join(plot_binding_fixed, plot_binding_average, by=c("p","delta", "sigma.z", "p.0"), suffix=c("_fixed", "_average")) %>%
  mutate(p=as.factor(p)) %>%
  select(-"threshold_fixed", -"threshold_average")




a=ggplot(binding_accuracy, aes(x=LCA_fixed, y=LCA_average, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  # theme(axis.title.y = element_blank(),   axis.text.y = element_blank(),  axis.ticks = element_blank())+
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  labs(x="Fixed LCA Thresholds \n Binding Genes Accuracy", y ="Average LCA Thresholds\n Binding Genes Accuracy") +
  scale_colour_brewer(palette="Set1")+
  #geom_abline(aes(intercept=0, slope=1))+
  geom_hline(aes(yintercept=1), linetype=2)+
  geom_vline(aes(xintercept=1), linetype=2)
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

b=ggplot(binding_accuracy, aes(x=LCRE.CL_fixed, y=LCRE.CL_average, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
 # geom_abline(aes(intercept=0, slope=1))+
  labs(x="Fixed LCRE (CL) Thresholds\n Binding Genes Accuracy", y ="Average LCRE (CL) Thresholds\n Binding Genes Accuracy") +
  scale_colour_brewer(palette="Set1")+
  geom_hline(aes(yintercept=1), linetype=2)+
  geom_vline(aes(xintercept=1), linetype=2)
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)


c=ggplot(binding_accuracy, aes(x=LCRE.NCL_fixed, y=LCRE.NCL_average, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  #  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  #geom_abline(aes(intercept=0, slope=1))+
  labs(x="Fixed LCRE (no CL) Thresholds\n Binding Genes Accuracy", y ="Average LCRE (no CL) Thresholds \n Binding Genes Accuracy") +
  scale_colour_brewer(palette="Set1")+
  geom_hline(aes(yintercept=1), linetype=2)+
  geom_vline(aes(xintercept=1), linetype=2)
#ggsave("Simulation_Average_Correlation_sigmaz_pairs.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

grid.arrange(a,b,c, ncol=2, layout_matrix=rbind(c(1,2),
                                                c(3, 3)))
pairs(av_plot[,1:3])

grid_arrange_shared_legend <- function(..., ncol = length(list(...)), nrow = 1, position = c("bottom", "right")) {
  
  plots <- list(...)
  position <- match.arg(position)
  g <- ggplotGrob(plots[[1]] + theme(legend.position = position))$grobs
  legend <- g[[which(sapply(g, function(x) x$name) == "guide-box")]]
  lheight <- sum(legend$height)
  lwidth <- sum(legend$width)
  gl <- lapply(plots, function(x) x + theme(legend.position="none"))
  gl <- c(gl, ncol = ncol, nrow = nrow)
  
  combined <- switch(position,
                     "bottom" = arrangeGrob(do.call(arrangeGrob, gl),
                                            legend,
                                            ncol = 1,
                                            heights = unit.c(unit(1, "npc") - lheight, lheight)),
                     "right" = arrangeGrob(do.call(arrangeGrob, gl),
                                           legend,
                                           ncol = 2,
                                           widths = unit.c(unit(1, "npc") - lwidth, lwidth)))
  
  grid.newpage()
  grid.draw(combined)
  
  # return gtable invisibly
  invisible(combined)
  
}
library(ggplot2)
library(gridExtra)
library(grid)
fig=grid_arrange_shared_legend(a,b,c , ncol = 2, nrow = 2, position="bottom") 
ggsave("Simulation_binding_sigmaz_fixedvave_pairs.jpeg",plot=fig, path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)



best_bind_average=filter(binding_accuracy, abs(round(LCA_fixed,2)-1)>(abs(round(LCA_average,2)-1)))
best_bind_fixed=filter(binding_accuracy, abs(round(LCA_fixed,2)-1)<(abs(round(LCA_average,2)-1))) 



find_trend=function(best_corr){
  trends=list()
  for(i in 1:4){
    tmp=best_corr %>%
      group_by(best_corr[,(3+i)]) %>%
      summarise(freq=n())
    trends[[i]]=tmp
  }
  return(trends)
}

find_trend(best_bind_fixed)
find_trend(best_bind_average)

best_diff_all=cbind(best_diff_LCA, best_diff="LCA") %>%
  rbind(cbind(best_diff_LCRE.CL, best_diff="LCRE.CL")) %>%
  rbind(cbind(best_diff_LCRE.NCL, best_diff="LCRE.NCL")) %>%
  mutate(p=as.factor(p), delta=as.factor(delta), sigma.z=as.factor(sigma.z), p.0=as.factor(p.0))

is.factor(best_diff_all$p)

best_all=full_join(best_corr_all, best_diff_all, by=c("p", "delta", "sigma.z", "p.0", "threshold"), suffix=c("_corr", "_diff"))




load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/proportion_binding_average")
plot_binding_average=plot_binding

load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/proportion_binding_fixed")
plot_binding_fixed=plot_binding[,1:8] %>%
  dplyr::filter(p==5, threshold=="varied") 



binding_accuracy=inner_join(plot_binding_fixed, plot_binding_average, by=c("p","delta", "sigma.z", "p.0"), suffix=c("_fixed", "_average")) %>%
  mutate(p=as.factor(p)) %>%
  select(-"threshold_fixed", -"threshold_average")

filter(binding_accuracy, LCA_average<2, LCA_fixed<2)
       
filter(binding_accuracy, LCRE.CL_average<2, LCRE.CL_average<2)
filter(binding_accuracy, LCRE.NCL_average<2, LCRE.NCL_average<2)


a=ggplot(filter(binding_accuracy, LCA_average<2, LCA_fixed<2), aes(x=LCA_fixed, y=LCA_average, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  # theme(axis.title.y = element_blank(),   axis.text.y = element_blank(),  axis.ticks = element_blank())+
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  labs(x="Fixed LCA Thresholds \n Binding Genes Accuracy", y ="Average LCA Thresholds\n Binding Genes Accuracy") +
  scale_colour_brewer(palette="Set1")+
  #geom_abline(aes(intercept=0, slope=1))+
  geom_hline(aes(yintercept=1), linetype=2)+
  geom_vline(aes(xintercept=1), linetype=2)
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

b=ggplot(filter(binding_accuracy, LCRE.CL_average<2, LCRE.CL_average<2)
, aes(x=LCRE.CL_fixed, y=LCRE.CL_average, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  # geom_abline(aes(intercept=0, slope=1))+
  labs(x="Fixed LCRE (CL) Thresholds\n Binding Genes Accuracy", y ="Average LCRE (CL) Thresholds\n Binding Genes Accuracy") +
  scale_colour_brewer(palette="Set1")+
  geom_hline(aes(yintercept=1), linetype=2)+
  geom_vline(aes(xintercept=1), linetype=2)
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)


c=ggplot(filter(binding_accuracy, LCRE.NCL_average<2, LCRE.NCL_average<2)
, aes(x=LCRE.NCL_fixed, y=LCRE.NCL_average, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  #  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  #geom_abline(aes(intercept=0, slope=1))+
  labs(x="Fixed LCRE (no CL) Thresholds\n Binding Genes Accuracy", y ="Average LCRE (no CL) Thresholds \n Binding Genes Accuracy") +
  scale_colour_brewer(palette="Set1")+
  geom_hline(aes(yintercept=1), linetype=2)+
  geom_vline(aes(xintercept=1), linetype=2)
#ggsave("Simulation_Average_Correlation_sigmaz_pairs.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

grid.arrange(a,b,c, ncol=2, layout_matrix=rbind(c(1,2),
                                                c(3, 3)))
pairs(av_plot[,1:3])

grid_arrange_shared_legend <- function(..., ncol = length(list(...)), nrow = 1, position = c("bottom", "right")) {
  
  plots <- list(...)
  position <- match.arg(position)
  g <- ggplotGrob(plots[[1]] + theme(legend.position = position))$grobs
  legend <- g[[which(sapply(g, function(x) x$name) == "guide-box")]]
  lheight <- sum(legend$height)
  lwidth <- sum(legend$width)
  gl <- lapply(plots, function(x) x + theme(legend.position="none"))
  gl <- c(gl, ncol = ncol, nrow = nrow)
  
  combined <- switch(position,
                     "bottom" = arrangeGrob(do.call(arrangeGrob, gl),
                                            legend,
                                            ncol = 1,
                                            heights = unit.c(unit(1, "npc") - lheight, lheight)),
                     "right" = arrangeGrob(do.call(arrangeGrob, gl),
                                           legend,
                                           ncol = 2,
                                           widths = unit.c(unit(1, "npc") - lwidth, lwidth)))
  
  grid.newpage()
  grid.draw(combined)
  
  # return gtable invisibly
  invisible(combined)
  
}
library(ggplot2)
library(gridExtra)
library(grid)
fig=grid_arrange_shared_legend(a,b,c , ncol = 2, nrow = 2, position="bottom") 
ggsave("Simulation_binding_sigmaz_fixedvave_pairs_lessthan2.jpeg",plot=fig, path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)



best_bind_average=filter(binding_accuracy, abs(round(LCA_fixed,2)-1)>(abs(round(LCA_average,2)-1)))
best_bind_fixed=filter(binding_accuracy, abs(round(LCA_fixed,2)-1)<(abs(round(LCA_average,2)-1))) 



find_trend=function(best_corr){
  trends=list()
  for(i in 1:4){
    tmp=best_corr %>%
      group_by(best_corr[,(3+i)]) %>%
      summarise(freq=n())
    trends[[i]]=tmp
  }
  return(trends)
}

find_trend(best_bind_fixed)
find_trend(best_bind_average)

best_diff_all=cbind(best_diff_LCA, best_diff="LCA") %>%
  rbind(cbind(best_diff_LCRE.CL, best_diff="LCRE.CL")) %>%
  rbind(cbind(best_diff_LCRE.NCL, best_diff="LCRE.NCL")) %>%
  mutate(p=as.factor(p), delta=as.factor(delta), sigma.z=as.factor(sigma.z), p.0=as.factor(p.0))

is.factor(best_diff_all$p)

best_all=full_join(best_corr_all, best_diff_all, by=c("p", "delta", "sigma.z", "p.0", "threshold"), suffix=c("_corr", "_diff"))





################################################ Sum of scores ################################################################################

load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/combined_comparing_parameters_sumofscores")

sum_of_scores=filter(sum_scores_compare, p==5, threshold=="Varying over Programs") %>%
  dplyr::select(-index,-LCA,  -`LCRE (CL)`, -`LCRE (No CL)`) %>%
  dplyr::rename(sum_scores=`Sum of Scores`)
sum_of_scores$threshold=recode_factor(fixed_thresholds$threshold, "Varying over Programs"="Fixed, Varied", "Constant Over Programs"="Fixed, Constant")



average_thresholds_correlation=mutate(average_thresholds_correlation, p=as.factor(p))
colnames(average_thresholds_correlation)=c("LCA", "LCRE.CL", "LCRE.NCL", "p", "delta", "sigma.z", "p.0", "threshold")


thresholds=inner_join(sum_of_scores, average_thresholds_correlation, by=c("p","delta", "sigma.z", "p.0"), suffix=c("_sum", "_average")) %>%
  mutate(p=as.factor(p)) %>%
  dplyr::select(-"threshold_sum", -"threshold_average")


best_corr_averagevsumm_average=filter(thresholds, round(LCA,2)>sum_scores)
best_corr_averagevsumm_sum=filter(thresholds, round(LCA,2)<sum_scores)




find_trend=function(best_corr){
  trends=list()
  for(i in 1:4){
    tmp=best_corr %>%
      group_by(best_corr[,(1+i)]) %>%
      summarise(freq=n())
    trends[[i]]=tmp
  }
  return(trends)
}

find_trend(best_corr_averagevsumm_average)
find_trend(best_corr_averagevsumm_sum)

#  group_by(threshold, p, delta, p.0, sigma.z) %>%
summarise(freq=)
best_corr_LCRE.CL



a=ggplot(thresholds, aes(x=sum_scores, y=LCA, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  # theme(axis.title.y = element_blank(),   axis.text.y = element_blank(),  axis.ticks = element_blank())+
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  xlim(0, 1) + ylim(0, 1)+
  labs(colour = expression(sigma[z]))+
  labs(x="Sum of Scores \n Correlation", y ="Average LCA Thresholds\n Average Correlation") +
  scale_colour_brewer(palette="Set1")+
  geom_abline(aes(intercept=0, slope=1))
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
a
b=ggplot(thresholds, aes(x=sum_scores, y=LCRE.CL, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  xlim(0, 1) + ylim(0, 1)+
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  geom_abline(aes(intercept=0, slope=1))+
  labs(x="Sum of Scores \n Correlation", y ="Average LCRE (CL) Thresholds\n Average Correlation") +
  scale_colour_brewer(palette="Set1")
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
b

c=ggplot(thresholds, aes(x=sum_scores, y=LCRE.NCL, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  xlim(0, 1) + ylim(0, 1)+
  #  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  geom_abline(aes(intercept=0, slope=1))+
  labs(x="Sum of Scores \n Correlation", y ="Average LCRE (no CL) Thresholds \n Average Correlation") +
  scale_colour_brewer(palette="Set1")
#ggsave("Simulation_Average_Correlation_sigmaz_pairs.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
c
grid.arrange(a,b,c, ncol=2, layout_matrix=rbind(c(1,2),
                                                c(3, 3)))
pairs(av_plot[,1:3])

grid_arrange_shared_legend <- function(..., ncol = length(list(...)), nrow = 1, position = c("bottom", "right")) {
  
  plots <- list(...)
  position <- match.arg(position)
  g <- ggplotGrob(plots[[1]] + theme(legend.position = position))$grobs
  legend <- g[[which(sapply(g, function(x) x$name) == "guide-box")]]
  lheight <- sum(legend$height)
  lwidth <- sum(legend$width)
  gl <- lapply(plots, function(x) x + theme(legend.position="none"))
  gl <- c(gl, ncol = ncol, nrow = nrow)
  
  combined <- switch(position,
                     "bottom" = arrangeGrob(do.call(arrangeGrob, gl),
                                            legend,
                                            ncol = 1,
                                            heights = unit.c(unit(1, "npc") - lheight, lheight)),
                     "right" = arrangeGrob(do.call(arrangeGrob, gl),
                                           legend,
                                           ncol = 2,
                                           widths = unit.c(unit(1, "npc") - lwidth, lwidth)))
  
  grid.newpage()
  grid.draw(combined)
  
  # return gtable invisibly
  invisible(combined)
  
}
library(ggplot2)
library(gridExtra)
library(grid)
fig=grid_arrange_shared_legend(a,b,c , ncol = 2, nrow = 2, position="bottom") 
ggsave("Simulation_Average_Correlation_sigmaz_sumscoresvave_pairs.jpeg",plot=fig, path="~/Documents/Thesis/thesis_finale/Images/", device="jpeg", width=8, height=8)




