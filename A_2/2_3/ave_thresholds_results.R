# "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/correlation_GMM, file=paste0(out, "/"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/correlation_GMM_3methods_thresholds_3_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0, "const_load", constload))
# posterior.T.ave, posterior.F.ave, posterior.bayes, file=paste0(out, "/posterior_GMM_ave_thresholds_3_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0, "const_load", constload))
# post.F, post.T, p, delta, sigma.z, p.0, constload, file=paste0(out, "/full_data_parameters_gmm_threshold_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0, "const_load", constload))

filelist=c("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
           #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
           # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
           #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
           # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
           #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
           # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
           #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
           # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
           #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
           # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
           #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
           # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
           #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.1",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.3",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.5",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.7",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.9",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.1",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.3",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.5",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.7",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.9",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.1",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.3",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.5",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.7",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.9",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.1",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.5",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.7",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.9")
# "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9")



file=( "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9")

load(file)
correlation

load_allocate=function(file){
  if(file.exists(file)){
    load(file)
    return(as.tibble(correlation))
  }else {return(NA)}
} 
length(filelist)

library(tidyverse)

correlation=lapply(filelist, load_allocate)
abs(correlation[[1]])

scen_1_corr=abs(correlation[[1]][1:7,])%>%
  rbind(c(1, mean(.$posterior.F.cl), mean(.$posterior.T.cl), mean(.$posterior.T.ncl))) %>%
  rbind(c(1, sd(.$posterior.F.cl), sd(.$posterior.T.cl), sd(.$posterior.T.ncl)))


tail(scen_1_corr)


library(Hmisc)
latex(as.matrix(round(scen_1_corr,3)), file="~/Documents/Thesis/thesis_finale/Images/table_correlation_scenario_1_averaged_thresh")



lapply(correlation, function(x){nrow(x)})

cor=correlation[[23]]
collect_averages=function(cor){
  if(is.na(cor)){
    return(rep(NA,7))
  }else{
  average=c(mean(abs(cor$posterior.F.cl[1:7])), mean(abs(cor$posterior.T.cl[1:7])), mean(abs(cor$posterior.T.ncl[1:7])))
  #if(average[1]<0 & average[2]<0){
  # average=c((-average[1]), (-average[2]))
  #  }
  #sd=c(sd(cor$posterior.lca.F), sd(cor$posterior.lca.T))
  #best=mutate(cor, diff=posterior.lca.T-posterior.lca.F) %>%
  # dplyr::select(diff)
  #best=average[2]-average[1]
  #best=best[1,]
  return(average)}
}

collect_sds=function(cor){
  if(is.na(cor)){
    return(rep(NA,7))
  }else{
    sd=c(sd(abs(cor$posterior.F.cl[1:7])), sd(abs(cor$posterior.T.cl[1:7])), sd(abs(cor$posterior.T.ncl[1:7])))
    #if(average[1]<0 & average[2]<0){
    # average=c((-average[1]), (-average[2]))
    #  }
    #sd=c(sd(cor$posterior.lca.F), sd(cor$posterior.lca.T))
    #best=mutate(cor, diff=posterior.lca.T-posterior.lca.F) %>%
    # dplyr::select(diff)
    #best=average[2]-average[1]
    #best=best[1,]
    return(sd)}
}


all_param=separate(as.tibble(filelist), col=value, into=c(NA, NA, NA, NA, NA, NA, NA, NA,NA,NA,NA,NA,NA,NA,NA,"p", NA, "delta", NA, "sigma.z", NA, "p.0"), sep="_") %>%
  mutate(p.0=as.double((p.0)), p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z))



# diff=lapply(correlation, find_best_cases)
# average_diff=tibble(difference=unlist(diff)) %>%
#   cbind(all_param)  %>%
#   dplyr::mutate(sigma.z=as.factor(sigma.z)) %>%
#   arrange(sigma.z) %>%
#   add_column(index=1:60)

average_correlation=lapply(correlation, collect_averages)
sd_correlations=lapply(correlation, collect_sds)
average_correlation_plot=matrix(unlist(average_correlation), ncol=3, byrow=TRUE) %>%
  as.tibble() %>%
  dplyr::rename(LCA=V1, "LCRE (CL)"=V2, "LCRE (no CL)"=V3)%>%
  cbind(all_param) %>%
  #gather(key=method, value=posterior, LCA, "LCRE (CL)", "LCRE (no CL)") %>%
  mutate(sigma.z=as.factor(sigma.z), delta=as.factor(delta), sigma.z=as.factor(sigma.z), p.0=as.factor(p.0)) %>%
  arrange(sigma.z)

sd_correlation_plot=matrix(unlist(sd_correlations), ncol=3, byrow=TRUE) %>%
  as.tibble() %>%
  dplyr::rename(LCA=V1, "LCRE (CL)"=V2, "LCRE (no CL)"=V3)%>%
  cbind(all_param) %>%
  #gather(key=method, value=posterior, LCA, "LCRE (CL)", "LCRE (no CL)") %>%
  mutate(sigma.z=as.factor(sigma.z), delta=as.factor(delta), sigma.z=as.factor(sigma.z), p.0=as.factor(p.0)) %>%
  arrange(sigma.z)

