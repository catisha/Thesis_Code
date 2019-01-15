library(tidyverse)
library(randomLCA)


load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/all_BIC")

appendix_BIC=all_BIC %>%
  dplyr::select(p, delta, sigma.z, p.0, threshold, best_BIC, LCA, LCRE.CL, LCRE.NCL)

latex(as.matrix(appendix_BIC), booktabs=T, file="~/Documents/Thesis/thesis_finale/Images/Appendix_B_3", longtable=T)


group_by(all_BIC, best_BIC) %>%
  summarise(n())
load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/average_correlation_combined_comparing_parameters")
best_param=all_BIC %>%
  dplyr::select(-LCA, -LCRE.CL, -LCRE.NCL) %>%
  dplyr::rename("model"=best_BIC) %>%
  mutate(model=as.factor(model))

best_param$threshold=recode(best_param$threshold, "Constant Over Programs"="constant", "Varying over Programs"="varied")

corr_by_model=average_correlation %>%
  gather(key=model, value=correlation, LCA, LCRE.CL, LCRE.NCL) %>%
  dplyr::select(-index) %>%
  mutate(model=as.factor(model))

load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/measure_sqrt_list_combined_comparing_parameters")
measure_sqrt_list
load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/combined_comparing_parameters_sumofscores")
sum_scores_compare$threshold=recode(sum_scores_compare$threshold, "Constant Over Programs"="constant", "Varying over Programs"="varied")

rmse_by_model=measure_sqrt_list %>%
  gather(key=model, value = RMSE, LCA, LCRE.CL, LCRE.NCL) %>%
  mutate(model=as.factor(model))


by_BIC_corr_RMSE=left_join(best_param, corr_by_model) %>%
  left_join(rmse_by_model)
#  select(-model) %>%
#  add_column(model="by_BIC")
save(by_BIC_corr_RMSE, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/by_BIC_corr_RMSE_choose_by_BIC")

############################################### compare to just choosing one model ######################################

av_plot=left_join(by_BIC_corr_RMSE, average_correlation)

a=ggplot(av_plot, aes(x=LCA, y=correlation, colour=model))+
  geom_point() +
  theme_bw() +
  # theme(axis.title.y = element_blank(),   axis.text.y = element_blank(),  axis.ticks = element_blank())+
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = "Preferred Model by BIC")+
  labs(y="Average Correlation \n of Preferred Model based on BIC") +
  scale_colour_brewer(palette="Set1")+
  geom_abline(aes(intercept=0, slope=1))
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

b=ggplot(av_plot, aes(x=LCRE.CL, y=correlation, colour=model))+
  geom_point() +
  theme_bw() +
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = "Preferred Model by BIC")+
  labs(y="Average Correlation \n of Preferred Model based on BIC") +
  geom_abline(aes(intercept=0, slope=1))+
  scale_colour_brewer(palette="Set1")
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)


c=ggplot(av_plot, aes(x=LCRE.NCL, y=correlation, colour=model))+
  geom_point() +
  theme_bw() +
  #  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = "Preferred Model by BIC")+
  labs(y="Average Correlation \n of Preferred Model based on BIC") +
  geom_abline(aes(intercept=0, slope=1))+
  scale_colour_brewer(palette="Set1")
#ggsave("Simulation_Average_Correlation_sigmaz_pairs.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
library(gridExtra)

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
ggsave("Simulation_Average_Correlation_BIC_Model_pairs.jpeg",plot=fig, path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)


best_corr_LCA=filter(av_plot, round(correlation,2)<round(LCA,2) & round(LCA,2)>round(correlation,2))%>%
  dplyr::select(-index)
best_corr_LCRE.NCL=filter(av_plot, round(LCRE.NCL,2)>round(correlation,2) & round(LCRE.NCL,2)>round(correlation,2)) %>%
  dplyr::select(-index)
best_corr_LCRE.CL=filter(av_plot, round(LCRE.CL,2)>round(correlation,2) & round(LCRE.CL,2)>round(correlation,2))%>%
  dplyr::select(-index)


find_trend=function(best_corr){
  trends=list()
  for(i in 1:5){
    tmp=best_corr %>%
      group_by(best_corr[,(i)]) %>%
      summarise(freq=n())
    trends[[i]]=tmp
  }
  return(trends)
}



find_trend(best_corr_LCA)
find_trend(best_corr_LCRE.CL)
find_trend(best_corr_LCRE.NCL)


measure_sqrt=left_join(by_BIC_corr_RMSE, measure_sqrt_list)



a=ggplot(measure_sqrt, aes(x=LCA, y=RMSE, colour=model))+
  geom_point() +
  theme_bw() +
  # theme(axis.title.y = element_blank(),   axis.text.y = element_blank(),  axis.ticks = element_blank())+
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = "Preferred Model by BIC")+
  labs(y="RMSE of Preferred Model\n based on BIC") +
  scale_colour_brewer(palette="Set1")+
  geom_abline(aes(intercept=0, slope=1))
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

