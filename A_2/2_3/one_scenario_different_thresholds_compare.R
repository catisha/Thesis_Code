# load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.5")
# threshold_0=correlation
# 
# load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_100118_p0.5_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.5")
# threshold_p0.5=correlation
# 
# load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_100118_n0.5_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.5")
# threshold_n0.5=correlation
# 
# threshold_0
# threshold_n0.5
# threshold_p0.5
# 
# threshold_0_long=threshold_0 %>%
#   gather(key=model, value=correlation, posterior.lca.F, posterior.lca.T.CL, posterior.lca.T.NCL) %>%
#   add_column(threshold=as.factor(0))
# 
# threshold_n0.5_long=threshold_n0.5 %>%
#   gather(key=model, value=correlation, posterior.lca.F, posterior.lca.T.CL, posterior.lca.T.NCL)%>%
#   add_column(threshold=as.factor(-0.5))
# 
# threshold_p0.5_long=threshold_p0.5 %>%
#   gather(key=model, value=correlation, posterior.lca.F, posterior.lca.T.CL, posterior.lca.T.NCL)%>%
#   add_column(threshold=as.factor(0.5))
# 
# threshold_long=rbind(threshold_0_long, threshold_n0.5_long, threshold_p0.5_long)
# 
# ggplot(threshold_long, aes(x=1:180, y=correlation, group=threshold, colour=threshold)) +
#   # geom_violin()+
#   geom_boxplot()+
#   theme_bw()+
#   theme(axis.ticks.x = element_blank(), axis.text.x = element_blank())+
#   labs(x=element_blank(), y="Correlation to MGMM", colour="Threshold")
# 
# 
# threshold=dplyr::select(threshold_0, LCA.F.0=posterior.lca.F, LCA.T.CL.0=posterior.lca.T.CL, LCA.T.NCL.0=posterior.lca.T.NCL) %>%
#   cbind(dplyr::select(threshold_p0.5, LCA.F.p.5=posterior.lca.F, LCA.T.CL.p.5=posterior.lca.T.CL, LCA.T.NCL.p.5=posterior.lca.T.NCL)) %>%
#     cbind(dplyr::select(threshold_n0.5, LCA.F.n.5=posterior.lca.F, LCA.T.CL.n.5=posterior.lca.T.CL, LCA.T.NCL.n.5=posterior.lca.T.NCL)) 
# 
# 
# ggplot(threshold, aes(x=LCA.F.n.5, y=LCA.F.0)) +
#   geom_point()+
#   geom_abline(aes(intercept=0, slope=1))


load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_150118_p3_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3")
correlation_p3=correlation
load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_150118_p1.5_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3")
correlation_p1.5=correlation
load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_150118_p1_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3")
correlation_p1=correlation

load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3")

plot_box=add_column(tibble(posterior.lca.F=correlation_p3$posterior.lca.F), threshold=as.factor(3)) %>%
  rbind(add_column(tibble(posterior.lca.F=correlation_p1.5$posterior.lca.F), threshold=as.factor(1.5))) %>%
  rbind(add_column(tibble(posterior.lca.F=correlation_p1$posterior.lca.F), threshold=as.factor(1))) %>%
  rbind(add_column(tibble(posterior.lca.F=correlation$posterior.lca.F), threshold=as.factor(0)))

ggplot(plot_box, aes(x=1:80, y=posterior.lca.F, colour=threshold)) +
  geom_boxplot()+
  labs(y="Correlation to the MGMM")+
  labs(colour = "Threshold")+
  scale_colour_brewer(palette = "Dark2")+
  theme_bw()+  
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  scale_y_continuous(breaks = round(seq(0, 1, by = 0.1),1))+
  ggsave("motivating_example_ch4.jpeg",path="~/Documents/Thesis/thesis_finale/Images/", device="jpeg", width=5, height=4)