average_thresholds_appendix=left_join(average_correlation_plot, sd_correlation_plot, by=c("p", "delta", "sigma.z", "p.0"), suffix=c(".ave", ".sd")) %>%
  dplyr::select(p, delta, sigma.z, p.0, LCA.ave, LCA.sd, `LCRE (CL) ave`=`LCRE (CL).ave`,`LCRE (CL) sd`=`LCRE (CL).sd`, `LCRE (NCL) ave`=`LCRE (no CL).ave`,`LCRE (NCL) sd`=`LCRE (no CL).sd` )

latex(as.matrix(average_thresholds_appendix), booktabs=T, file="~/Documents/Thesis/thesis_finale/Images/Appendix_C_1", longtable=T)


filter(average_correlation_plot, p==5, delta==0.5, sigma.z==4, p.0==0.1)

plot(average_correlation_plot$LCA, average_correlation_plot$`LCRE (no CL)`)+
abline(a=0, b=1)

average_thresholds_correlation=cbind(average_correlation_plot, threshold="average")
save(average_thresholds_correlation, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/average_plot_correlation_ave_thresh")
########################################################################## Average Correlation ###################################################################



ggplot(average_correlation_plot, aes(y=posterior, group=method, colour=method)) +
  geom_boxplot() +
  facet_grid(.~sigma.z, scales = "free") +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  labs(y="Average correlation to MGMM over Threshold Combinations", colour="Model")+
  scale_colour_brewer(palette="Dark2")+
  ggsave("Simulation_Thresholds_Average_correlation_GMM_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(average_correlation_plot, aes(y=posterior, group=method, colour=method)) +
  geom_boxplot() +
  facet_grid(.~delta, scales = "free") +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  labs(y="Average correlation to MGMM over Threshold Combinations", colour="Model")+
  scale_colour_brewer(palette="Dark2")+
  ggsave("Simulation_Thresholds_Average_correlation_GMM_dela.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)



ggplot(average_correlation_plot, aes(y=posterior, group=method, colour=method)) +
  geom_boxplot() +
  facet_grid(.~p.0, scales = "free") +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  labs(y="Average correlation to MGMM over Threshold Combinations", colour="Model")+
  scale_colour_brewer(palette="Dark2")+
  ggsave("Simulation_Thresholds_Average_correlation_GMM_p.0.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

# 
# ggplot(average_diff, aes(index, difference, colour=sigma.z)) +
#   geom_point() +
#   theme_bw()+
#   labs(x="Scenario Number", y=expression(paste("Difference in correlation with Posterior Bayes\n for Posterior Probabilities (LCRE-LCA)")), colour=expression(sigma)) +
#   geom_hline(yintercept=0) +
#   theme(plot.margin = margin(0.5, 0.5, 0.5, 1, "cm"))+
#   ggsave("Simulation_Thresholds_Difference_correlation_GMM.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=6)
######################################################################## Best correlations #####################################################################
average_correlation_list=matrix(unlist(average_correlation), ncol=3, byrow=TRUE) %>%
  as.tibble() %>%
  dplyr::rename(LCA=V1, "LCRE.CL"=V2, "LCRE.NCL"=V3)%>%
  cbind(all_param) %>%
  # gather(key=method, value=posterior, LCA, "LCRE (CL)", "LCRE (no CL)") %>%
  mutate(sigma.z=as.factor(sigma.z), delta=as.factor(delta), sigma.z=as.factor(sigma.z), p.0=as.factor(p.0)) %>%
  arrange(sigma.z)

best_LCA=filter(average_correlation_list, LCRE.CL<LCA & LCA>LCRE.NCL)
best_NCL=filter(average_correlation_list, LCRE.NCL>LCA & LCRE.NCL>LCRE.CL)
best_CL=filter(average_correlation_list, LCRE.CL>LCA & LCRE.CL>LCRE.NCL)





# library(Hmisc)
# latex(as.matrix(best_LCA), file="~/Documents/Thesis/Images/table_param_good_LCA_all_thresholds")
# latex(as.matrix(best_CL), file="~/Documents/Thesis/Images/table_param_good_LCRE.CL_all_thresholds")
# latex(as.matrix(best_NCL), file="~/Documents/Thesis/Images/table_param_good_const_LCRE.NCL_all_thresholds")

######################################################################## Find sd  of post probs #####################################################################

# "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/correlation_GMM, file=paste0(out, "/"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/correlation_GMM_3methods_thresholds_3_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0, "const_load", constload))
# posterior.T.ave, posterior.F.ave, posterior.bayes, file=paste0(out, "/posterior_GMM_ave_thresholds_3_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0, "const_load", constload))
# post.F, post.T, p, delta, sigma.z, p.0, constload, file=paste0(out, "/full_data_parameters_gmm_threshold_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0, "const_load", constload))


filelist=c("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
           #           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
           #          "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
           #         "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
           #        "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
           #       "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
           #      "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
           #     "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
           #    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
           #   "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
           #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
           # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
           #           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
           #          "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
           #         "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
           #        "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
           #       "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
           #      "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
           #     "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
           #    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
           #   "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
           #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
           # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
           #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
           #           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
           #          "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
           #         "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
           #        "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
           #       "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9")
#      "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9")

file=( "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9")


load_posteriors=function(file){
  load(file)
  tmp.F=(as.matrix(post.F[,2:length(post.F)]))
  na_count.F=length(which(is.na(tmp.F[1, ])))
  tmp.T.cl=(as.matrix(post.T.cl[,2:length(post.T.cl)]))
  na_count.T.cl=length(which(is.na(tmp.T.cl[1, ])))
  tmp.T.ncl=(as.matrix(post.T.ncl[,2:length(post.T.ncl)]))
  na_count.T.ncl=length(which(is.na(tmp.T.ncl[1, ])))
  return(tibble(na_count.F=na_count.F, na_count.T.cl=na_count.T.cl, na_count.T.ncl=na_count.T.ncl))
}
#tibble(sd.F=tmp.F,sd.T= tmp.T, diff=tmp.F-tmp.T)
# tmp.F=as.tibble(post.F[,2:length(post.F)])
# tmp.T=as.tibble(post.F[,2:length(post.F)])

library(matrixStats)

any_na=matrix(unlist(lapply(filelist, load_posteriors)), ncol=3, byrow=TRUE)

which((any_na[,2])>0)
load(filelist[18])
tmp.T.cl=(as.matrix(post.T.cl[,2:length(post.T.cl)]))
na_cols.cl=which(is.na(tmp.T.cl[1,]))


find_na_permutes=function(file){
  load(file)
  tmp.T.ncl=(as.matrix(post.T.ncl[,2:length(post.T.ncl)]))
  na_cols=which(is.na(tmp.T.ncl[1,]))
  
  return(na_cols)  
  
}

lapply(filelist[c(which((any_na[,3])>0)
)], find_na_permutes)

load(filelist[[1]])


load_sds=function(file){
  load(file)
  tmp.F=(as.matrix(post.F[,2:length(post.F)]))
  tmp.T.cl=(as.matrix(post.T.cl[,2:length(post.T.cl)]))
  tmp.T.ncl=(as.matrix(post.T.ncl[,2:length(post.T.ncl)]))
  return(tibble(LCA=rowSds(tmp.F, na.rm=T), LCRE.CL=rowSds(tmp.T.cl, na.rm = T), LCRE.NCL=rowSds(tmp.T.ncl, na.rm = T)))
}

sds_results=lapply(filelist, load_sds)


mean_sd=lapply(sds_results, function(x){
  tmp=c(mean(x$LCA), mean(x$LCRE.CL), mean(x$LCRE.NCL))
  return(tmp)
})

mean_sd_plot=as.tibble(matrix(unlist(mean_sd), ncol=3, byrow=TRUE)) %>%
  dplyr::rename(LCA=V1, LCRE.CL=V2, LCRE.NCL=V3) %>%
  gather(key=method, value=sd, LCA, LCRE.CL, LCRE.NCL) %>%
  cbind(all_param) %>%
  arrange(sigma.z) %>%
  mutate(sigma.z=as.factor(sigma.z), delta=as.factor(delta), p.0=as.factor(p.0))


ggplot(mean_sd_plot, aes(y=sd, colour=method)) +
  geom_boxplot()+
  facet_grid(.~sigma.z)+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  scale_colour_brewer(palette="Dark2",  breaks=c("LCA", "LCRE.CL", "LCRE.NCL"),
                      labels=c("LCA", "LCRE (CL)", "LCRE (no CL)"))+
  labs(y=expression(paste("Average Standard Deviation for Posterior Probabilities")), colour="Model") +
  ggsave("Simulation_Thresholds_Average_SD_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=8)

ggplot(mean_sd_plot, aes(y=sd, colour=method)) +
  geom_boxplot()+
  facet_grid(.~delta)+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  scale_colour_brewer(palette="Dark2",  breaks=c("LCA", "LCRE.CL", "LCRE.NCL"),
                      labels=c("LCA", "LCRE (CL)", "LCRE (no CL)"))+
  labs(y=expression(paste("Average Standard Deviation for Posterior Probabilities")), colour="Model") +
  ggsave("Simulation_Thresholds_Average_SD_delta.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=8)

ggplot(mean_sd_plot, aes(y=sd, colour=method)) +
  geom_boxplot()+
  facet_grid(.~p.0)+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  scale_colour_brewer(palette="Dark2",  breaks=c("LCA", "LCRE.CL", "LCRE.NCL"),
                      labels=c("LCA", "LCRE (CL)", "LCRE (no CL)"))+
  labs(y=expression(paste("Average Standard Deviation for Posterior Probabilities")), colour="Model") +
  ggsave("Simulation_Thresholds_Average_SD_p.0.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=8)
###################################################################### Averages per Gene #####################################################################

# posterior.T.ave, posterior.F.ave, posterior.bayes, file=paste0(out, "/posterior_GMM_ave_thresholds_3_lca_sim_p_",p,"_delta_", delta, "_sigma.z_", sigma.z, "_p.0_", p.0, "const_load", constload))

# filelist=c("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
#            #           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
#            #          "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
#            #         "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
#            #        "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
#            #       "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
#            #      "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
#            #     "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
#            #    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
#            #   "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
#            #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
#            # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
#            #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
#            #           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
#            #          "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
#            #         "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
#            #        "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
#            #       "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
#            #      "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
#            #     "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
#            #    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
#            #   "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
#            #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
#            # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
#            #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
#            #           "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
#            #          "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
#            #         "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
#            #        "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
#            #       "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
#            "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9")
# #      "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9")

#posterior_GMM_3methods_ave_thresholds_3_lca_sim_p
#load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9")
filelist
load_averages=function(file){
  load(file)
  tmp.T.CL=(lca.T.cl_record)
  tmp.T.NCL=(lca.T.ncl_record)
  tmp.F=(lca.F_record)
  tmp.gmm=(gmm_record)
  
  
  if(cor(tmp.F, tmp.gmm)<0) tmp.F=1-tmp.F
  if(cor(tmp.T.CL, tmp.gmm)<0) tmp.T.CL=1-tmp.T.CL
  if(cor(tmp.T.NCL, tmp.gmm)<0) tmp.T.NCL=1-tmp.T.NCL
  
  
  return(tibble(LCA=tmp.F, LCRE.CL=tmp.T.CL, LCRE.NCL=tmp.T.NCL, GMM=tmp.gmm))
}

averages=lapply(filelist, load_averages)


average_violin_plot=function(averages){
  tmp=averages %>%
    add_column(index=1:3000) %>%
    gather(key=method, value=mean, LCA, LCRE.CL, LCRE.NCL, GMM)
  tmp$method=recode_factor(tmp$method, LCA="LCA", LCRE.CL="LCRE.CL", LCRE.NCL="LCRE.NCL", GMM="GMM")
  return(tmp)
}

average_plot=lapply(averages, average_violin_plot)

# sds_average_mat=matrix(unlist(sds_average), ncol=2, byrow=TRUE)
# 
# sd_diff=tibble(sd.T=sds_average_mat[,1], sd.F=sds_average_mat[,2], diff=sds_average_mat[,1]-sds_average_mat[,2]) %>%
#   cbind(all_param) %>%
#   mutate(sigma.z=as.factor(sigma.z)) %>%
#   arrange(sigma.z) %>%
#   add_column(index=1:60)
# 
# 
# ggplot(sd_diff, aes(x=index, diff, colour=sigma.z)) +
#   geom_point() +
#   theme_bw()+
#   labs(x="Scenario Number", y=expression(paste("Difference in Standard Deviation\n for Posterior Probabilities (LCRE-LCA)")), colour=expression(sigma)) +
#   geom_hline(yintercept=0) +
#   theme(plot.margin = margin(0.5, 0.5, 0.5, 1, "cm"))+
#   ggsave("Simulation_Thresholds_Difference_SD.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=6)
# 
# 
# load(filelist[[1]])
# posterior.T.ave
make_violins=function(average_plot){
  ggplot(average_plot, aes(x= index, y=mean, fill=method)) + 
    geom_violin() +
    labs(y="Average Posterior Probability", fill="Method") +
    theme_bw()+
    ylim(0,1)+
    theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
    scale_fill_brewer(palette="Dark2",  breaks=c("LCA", "LCRE.CL", "LCRE.NCL", "GMM"),
                      labels=c("LCA", "LCRE (CL)", "LCRE (no CL)", "GMM")) 
  #geom_hline(yintercept=0)+
  #ylim(0,1) +
  #  geom_abline()+
  #xlim(0,1)+
}


scenarios=all_param %>%
  mutate(scenario=paste("Scenario Parameters:", "Delta", delta, "Sigma.z", sigma.z,"P.0", p.0, sep=" ")) %>%
  dplyr::select(scenario)

make_violins(average_plot[[1]])

for(i in 1:30){
  make_violins(average_plot[[i]])+
    labs(title=as.character(scenarios[i,1]))+
    ggsave(paste0("Simulation_Thredhold_Gene_Averages_byParam_", scenarios[i,1], ".jpeg"),path="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/average_threhold_genes/", device="jpeg", width=16, height=8)
}



######################################################### Measure difference MGMM and LCA/LCRE ###############################################
filelist

library(mclust)
# get_diff_post=function(averages){
# 
#   load(file)
#   tmp.T.CL=(lca.T.cl_record)
#   tmp.T.NCL=(lca.T.ncl_record)
#   tmp.F=(lca.F_record)
#   tmp.gmm=(gmm_record)
# 
#   diff_post=list()
#   for(i in 1:length(tmp.F)){
#   if(cor(tmp.F[[i]], tmp.gmm[[i]])<0) tmp.F[[i]]=1-tmp.F[[i]]
#   if(cor(tmp.T.CL[[i]], tmp.gmm[[i]])<0) tmp.T.CL[[i]]=1-tmp.T.CL[[i]]
#   if(cor(tmp.T.NCL[[i]], tmp.gmm[[i]])<0) tmp.T.NCL[[i]]=1-tmp.T.NCL[[i]]
# 
# 
#   diff_post_LCA=(tmp.gmm[[i]]-tmp.F[[i]])^2
#   diff_post_LCRE.CL=(tmp.gmm[[i]]-tmp.T.CL[[i]])^2
#   diff_post_LCRE.NCL=(tmp.gmm[[i]]-tmp.T.NCL[[i]])^2
#   #diff_post=tibble(LCA=diff_post_LCA, LCRE.CL=diff_post_LCRE.CL, LCRE.NCL=diff_post_LCRE.NCL)
#   # y.LCA_post=averages$LCA
#   # y.LCRE.CL_post=averages$LCRE.CL
#   # y.LCRE.NCL_post=averages$LCRE.NCL
#   # gmm_post=averages$GMM
# 
#   diff_post[[i]]=tibble(LCA=diff_post_LCA, LCRE.CL=diff_post_LCRE.CL, LCRE.NCL=diff_post_LCRE.NCL)
#   }
# 
# 
#   return(diff_post)
# }

get_diff_post_measure_sqrt=function(file){
  
  load(file)
  tmp.T.CL=(lca.T.cl_record)
  tmp.T.NCL=(lca.T.ncl_record)
  tmp.F=(lca.F_record)
  tmp.gmm=(gmm_record)
  
  diff_post=tibble(LCA=0, LCRE.CL=0, LCRE.NCL=0)
  for(i in 1:length(tmp.F)){
    if(cor(tmp.F[[i]], tmp.gmm[[i]])<0) tmp.F[[i]]=1-tmp.F[[i]]
    if(cor(tmp.T.CL[[i]], tmp.gmm[[i]])<0) tmp.T.CL[[i]]=1-tmp.T.CL[[i]]
    if(cor(tmp.T.NCL[[i]], tmp.gmm[[i]])<0) tmp.T.NCL[[i]]=1-tmp.T.NCL[[i]]
    
    
    diff_post_LCA=(tmp.gmm[[i]]-tmp.F[[i]])^2
    diff_post_LCRE.CL=(tmp.gmm[[i]]-tmp.T.CL[[i]])^2
    diff_post_LCRE.NCL=(tmp.gmm[[i]]-tmp.T.NCL[[i]])^2
    #diff_post=tibble(LCA=diff_post_LCA, LCRE.CL=diff_post_LCRE.CL, LCRE.NCL=diff_post_LCRE.NCL)
    # y.LCA_post=averages$LCA
    # y.LCRE.CL_post=averages$LCRE.CL
    # y.LCRE.NCL_post=averages$LCRE.NCL
    # gmm_post=averages$GMM
    
    RMSE_LCA=sqrt(sum(diff_post_LCA)/3000)
    RMSE_LCRE.CL=sqrt(sum(diff_post_LCRE.CL)/3000)
    RMSE_LCRE.NCL=sqrt(sum(diff_post_LCRE.NCL)/3000)
    
    diff_post[i,]=c(RMSE_LCA, RMSE_LCRE.CL, RMSE_LCRE.NCL)
  }
  
  
  return(diff_post)
}


diff=lapply(filelist, get_diff_post)

measure_sqrt_results=lapply(filelist, get_diff_post_measure_sqrt)
#save(diff, file="~/Documents/Aim_2/homo_sapiens_neutrophil/diff_post")

get_measure_sqrt_ave=function(diff_post){
  # temp=c(sum(diff_post[,1]), sum(diff_post[,2]), sum(diff_post[,3]))
  # measure=sqrt(temp/3000)
  # return(measure)
  
  ave=c(mean(diff_post$LCA), mean(diff_post$LCRE.CL), mean(diff_post$LCRE.NCL))
  return(ave)
}  

measure_sqrt= matrix(unlist(lapply(measure_sqrt_results, get_measure_sqrt_ave)), nrow=50, ncol=3, byrow=TRUE) %>%
  as.tibble() %>%
  dplyr::rename(LCA=V1, LCRE.CL=V2, LCRE.NCL=V3) %>%
#  gather(method, gmm_comp, LCA, LCRE.CL, LCRE.NCL) %>%
  cbind(all_param) %>%
  arrange(sigma.z) %>%
  add_column(index=1:(50)) %>%
  mutate(sigma.z=as.factor(sigma.z))
measure_sqrt$method=recode(measure_sqrt$method, LCA="LCA", LCRE.CL="LCRE (CL)", LCRE.NCL="LCRE (no CL)")

measure_sqrt_av_thresh=cbind(measure_sqrt, threshold="average")
save(measure_sqrt_av_thresh, file="sqrt_diff_plot_simulation_average_thresh")
load("sqrt_diff_plot_simulation_average_thresh")

RMSE_appendix=measure_sqrt_av_thresh%>%
  dplyr::select(p, delta, sigma.z, p.0, LCA, LCRE.CL, LCRE.NCL)

latex(as.matrix(RMSE_appendix), booktabs=T, file="~/Documents/Thesis/thesis_finale/Images/Appendix_C_2", longtable=T)



ggplot(measure_sqrt, aes(y=gmm_comp, colour=method))+
  geom_boxplot()+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~sigma.z, scale="free") +
  labs(y="Difference in Posterior Probability compared with GMM")+
  labs(colour = "Method")+
  scale_colour_brewer(palette = "Dark2")+
  ggsave("Straight_Diff_Post_Prob_Thresholds.sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=6)

ggplot(measure_sqrt, aes(y=gmm_comp, colour=method))+
  geom_boxplot()+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~delta, scale="free") +
  labs(y="Difference in Posterior Probability compared with GMM")+
  labs(colour = "Method")+
  scale_colour_brewer(palette = "Dark2")+
  ggsave("Straight_Diff_Post_Prob_Thresholds.delta.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=6)

ggplot(measure_sqrt, aes(y=gmm_comp, colour=method))+
  geom_boxplot()+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~p.0, scale="free") +
  labs(y="Difference in Posterior Probability compared with GMM")+
  labs(colour = "Method")+
  scale_colour_brewer(palette = "Dark2")+
  ggsave("Straight_Diff_Post_Prob_Thresholds.p.0.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=6)


####################################################### Which was best of Differences in Post Prob ###############################################################

measure_sqrt_list=matrix(unlist(lapply(diff, get_measure_sqrt)), nrow=30, ncol=3, byrow=TRUE) %>%
  as.tibble() %>%
  dplyr::rename(LCA=V1, LCRE.CL=V2, LCRE.NCL=V3) %>%
  #  gather(method, gmm_comp, LCA, LCRE.CL, LCRE.NCL) %>%
  cbind(all_param) %>%
  arrange(sigma.z) %>%
  mutate(sigma.z=as.factor(sigma.z), delta=as.factor(delta), p=as.factor(p), p.0=as.factor(p.0))



best_post_diff_LCA=filter(measure_sqrt_list, (LCA<LCRE.CL)==TRUE, (LCA<LCRE.NCL)==TRUE)
best_post_diff_LCRE.CL=filter(measure_sqrt_list, (LCRE.CL<LCA)==TRUE, (LCRE.CL<LCRE.NCL)==TRUE)
best_post_diff_LCRE.NCL=filter(measure_sqrt_list, (LCRE.NCL<LCRE.CL)==TRUE, (LCRE.NCL<LCA)==TRUE)

################################################# Add to measurement summary ##################################################################

best=add_column(best_CL, best="CL") %>%
  rbind(add_column(best_NCL, best="NCL")) %>%
  rbind(add_column(best_LCA, best="LCA")) %>%
  dplyr::rename(best.corr=best, LCA.corr=LCA, LCRE.CL.corr=LCRE.CL, LCRE.NCL.corr=LCRE.NCL) %>%
  mutate(p=as.factor(p))

best_post_diff=add_column(best_post_diff_LCA, best_diff="LCA") %>%
  rbind(add_column(best_post_diff_LCRE.CL, best_diff="CL")) %>%
  rbind(add_column(best_post_diff_LCRE.NCL, best_diff="NCL")) %>%
  dplyr::rename(LCA.diff=LCA, LCRE.CL.diff=LCRE.CL, LCRE.NCL.diff=LCRE.NCL) %>%
  mutate(p=as.factor(p))

agreement_diff_param=inner_join(best, best_post_diff, by=c("delta", "sigma.z", "p.0", "p"), suffix=c(".corr", ".diff")) %>%
  arrange(sigma.z, delta, p.0)

agreement_diff_param=agreement_diff_param[,c(5:8, 12, 1:3, 9:11)]


agreement_freq=  group_by(agreement_diff_param, best.corr, best_diff) %>%
  summarise(freq=n())
#save(agreement_freq, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/agreement_freq_average_thresholds")
#(data.frame(agreement_freq))
agreement_freq

# ############################################################ Sum of Scores ################################################################
# load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/posterior_GMM_3methods_ave_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9")
# 
# file1=("/home/catisha/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_full_data_parameters_gmm_3methods_threshold_correct_3_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.3")
# file2=("/home/catisha/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.3")
# gmm_record
# lca.F_record
# 
# x_record
# post.F_record
# find_sum_of_scores=function(file){
#   load(file1)
#   load(file2)
#   perm.matrix=as.matrix(expand.grid(c(1,2,3),
#                                     c(1,2,3),
#                                     c(1,2,3),
#                                     c(1,2,3),
#                                     c(1,2,3)))
#   threshold=c(-0.6, 0, 0.6)
#   sums=matrix(0,3000, nrow(perm.matrix))
#   for(i in 1:nrow(perm.matrix)){
#     y=matrix(0,3000,5)
#     y=data.frame(y)
#     y[x_record[[7]]>outer(rep(1,3000),threshold[perm.matrix[i,]])]=1
#     temp=rowSums(y)
# 
#     sums[,i]=temp
#   }
#   sums_ave=rowMeans(sums)

  #details=separate(as.tibble(file), col=value, into=c(NA, NA, NA, NA, NA, NA, NA, NA, NA, "p", NA,"delta", NA, "sigma.z", NA, "p.0"), sep="_") %>%
  #mutate(p.0=as.double((p.0)),p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z))

#   posterior.gmm
# 
#   if(cor(sums_ave, posterior.gmm)<0) gmm_post=predict(gmm.fit)$z[,2]
#   return(cor(sums_ave, posterior.gmm))
# }
# 
# cor_sum=lapply(filelist, find_sum_of_scores)
# 
# #save(cor_sum, file="~/Documents/Aim_2/homo_sapiens_neutrophil/cor_sum")
# get_last_correlation=function(correlation){
#   last_cor=correlation[5,2:4]
#   return(abs(last_cor))
# }
# 
# 
# sum_scores_compare=matrix(unlist(lapply(correlation, get_last_correlation)), nrow=60, ncol=3, byrow=TRUE) %>%
#   as.tibble((.)) %>%
#   dplyr::rename(LCA=V1, "LCRE (CL)"=V2, "LCRE (No CL)"=V3) %>%
#   add_column('Sum of Scores'=unlist(cor_sum)) %>%
#   gather(method, correlation, LCA, "LCRE (CL)", "LCRE (No CL)", 'Sum of Scores') %>%
#   cbind(all_param) %>%
#   arrange(sigma.z) %>%
#   add_column(index=1:(60*4)) %>%
#   mutate(sigma.z=as.factor(sigma.z), delta=as.factor(delta), p=as.factor(p), p.0=as.factor(p.0)) 
# 
# ggplot(sum_scores_compare, aes(y=correlation, colour=method, group=method)) +
#   geom_boxplot()+
#   theme_bw() +
#   theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
#   labs(y="Correlation to MGMM", colour="Model")+
#   facet_grid(.~sigma.z, scale="free")+
#   scale_colour_brewer(palette = "Dark2")+
#   ggsave("Sum_Scores_compare_corr_sigmaz_contThresh.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
# 
# ggplot(sum_scores_compare, aes(y=correlation, colour=method, group=method)) +
#   geom_boxplot()+
#   theme_bw() +
#   theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
#   labs(y="Correlation to MGMM", colour="Model")+
#   facet_grid(.~delta, scale="free")+
#   scale_colour_brewer(palette = "Dark2")+
#   ggsave("Sum_Scores_compare_corr_delta_contThresh.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
# 
# ggplot(sum_scores_compare, aes(y=correlation, colour=method, group=method)) +
#   geom_boxplot()+
#   theme_bw() +
#   theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
#   labs(y="Correlation to MGMM", colour="Model")+
#   facet_grid(.~p.0, scale="free")+
#   scale_colour_brewer(palette = "Dark2")+
#   ggsave("Sum_Scores_compare_corr_p.0_contThresh.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=8)
# 
# ggplot(sum_scores_compare, aes(y=correlation, colour=method, group=method)) +
#   geom_boxplot()+
#   theme_bw() +
#   theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
#   labs(y="Correlation to MGMM", colour="Model")+
#   facet_grid(.~p, scale="free")+
#   scale_colour_brewer(palette = "Dark2")+
#   ggsave("Sum_Scores_compare_corr_p_contThresh.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
# 
# # 

######################################################### Best calculation of binding based on p.0 ############################################################
file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/ave_thresholds_phoenix/phoenix_correlation_GMM_3methods_thresholds_3_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.7"
get_proportions=function(file){
  load(file)
  tmp.T.CL=(lca.T.cl_record)
  tmp.T.NCL=(lca.T.ncl_record)
  tmp.F=(lca.F_record)
  tmp.gmm=(gmm_record)
  
  
  if(cor(tmp.F[[1]], tmp.gmm[[1]])<0) tmp.F[[1]]=1-tmp.F[[1]]
  if(cor(tmp.T.CL[[1]], tmp.gmm[[1]])<0) tmp.T.CL[[1]]=1-tmp.T.CL[[1]]
  if(cor(tmp.T.NCL[[1]], tmp.gmm[[1]])<0) tmp.T.NCL[[1]]=1-tmp.T.NCL[[1]]

  
  for(i in 2:length(tmp.F)) if(cor(tmp.F[[1]], tmp.F[[i]])<0) tmp.F[[i]]=1-tmp.F[[i]]
  for(i in 2:length(tmp.T.CL)) if(cor(tmp.T.CL[[1]], tmp.T.CL[[i]])<0) tmp.T.CL[[i]]=1-tmp.T.CL[[i]]   
  for(i in 2:length(tmp.T.NCL)) if(cor(tmp.T.NCL[[1]], tmp.T.NCL[[i]])<0) tmp.T.NCL[[i]]=1-tmp.T.NCL[[i]]   
  for(i in 2:length(tmp.gmm)) if(cor(tmp.gmm[[1]], tmp.gmm[[i]])<0) tmp.gmm[[i]]=1-tmp.gmm[[i]] 
  
  sum.F=lapply(tmp.F, sum)
  sum.T.CL=lapply(tmp.T.CL, sum)
  sum.T.NCL=lapply(tmp.T.NCL, sum)
  sum.gmm=lapply(tmp.gmm, sum)
  
  
  mean.F=mean(unlist(sum.F))
  mean.T.CL=mean(unlist(sum.T.CL))
  mean.T.NCL=mean(unlist(sum.T.NCL))
  mean.gmm=mean(unlist(sum.gmm))
  
  return(c(mean.F, mean.T.CL, mean.T.NCL, mean.gmm))
}



proportions=matrix(unlist(lapply(filelist, get_proportions)), nrow=50, ncol=4, byrow=TRUE) %>%
  as.tibble() %>%
  dplyr::rename("LCA"=V1, "LCRE.CL"=V2, "LCRE.NCL"=V3, "GMM"=V4) %>%
  cbind(all_param) %>%
  mutate(binding_number=3000*p.0) %>%
  dplyr::mutate(LCA=ifelse((abs(GMM-binding_number)<abs(GMM-(3000-binding_number))), LCA, 3000-LCA ), LCRE.CL=ifelse((abs(GMM-binding_number)<abs(GMM-(3000-binding_number))), LCRE.CL, 3000-LCRE.CL ), LCRE.NCL=ifelse((abs(GMM-binding_number)<abs(GMM-(3000-binding_number))), LCRE.NCL, 3000-LCRE.NCL ), GMM=ifelse((abs(GMM-binding_number)<abs(GMM-(3000-binding_number))), GMM, 3000-GMM ))  

proportions_appendix=proportions %>%
  dplyr::select(p, delta, sigma.z, p.0, "Binding Number"=binding_number, LCA, LCRE.CL, LCRE.NCL, MGMM=GMM)
proportions_appendix=round(proportions_appendix,2)

latex(as.matrix(proportions_appendix), booktabs=T, file="~/Documents/Thesis/thesis_finale/Images/Appendix_C_3", longtable=T)


plot_binding_goodness=proportions %>%
  dplyr::mutate(LCA=LCA/binding_number, LCRE.CL=LCRE.CL/binding_number, LCRE.NCL=LCRE.NCL/binding_number, GMM=GMM/binding_number) %>%
  dplyr::select(-binding_number) %>%
#  gather(key=method, value=proportion, LCA, LCRE.CL, LCRE.NCL, GMM) %>%
  dplyr::mutate(p=as.factor(p), delta=as.factor(delta), sigma.z=as.factor(sigma.z), p.0=as.factor(p.0))

plot_binding=cbind(plot_binding_goodness, threshold="average")
  
save(plot_binding, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/proportion_binding_average")
load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/proportion_binding_average")

plot_binding

how_many_binding_genes=function(averages){
  LCA_binding=nrow(filter(averages, LCA>0.5))
  LCRE.CL_binding=nrow(filter(averages, LCRE.CL>0.5))
  LCRE.NCL_binding=nrow(filter(averages, LCRE.NCL>0.5))
  GMM_binding=nrow(filter(averages, GMM>0.5))
  return(c(LCA_binding, LCRE.CL_binding, LCRE.NCL_binding, GMM_binding))
}


binding_genes=matrix(unlist(lapply(averages, how_many_binding_genes)), ncol=4, byrow=TRUE) %>%
  as.tibble() %>%
  dplyr::rename(LCA=V1, LCRE.CL=V2, LCRE.NCL=V3, GMM=V4) %>%
  cbind(all_param) %>%
  dplyr::mutate(binding_number=3000*p.0) %>%
  # dplyr::mutate(check=((abs(GMM-binding_number)<(300))))
  # binding_genes
  dplyr::mutate(LCA=ifelse((abs(GMM-binding_number)<(300)), LCA, 3000-LCA ), LCRE.CL=ifelse((abs(GMM-binding_number)<(300)), LCRE.CL, 3000-LCRE.CL ), LCRE.NCL=ifelse((abs(GMM-binding_number)<(300)), LCRE.NCL, 3000-LCRE.NCL ), GMM=ifelse((abs(GMM-binding_number)<(300)), GMM, 3000-GMM ))
binding_genes


plot_binding_goodness=binding_genes %>%
  dplyr::mutate(LCA=LCA/binding_number, LCRE.CL=LCRE.CL/binding_number, LCRE.NCL=LCRE.NCL/binding_number, GMM=GMM/binding_number) %>%
  dplyr::select(-binding_number) %>%
  gather(key=method, value=proportion, LCA, LCRE.CL, LCRE.NCL, GMM) %>%
  dplyr::mutate(p=as.factor(p), delta=as.factor(delta), sigma.z=as.factor(sigma.z), p.0=as.factor(p.0))

plot_binding_goodness$method=recode_factor(plot_binding_goodness$method, LCA="LCA", LCRE.CL="LCRE (CL)", LCRE.NCL="LCRE (no CL)", MGMM="MGMM")

plot_binding_goodness_aveThresh=plot_binding_goodness
save(plot_binding_goodness_aveThresh, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/plot_p.0_estimation_aveThresh")


ggplot(plot_binding_goodness, aes(y=proportion, colour=method)) +
  geom_boxplot() +
  theme_bw()+
  facet_grid(.~sigma.z) +
  geom_hline(yintercept=1)+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  labs(y="Proportion of Actual Binding Number", colour="Model")+
  scale_colour_brewer(palette = "Dark2")+
  ggsave("Proportion_accuracy_thresholds_sigma.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(plot_binding_goodness, aes(y=proportion, colour=method)) +
  geom_boxplot() +
  theme_bw()+
  facet_grid(.~delta) +
  geom_hline(yintercept=1)+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  labs(y="Proportion of Actual Binding Number", colour="Model")+
  scale_colour_brewer(palette = "Dark2")+
  ggsave("Proportion_accuracy_thresholds_delta.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(plot_binding_goodness, aes(y=proportion, colour=method)) +
  geom_boxplot() +
  theme_bw()+
  facet_grid(.~p.0) +
  geom_hline(yintercept=1)+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  labs(y="Proportion of Actual Binding Number", colour="Model")+
  scale_colour_brewer(palette = "Dark2")+
  ggsave("Proportion_accuracy_thresholds_p.0.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