b=ggplot(measure_sqrt, aes(x=LCRE.CL, y=RMSE, colour=model))+
  geom_point() +
  theme_bw() +
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = "Preferred Model by BIC")+
  labs(y="RMSE of Preferred Model\n based on BIC") +
  geom_abline(aes(intercept=0, slope=1))+
  scale_colour_brewer(palette="Set1")
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)


c=ggplot(measure_sqrt, aes(x=LCRE.NCL, y=RMSE, colour=model))+
  geom_point() +
  theme_bw() +
  #  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = "Preferred Model by BIC")+
  labs(y="RMSE of Preferred Model\n based on BIC") +
  geom_abline(aes(intercept=0, slope=1))+
  scale_colour_brewer(palette="Set1")


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
                                           widths = unit.c(unit(2, "npc") - lwidth, lwidth)))
  
  grid.newpage()
  grid.draw(combined)
  
  # return gtable invisibly
  invisible(combined)
  
}
library(ggplot2)
library(gridExtra)
library(grid)
fig=grid_arrange_shared_legend(a,b,c , ncol = 2, nrow = 2, position="bottom") 
ggsave("Simulation_Diff_Post_Prob_BIC_model_pairs.jpeg",plot=fig, path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)



best_diff_LCA=filter(measure_sqrt, round(RMSE,2)>round(LCA,2) & round(LCA,2)<round(RMSE,2))
best_diff_LCRE.NCL=filter(measure_sqrt, round(LCRE.NCL,2)<round(RMSE,2) & round(LCRE.NCL,2)<round(RMSE,2)) 
best_diff_LCRE.CL=filter(measure_sqrt, round(LCRE.CL,2)<round(RMSE,2) & round(LCRE.CL,2)<round(RMSE,2))



find_trend=function(best_corr){
  trends=list()
  for(i in 1:5){
    tmp=best_corr %>%
      group_by(best_corr[,(i)]) %>%
      summarise(freq=n())
    trends[[i]]=tmp
  }
  return(trends)
}

find_trend(best_diff_LCA)
find_trend(best_diff_LCRE.CL)
find_trend(best_diff_LCRE.NCL)



sum_scores=left_join(by_BIC_corr_RMSE, sum_scores_compare[,4:9], by=c("p", "delta", "sigma.z", "p.0", "threshold")) %>%
  dplyr::rename(sum_scores=`Sum of Scores`)


ggplot(sum_scores, aes(x=correlation, y=sum_scores, colour=model))+
  geom_point() +
  theme_bw() +
  # theme(axis.title.y = element_blank(),   axis.text.y = element_blank(),  axis.ticks = element_blank())+
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour="Preferred Model by BIC")+
  labs(x = "Average correlation to the MGMM\n for the preferred model by BIC")+
  labs(y="Correlation to MGMM\n for the sum of scores") +
  scale_colour_brewer(palette="Set1")+
  geom_abline(aes(intercept=0, slope=1))+
   ggsave("Simulation_Correlation_BICbased_SumScores.jpeg",path="~/Documents/Thesis/thesis_finale/Images/", device="jpeg", width=8, height=8)

# b=ggplot(measure_sqrt, aes(x=LCRE.CL, y=RMSE, colour=model))+
#   geom_point() +
#   theme_bw() +
#   #guides(colour="none")+
#   #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
#   #facet_grid(~sigma.z) +
#   labs(colour = "Preferred Model by BIC")+
#   labs(y="RMSE of Preferred Model\n based on BIC") +
#   geom_abline(aes(intercept=0, slope=1))+
#   scale_colour_brewer(palette="Set1")
# #  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
# 
# 
# c=ggplot(measure_sqrt, aes(x=LCRE.NCL, y=RMSE, colour=model))+
#   geom_point() +
#   theme_bw() +
#   #  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
#   #facet_grid(~sigma.z) +
#   labs(colour = "Preferred Model by BIC")+
#   labs(y="RMSE of Preferred Model\n based on BIC") +
#   geom_abline(aes(intercept=0, slope=1))+
#   scale_colour_brewer(palette="Set1")



best_sum=filter(sum_scores, round(correlation,2)>round(sum_scores,2))



find_trend=function(best_corr){
  trends=list()
  for(i in 1:5){
    tmp=best_corr %>%
      group_by(best_corr[,(i)]) %>%
      summarise(freq=n())
    trends[[i]]=tmp
  }
  return(trends)
}

find_trend(best_sum)
find_trend(best_diff_LCRE.CL)
find_trend(best_diff_LCRE.NCL)

