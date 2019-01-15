######################### Determine which simulations had the best performance based on correlation with the mgmm ###########################
library(tidyverse)
library(randomLCA)
filelist=
  c("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_151218_contThresh_correlation_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.9")
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_contThresh_correlation_5_samples_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9")


load_allocate=function(file){
  if(file.exists(file)){
  load(file)
  return(as.tibble(correlation))
    }else {return(NA)}
}  
  length(filelist)

file.exists(filelist[30])

correlation=lapply(filelist, load_allocate)
# save(correlation, all_param, file="~/Documents/Aim_2/homo_sapiens_neutrophil/correlation_param")
filelist[which(is.na(correlation)==TRUE)]
filelist[[188]]
find_best_cases=function(cor){
  average=c(mean(abs(cor$posterior.lca.F)), mean(abs(cor$posterior.lca.T.CL)), mean(abs(cor$posterior.lca.T.NCL)))
  #sd=c(sd(cor$posterior.lca.F), sd(cor$posterior.lca.T))
  #best=mutate(cor, diff=posterior.lca.T-posterior.lca.F) %>%
   # dplyr::select(diff)
  best=average[2]-average[1]
  #best=best[1,]
  return(best)
}
find_average=function(cor){
  if(is.na(cor)){return(rep(NA,3))}
  average=c(mean(abs(cor$posterior.lca.F), na.rm = T), mean(abs(cor$posterior.lca.T.CL), na.rm = T), mean(abs(cor$posterior.lca.T.NCL), na.rm=T))
  #sd=c(sd(cor$posterior.lca.F), sd(cor$posterior.lca.T))
  #best=mutate(cor, diff=posterior.lca.T-posterior.lca.F) %>%
  # dplyr::select(diff)
  #best=average[2]-average[1]
  #best=best[1,]
  return(average)
}

find_sds=function(cor){
  #average=c(mean(cor$posterior.lca.F), mean(cor$posterior.lca.T))
  sd=c(sd(abs(cor$posterior.lca.F),na.rm = T), sd(abs(cor$posterior.lca.T.CL),na.rm = T), sd(abs(cor$posterior.lca.T.NCL),na.rm = T))
  #best=mutate(cor, diff=posterior.lca.T-posterior.lca.F) %>%
  # dplyr::select(diff)
  #best=average[2]-average[1]
  #best=best[1,]
  return(sd)
}


all_param=separate(as.tibble(filelist[1:100]), col=value, into=c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, "p", NA, "delta", NA, "sigma.z", NA, "p.0"), sep="_") %>%
  mutate(p.0=as.double(p.0), p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z)) %>%
  cbind(threshold="varied")

tmp=separate(as.tibble(filelist[101:200]), col=value, into=c(NA, NA,NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, "p", NA, "delta", NA, "sigma.z", NA, "p.0"), sep="_") %>%
  mutate(p.0=as.double(p.0), p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z)) %>%
  cbind(threshold="constant")

all_param=rbind(all_param, tmp)

best_cases=lapply(correlation, find_best_cases)
posterior_sd=lapply(correlation, find_sds)
posterior.ave=lapply(correlation, find_average)

posterior_sd[[1]]

diff=as.vector(unlist(best_cases))
sd_vec=matrix(unlist(posterior_sd), ncol=3, byrow=TRUE)
ave_vec=matrix(unlist(posterior.ave), ncol=3, byrow=TRUE)

diff_plot=tibble(diff=diff) %>%
  cbind(all_param) %>%
  arrange(sigma.z) %>%
  #filter(p==5) %>%
  add_column(index=1:200) %>%
  mutate(sigma.z=as.factor(sigma.z), delta=as.factor(delta), p.0=as.factor(p.0), p=as.factor(p))

average_correlation=tibble(LCA=ave_vec[,1], LCRE.CL=ave_vec[,2], LCRE.NCL=ave_vec[,3]) %>%
  cbind(all_param) %>%
  arrange(sigma.z) %>%
  #filter(p==5) %>%
  add_column(index=1:200) %>%
  mutate(sigma.z=as.factor(sigma.z), delta=as.factor(delta), p.0=as.factor(p.0), p=as.factor(p))
  
plot(diff) + abline(h=0.)

sd_plot=tibble(LCRE_NCL=sd_vec[,3], LCRE_CL=sd_vec[,2], LCA=sd_vec[,1]) %>%
  cbind(all_param) %>%
  dplyr::rename(LCRE.NCL=LCRE_NCL, LCRE.CL=LCRE_CL, LCA=LCA) %>%
  #gather(key=model, value=sd, LCA, LCRE_CL, LCRE_NCL) %>%
  arrange(sigma.z) %>%
  add_column(index=1:200) %>%
  mutate(sigma.z=as.factor(sigma.z), delta=as.factor(delta), p.0=as.factor(p.0), p=as.factor(p))

sd_plot$model=recode(sd_plot$model, LCA="LCA", LCRE_CL="LCRE (CL)", LCRE_NCL="LCRE (no CL)")
sd_plot$threshold=recode(sd_plot$threshold, varied="Varying over Programs", constant="Constant Over Programs")

#tail(n=80, sd_plot)

av_plot=tibble(LCA=ave_vec[,1], LCRE.CL=ave_vec[,2], LCRE.NCL=ave_vec[,3]) %>%
  cbind(all_param) %>%
  #gather(key=model, value=mean, LCA, LCRE.CL, LCRE.NCL) %>%
  arrange(sigma.z) %>%
  add_column(index=1:200) %>%
  mutate(sigma.z=as.factor(sigma.z), p.0=as.factor(p.0), delta=as.factor(delta), p=as.factor(p)) # model=as.factor(model),

av_plot$model=recode(av_plot$model, LCA="LCA", LCRE.CL="LCRE (CL)", LCRE.NCL="LCRE (no CL)")
av_plot$threshold=recode(av_plot$threshold, varied="Varying over Programs", constant="Constant Over Programs")


av_plot
av_plot_varied=cbind(av_plot, threshold="varied")
save(av_plot, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/average_plot_simulation_fixed_thresh" )
scen_1_corr=correlation[[1]]%>%
  rbind(c(1, mean(.$posterior.lca.F), mean(.$posterior.lca.T.CL), mean(.$posterior.lca.T.NCL))) %>%
  rbind(c(1, sd(.$posterior.lca.F), sd(.$posterior.lca.T.CL), sd(.$posterior.lca.T.NCL)))



appendix_plot=left_join(av_plot, sd_plot, by=c("p", "delta", "sigma.z", "p.0", "threshold", "index"), suffix=c("_ave", "_sd")) %>%
  dplyr::select( p, delta, sigma.z, p.0, threshold, LCA_ave, LCA_sd, LCRE.CL_ave, LCRE.CL_sd, LCRE.NCL_ave, LCRE.NCL_sd) %>%
  mutate(LCA_ave=round(LCA_ave,5),LCA_sd=round(LCA_sd,5),
         LCRE.CL_ave=round(LCRE.CL_ave,5),LCRE.CL_sd=round(LCRE.CL_sd,5),
         LCRE.NCL_ave=round(LCRE.NCL_ave,5),LCRE.NCL_sd=round(LCRE.NCL_sd,5))

latex(as.matrix(appendix_plot), booktabs=T, file="~/Documents/Thesis/thesis_finale/Images/Appendix_B_1", longtable=T)

tail(scen_1_corr)


library(Hmisc)
latex(as.matrix(round(scen_1_corr,2)), file="~/Documents/Thesis/Images/table_correlation_scenario_1")

# ###################################################### Plot of difference in correlation between LCA and LCRE to MGMM #########################################
# 
# ggplot(diff_plot, aes(y=diff, colour=`Constant Loading`))+
#   geom_boxplot() +
#   theme_bw() +
#   theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
# #  geom_hline(yintercept = 0)+
#   scale_colour_brewer(palette="Dark2")+
#   facet_grid(.~sigma.z, labeller = label_both, scale="free")+
#   labs(colour = expression(paste(sigma[z])))+
#   labs(y=("Difference in Correlation with MGMM \n for Posterior Probabilities (LCRE-LCA)")) +
#   ggsave("Simulation_Difference_Correlation_sigma.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
# 
# ggplot(diff_plot, aes(y=diff, colour=`Constant Loading`))+
#   geom_boxplot() +
#   theme_bw() +
#   theme(axis.title.x = element_blank(),  axis.text.x = element_blank(),   axis.ticks = element_blank())+
# #  geom_hline(yintercept = 0)+
#   facet_grid(.~delta, labeller = label_both)+
# labs(colour = expression(paste(delta)))+
#   scale_colour_brewer(palette="Dark2")+
# #    scale_colour_brewer(palette="Set1")+
#   labs(y="Difference in Correlation with MGMM \n for Posterior Probabilities (LCRE-LCA)") +
#   ggsave("Simulation_Difference_Correlation_delta.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
# 
# ggplot(diff_plot, aes(y=diff, colour=`Constant Loading`))+
#   geom_boxplot() +
#   theme_bw() +
#   theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
#  # geom_hline(yintercept = 0)+
#   facet_grid(.~p.0, labeller = label_both)+
#   scale_colour_brewer(palette="Dark2")+
#   labs(colour = expression(paste(p[0])))+
#   labs(y="Difference in Correlation with MGMM \n for Posterior Probabilities (LCRE-LCA)") +
#   ggsave("Simulation_Difference_Correlation_p.0.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=6)
# 
# ggplot(diff_plot, aes(y=diff, colour=`Constant Loading`))+
#   geom_boxplot() +
#   theme_bw() +
#   theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
#   # geom_hline(yintercept = 0)+
#   scale_colour_brewer(palette="Dark2")+
#   facet_grid(.~p, labeller = label_both)+
#   #scale_color_viridis(discrete=TRUE, option="D", end=0.5) +
#   labs(colour = expression(paste(p)))+
#   labs(y="Difference in Correlation with MGMM \n for Posterior Probabilities (LCRE-LCA)") +
#   ggsave("Simulation_Difference_Correlation_p.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)


###################################################### Plot of SD correlation  LCA and LCRE to MGMM #########################################



ggplot(sd_plot, aes(y=sd, colour=model))+
  geom_boxplot() +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #geom_hline(yintercept=0)+
  facet_grid(.~sigma.z)+
 scale_colour_brewer(palette="Dark2")+
  labs(colour = "Model")+
  labs(y="Standard Deviation of Correlation with MGMM (LCRE-LCA)") +
  ggsave("Simulation_SD_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(sd_plot, aes(y=sd, colour=model))+
  geom_boxplot() +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #geom_hline(yintercept=0)+
  facet_grid(.~delta)+
  #scale_colour_brewer(palette="Set1")+
  scale_colour_brewer(palette="Dark2")+
  labs(colour = "Model")+
  labs(y="Standard Deviation of Correlation with MGMM (LCRE-LCA)") +
  ggsave("Simulation_SD_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(sd_plot, aes(y=sd, colour=model))+
  geom_boxplot() +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #geom_hline(yintercept=0)+
  facet_grid(.~p.0, labeller = label_both)+
  scale_colour_brewer(palette="Dark2")+
  labs(colour = "Model")+
  labs(y="Standard Deviation of Correlation with MGMM (LCRE-LCA)") +
  ggsave("Simulation_SD_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(sd_plot, aes(y=sd, colour=model))+
  geom_boxplot() +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #geom_hline(yintercept=0)+
  facet_grid(.~p)+
  #scale_color_viridis(discrete=TRUE, option="D", end=0.5) +
  scale_colour_brewer(palette="Dark2")+
  labs(colour = "Model")+
  labs(y="Standard Deviation of Correlation with MGMM (LCRE-LCA)") +
  ggsave("Simulation_SD_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(sd_plot, aes(y=sd, colour=model))+
  geom_boxplot() +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #geom_hline(yintercept=0)+
  facet_grid(.~threshold)+
  #scale_color_viridis(discrete=TRUE, option="D", end=0.5) +
  scale_colour_brewer(palette="Dark2")+
  labs(colour = "Model")+
  labs(y="Standard Deviation of Correlation with MGMM (LCRE-LCA)") +
  ggsave("Simulation_SD_Correlation_threshold.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)


###################################################### Plot of average correlation  LCA and LCRE to MGMM #########################################
install.packages("GGally")
library(GGally)
ggpairs(av_plot, columns=1:3, upper=list("na", "na", "na"), diag=list("naDiag", "naDiag", "naDiag"))
library(gridExtra)

a=ggplot(av_plot, aes(x=LCRE.CL, y=LCA, colour=sigma.z))+
  geom_point() +
  theme_bw() +
 # theme(axis.title.y = element_blank(),   axis.text.y = element_blank(),  axis.ticks = element_blank())+
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  #labs(y="Average Correlation with MGMM") +
  scale_colour_brewer(palette="Set1")+
  geom_abline(aes(intercept=0, slope=1))
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

b=ggplot(av_plot, aes(x=LCRE.NCL, y=LCA, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  geom_abline(aes(intercept=0, slope=1))+
  #labs(y="Average Correlation with MGMM") +
  scale_colour_brewer(palette="Set1")
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)


c=ggplot(av_plot, aes(x=LCRE.NCL, y=LCRE.CL, colour=sigma.z))+
  geom_point() +
  theme_bw() +
#  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  geom_abline(aes(intercept=0, slope=1))+
  #labs(y="Average Correlation with MGMM") +
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
fig=grid_arrange_shared_legend(b,a,c , ncol = 2, nrow = 2, position="bottom") 
  ggsave("Simulation_Average_Correlation_sigmaz_pairs.jpeg",plot=fig, path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)


ggplot(av_plot, aes(y=mean, colour=model))+
  geom_boxplot() +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(~sigma.z) +
  labs(colour = "Model")+
  labs(y="Average Correlation with MGMM") +
  scale_colour_brewer(palette="Dark2")+
  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(av_plot, aes(y=mean, colour=model))+
  geom_boxplot() +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~delta) +
  labs(colour = "Model")+
  scale_colour_brewer(palette="Dark2")+
  #  scale_colour_brewer(palette="Set1")+
  labs(y="Average Correlation with MGMM")+
  ggsave("Simulation_Average_Correlation_delta.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(av_plot, aes(y=mean, colour=model))+
  geom_boxplot() +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~p.0) +
  labs(colour = "Model")+
  labs(y="Average Correlation with MGMM") +
  scale_colour_brewer(palette="Dark2")+
  ggsave("Simulation_Average_Correlation_p.0.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=6)

ggplot(av_plot, aes(y=mean, colour=model))+
  geom_boxplot() +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~p) +
  labs(colour = "Model")+
  labs(y="Average Correlation with MGMM") +
  scale_colour_brewer(palette="Dark2")+
  #scale_color_viridis(discrete=TRUE, option="D", end=0.5) +
  ggsave("Simulation_Average_Correlation_p.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(av_plot, aes(y=mean, colour=model))+
  geom_boxplot() +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~threshold) +
  labs(colour = "Model")+
  labs(y="Average Correlation with MGMM") +
  scale_colour_brewer(palette="Dark2")+
  #scale_color_viridis(discrete=TRUE, option="D", end=0.5) +
  ggsave("Simulation_Average_Correlation_threshold.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)


########################################################## Plots for comparing to threshold stuff ####################################################

ggplot(filter(av_plot, p==5), aes(y=mean, colour=model))+
  geom_boxplot() +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(~sigma.z) +
  guides(colour="none")+
  labs(colour = "Model")+
  scale_colour_brewer(palette="Dark2")+
  labs(y="Average Correlation with MGMM") +
  ggsave("Simulation_Average_Correlation_for_comparison_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=7, height=8)


ggplot(filter(av_plot, p==5), aes(y=mean, colour=model))+
  geom_boxplot() +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~delta) +
  guides(colour="none")+
  labs(colour = "Model")+
  scale_colour_brewer(palette="Dark2")+
  labs(y="Average Correlation with MGMM") +
  ggsave("Simulation_Average_Correlation_for_comparison_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=7, height=8)


ggplot(filter(av_plot, p==5), aes(y=mean, colour=model))+
  geom_boxplot() +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~p.0) +
  guides(colour="none")+
  labs(colour = "Model")+
  scale_colour_brewer(palette="Dark2")+
  labs(y="Average Correlation with MGMM") +
  ggsave("Simulation_Average_Correlation_for_comparison_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=7, height=8)



ggplot(filter(av_plot, p==5), aes(y=mean, colour=model))+
  geom_boxplot() +
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~threshold) +
  guides(colour="none")+
  labs(colour = "Model")+
  scale_colour_brewer(palette="Dark2")+
  labs(y="Average Correlation with MGMM") +
  ggsave("Simulation_Average_Correlation_for_comparison_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=7, height=8)

################################################################# Table of good correlations for LCRE #########################################################

which(diff_plot$diff>0.0001)
which(diff_plot$diff==0)

filter(diff_plot, diff>0)
save(average_correlation, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/average_correlation_combined_comparing_parameters")
best_LCA=filter(average_correlation, LCRE.CL<LCA & LCA>LCRE.NCL)%>%
  dplyr::select(-index)
best_NCL=filter(average_correlation, LCRE.NCL>LCA & LCRE.NCL>LCRE.CL) %>%
  dplyr::select(-index)
best_CL=filter(average_correlation, LCRE.CL>LCA & LCRE.CL>LCRE.NCL)%>%
  dplyr::select(-index)

av_plot

best_corr_LCA=filter(av_plot, round(LCRE.CL,2)<round(LCA,2) & round(LCA,2)>round(LCRE.NCL,2))%>%
  dplyr::select(-index)
best_corr_LCRE.NCL=filter(av_plot, round(LCRE.NCL,2)>round(LCA,2) & round(LCRE.NCL,2)>round(LCRE.CL,2)) %>%
  dplyr::select(-index)
best_corr_LCRE.CL=filter(av_plot, round(LCRE.CL,2)>round(LCA,2) & round(LCRE.CL,2)>round(LCRE.NCL,2))%>%
  dplyr::select(-index)

best_corr_LCRE.ALL=filter(av_plot, round(LCRE.CL,2)>round(LCA,2) & round(LCRE.NCL,2)>round(LCA,2) )%>%
  dplyr::select(-index)


find_trend=function(best_corr){
  trends=list()
  for(i in 1:5){
    tmp=best_corr %>%
      group_by(best_corr[,(3+i)]) %>%
      summarise(freq=n())
    trends[[i]]=tmp
  }
  return(trends)
}

find_trend(best_corr_LCA)
find_trend(best_corr_LCRE.CL)
find_trend(best_corr_LCRE.NCL)
find_trend(47)
#  group_by(threshold, p, delta, p.0, sigma.z) %>%
  summarise(freq=)
best_corr_LCRE.CL


best_corr_LCA_sigma=filter(av_plot, round(LCRE.CL,2)<round(LCA,2) & round(LCA,2)>round(LCRE.NCL,2))%>%
  dplyr::select(-index) %>%
  filter(sigma.z==2 | sigma.z==4)

latex(as.matrix(best_corr_LCA_sigma), file="~/Documents/Thesis/Images/table_param_best_corr_LCA_sigma")

# case_files=as.tibble(filelist[which(diff_plot$diff>0.0001)])
# 
# param=separate(case_files, col=value, into=c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, "p", NA, "delta", NA, "sigma.z", NA, "p.0", "const_load"), sep="_") %>%
#   mutate(p.0=as.double(substring(p.0, 1, 3)), const_load=as.logical(substring(const_load, 5, 5)), p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z))
# 
# diff_table=filter(diff_plot, diff>0) %>%
#   dplyr::select("Scenario Number"=index, "Difference"=diff, p, delta, sigma.z, p.0, `Constant Loading`)
# diff_table=diff_table[-11,] #as this is same as 14 only worse
# 
# diff_table_LCRE=dplyr::filter(diff_table, `Constant Loading`==FALSE) %>%
#   dplyr::select(`Scenario Number`, Difference, p, delta, sigma.z, p.0)
# 
# diff_table_const_LCRE=filter(diff_table, `Constant Loading`==TRUE) %>%
#   dplyr::select(`Scenario Number`, Difference, p, delta, sigma.z, p.0)
# 

best_corr_all=cbind(best_corr_LCA, best_corr="LCA") %>%
  rbind(cbind(best_corr_LCRE.CL, best_corr="LCRE.CL")) %>%
  rbind(cbind(best_corr_LCRE.NCL, best_corr="LCRE.NCL"))


# library(Hmisc)
# latex(as.matrix(best_LCA), file="~/Documents/Thesis/Images/table_param_good_LCA")
# latex(as.matrix(best_CL), file="~/Documents/Thesis/Images/table_param_good_LCRE.CL")
# latex(as.matrix(best_NCL), file="~/Documents/Thesis/Images/table_param_good_const_LCRE.NCL")


######################### Determine which simulations had the best performance based on BIC ###########################

filelist=
  c("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
 #   "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
   # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
   # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
   # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
#    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
 #   "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
   # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
   # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
   # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
   # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
   # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
   # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
   # "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
  #  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.1",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.3",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.5",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.7",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.9",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.1",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.3",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.5",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.7",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.9",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.1",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.3",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.5",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.7",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.9",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.1",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.3",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.5",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.7",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.9",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.1",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.3",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.5",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.7",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.9",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.1",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.5",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.7",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.9",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.1",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.3",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.5",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.7",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.9",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.1",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.3",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.5",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.7",
  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_results_151218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
#   "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
# "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
# "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
# "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
#"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
#    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
#   "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
# "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
# "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
# "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
# "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
# "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
# "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
# "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
#  "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.9",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.1",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.3",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.5",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.7",
"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_151218_contThresh_results_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.9")
  
#load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA3models_contThresh_results_151218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.7",
#)


load_results_BIC=function(file){
  load(file)
  bic.F=BIC(lca.fit.F)
  bic.T.CL=BIC(lca.fit.T.CL)
  bic.T.NCL=BIC(lca.fit.T.NCL)
  return(tibble(bic.F=bic.F, bic.T.CL=bic.T.CL, bic.T.NCL=bic.T.NCL))
}  

results=lapply(filelist, load_results_BIC)
#save(results, file="~/Documents/Aim_2/homo_sapiens_neutrophil/results_param_BIC")

bic_results=matrix(unlist(results), nrow=200, ncol=3, byrow=TRUE) %>%
  as.tibble() %>%
  dplyr::rename("LCA"=V1, LCRE.CL="V2", LCRE.NCL="V3") %>%
  bind_cols(all_param) %>%
  gather(key="model", value="BIC", LCA, LCRE.CL, LCRE.NCL) %>%
#  mutate(Difference=V2-V1) %>%
  arrange(sigma.z) %>%
  mutate(sigma.z=as.factor(sigma.z), p.0=as.factor(p.0), delta=as.factor(delta), p=as.factor(p)) %>%
  add_column(index=1:600)
bic_results$model=recode(bic_results$model, LCA="LCA",  LCRE.CL="LCRE (CL)", LCRE.NCL="LCRE (no CL)")
bic_results$threshold=recode(bic_results$threshold, varied="Varying over Programs", constant="Constant Over Programs")



#colnames(bic_results)=c("Simple", "Random", "Diff")
# When V1 > V2 (indicating that V2 is the better fit) Diff will be negative. Therefore, when we observe a negative Diff, this tells us that by the BIC, the random effects model was better than the simple model.



################################################################ BIC comparison #######################################################################

ggplot(bic_results, aes(y=BIC, colour=model))+
  geom_boxplot()+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #  geom_hline(yintercept = 0)+
  scale_colour_brewer(palette="Dark2")+
  #geom_hline(yintercept=0)+
  facet_grid(.~sigma.z)+
  labs(y="Difference in BIC (LCRE-LCA)")+
  labs(colour = expression(paste("Model")))+
  ggsave("Simulation_Diff_BIC_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)



ggplot(bic_results, aes(y=BIC, colour=model))+
  geom_boxplot()+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #  geom_hline(yintercept = 0)+
  scale_colour_brewer(palette="Dark2")+
  #geom_hline(yintercept=0)+
  facet_grid(.~delta)+
  labs(y="Difference in BIC (LCRE-LCA)")+
  labs(colour = expression(paste("Model")))+
  ggsave("Simulation_Diff_BIC_delta.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(bic_results, aes(y=BIC, colour=model))+
  geom_boxplot()+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #  geom_hline(yintercept = 0)+
  scale_colour_brewer(palette="Dark2")+
  #geom_hline(yintercept=0)+
  facet_grid(.~p.0)+
  labs(y="Difference in BIC (LCRE-LCA)")+
  labs(colour = expression(paste("Model")))+
  ggsave("Simulation_Diff_BIC_p.0.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=6)

ggplot(bic_results, aes(y=BIC, colour=model))+
  geom_boxplot()+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #  geom_hline(yintercept = 0)+
  scale_colour_brewer(palette="Dark2")+
  #geom_hline(yintercept=0)+
  facet_grid(.~p)+
  labs(y="Difference in BIC (LCRE-LCA)")+
  labs(colour = expression(paste("Model")))+
  ggsave("Simulation_Diff_BIC_p.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
ggplot(bic_results, aes(y=BIC, colour=model))+
  geom_boxplot()+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #  geom_hline(yintercept = 0)+
  scale_colour_brewer(palette="Dark2")+
  #geom_hline(yintercept=0)+
  facet_grid(.~threshold)+
  labs(y="Difference in BIC (LCRE-LCA)")+
  labs(colour = expression(paste("Model")))+
  ggsave("Simulation_Diff_BIC_threshold.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

############################################################## List of BIC where the LCRE was better #################################################
bic_results_list=matrix(unlist(results), nrow=200, ncol=3, byrow=TRUE) %>%
  as.tibble() %>%
  dplyr::rename("LCA"=V1, LCRE.CL="V2", LCRE.NCL="V3") %>%
  bind_cols(all_param) %>%
  #gather(key="model", value="BIC", LCA, LCRE.CL, LCRE.NCL) %>%
  #  mutate(Difference=V2-V1) %>%
  arrange(sigma.z) %>%
  mutate(sigma.z=as.factor(sigma.z), p.0=as.factor(p.0), delta=as.factor(delta), p=as.factor(p)) %>%
  add_column(index=1:200)



BIC_best_LCA=filter(bic_results_list, LCA-LCRE.CL<(-3) & LCA-LCRE.NCL<(-3)) %>%
  dplyr::select(-index)


BIC_best_CL=filter(bic_results_list, LCRE.CL-LCA<(-3) & LCRE.CL-LCRE.NCL<(-3)) %>%
  dplyr::select(-index)

BIC_best_NCL=filter(bic_results_list, LCRE.NCL-LCA<(-3) & LCRE.NCL-LCRE.CL<(-3)) %>%
  dplyr::select(-index)

BIC_equal=(filter(bic_results_list, (LCRE.NCL-LCRE.CL)<3 & (LCRE.NCL-LCRE.CL)>(-3))) %>%
  dplyr::select(-index)


#  library(Hmisc)
# latex(as.matrix(BIC_best_LCA), file="~/Documents/Thesis/Images/table_param_BIC_LCA")
# latex(as.matrix(BIC_best_CL), file="~/Documents/Thesis/Images/table_param_BIC_LCRE.CL")
# latex(as.matrix(BIC_best_NCL), file="~/Documents/Thesis/Images/table_param_BIC_LCRE.NCL")
# latex(as.matrix(BIC_equal), file="~/Documents/Thesis/Images/table_param_BIC_equal")

############################################################### Making individual BIC diff plots ###########################################
# all_param
# 
# bic_random.CLT=as.tibble(filelist[which(bic_results_CLT$Diff<(-3))])
# 
# bic_param=separate(bic_random, col=value, into=c(NA, NA, NA, NA, NA, NA, NA, NA, "p", NA, "delta", NA, "sigma.z", NA, "p.0", "const_load"), sep="_") %>%
#   mutate(p.0=as.double(substring(p.0, 1, 3)), const_load=as.logical(substring(const_load, 5, 5)), p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z)) %>%
#   add_column(BIC=filter(bic_results, Diff<(-3))$Random) %>%
#   dplyr::select(BIC, const_load, p, delta, sigma.z, p.0) %>%
#   spread(const_load, BIC) %>%
#   ungroup()
# 
# colnames(bic_param)=c("p", "delta", "sigma.z", "p.0", "cl.F", "cl.T")
# 
# plot_bic_param=bic_param %>%
#   filter(!is.na(cl.F) & !is.na(cl.T)) %>%
#   mutate(BIC=ifelse(cl.F-cl.T<(-3), cl.F, cl.T), cl=ifelse(cl.F-cl.T<(-3), FALSE, TRUE)) %>%
#   bind_rows(mutate(filter(bic_param, is.na(cl.F)), BIC=cl.T, cl=TRUE)) %>%
#   bind_rows(mutate(filter(bic_param, is.na(cl.T)), BIC=cl.F, cl=FALSE)) %>%
#   arrange(p, delta, sigma.z, p.0)
#   
# random_best_plot=random_best %>%
#   dplyr::select(p, delta, Difference, p.0, sigma.z, const_load)
# 
# index_maker=random_best_plot[,c(1,2,4,5)] %>%
#   group_by(p, delta, p.0, sigma.z) %>%
#   duplicated(.)
# 
# index=vector(length=74) 
# j=0
# for(i in 1:74){
#   if(index_maker[[i]]==FALSE){
#     j=j+1
#   index[[i]]=j 
#   }else{
#     index[[i]]=j
#   } 
#   
# }
# random_best_plot_index=add_column(random_best_plot, index=index) %>%
#   dplyr::mutate(delta=as.factor(paste("delta", delta)), p=as.factor(paste0("p", p)))
#   
# 
# 
# 
# 
# 
# ggplot(random_best_plot_index, aes(x=index, y=Difference, colour=const_load)) +
#   geom_point() +
#   facet_grid(delta~p, labeller=label_both) +
#   theme_bw()+
#   scale_color_brewer(palette="Dark2")+
#   labs(x="Scenario Number", y="Difference in BIC (LCRE-LCA)", colour=expression("Constant\n Loading"))+
#   ggsave("Simulation_Diff_BIC_ByCL.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=6)


# filter(plot_bic_param, is.na(BIC))
# 
# filter(bic_param, cl.F-cl.T<(-3))
# filter(bic_param, cl.F-cl.T>(3))
# 
# plot(bic_param$cl.T, col="blue") +
#   points(bic_param$cl.F, col="red")
# 
# 
# bic_param[15:30,]

########################################### Compare the results between the two measurements ########################################################


best_CL
best_NCL

best=add_column(best_CL, best="CL") %>%
  rbind(add_column(best_NCL, best="NCL")) %>%
  rbind(add_column(best_LCA, best="LCA")) 

best.BIC=add_column(BIC_best_CL, best.BIC="CL") %>%
  rbind(add_column(BIC_best_NCL, best.BIC="NCL")) %>%
  rbind(add_column(BIC_best_LCA, best.BIC="LCA"))%>%
  rbind(add_column(BIC_equal, best.BIC="NCL & CL"))


agreement_BIC_param=inner_join(best, best.BIC, by=c("p", "delta", "sigma.z", "p.0", "threshold"), suffix=c(".corr", ".BIC")) %>%
  dplyr::rename(best_corr=best) %>%
  arrange(sigma.z, p,delta, p.0)

agreement_BIC_param=agreement_BIC_param[,c(4:9, 13, 1:3, 10:12)]
# agreement_BIC_param
# BIC_best_CL
# BIC_best_NCL


#################################################### Expected vs Observed Results ###############################################################

load_results_obvex=function(file){
  load(file)
  fitted.F=lca.fit.F$fitted
  observed.F=lca.fit.F$observed
  fitted.T.CL=lca.fit.T.CL$fitted
  observed.T.CL=lca.fit.T.CL$observed
  fitted.T.NCL=lca.fit.T.NCL$fitted
  observed.T.NCL=lca.fit.T.NCL$observed
  temp=tibble(observed.F=observed.F, observed.T.CL=observed.T.CL,observed.T.NCL=observed.T.NCL ,fitted.F=fitted.F,fitted.T.CL=fitted.T.CL, fitted.T.NCL=fitted.T.NCL,  check=all.equal(observed.F, observed.T.CL, observed.T.NCL)) %>%
    cbind(lca.fit.F$patterns)
  return(temp)
}  

obvex=lapply(filelist, load_results_obvex) 

#save(obvex, file="~/Documents/Aim_2/homo_sapiens_neutrophil/obvex")
# check_observed_obvex=function(obvex){
#   
#   return(filter(obvex, check ==F))
# }
# 
# lapply(obvex, check_observed_obvex)


find_accuracy=function(obvex){
  if(ncol(obvex)==12){
  tmp=dplyr::mutate(obvex, profile=paste0(X1, X2, X3, X4, X5)) %>%
    dplyr::select(observed.F, fitted.F, fitted.T.CL, fitted.T.NCL, profile) %>%
    dplyr::mutate(per.F=(observed.F-fitted.F)/observed.F, per.T.CL=(observed.F-fitted.T.CL)/observed.F, per.T.NCL=(observed.F-fitted.T.NCL)/observed.F) %>%
    dplyr::select(per.F, per.T.CL, per.T.NCL, profile) %>%
    gather(key=method, value=perc, per.F, per.T.CL, per.T.NCL) %>%
    add_column(index=rep(1:nrow(obvex),3))
  } else{
    tmp=dplyr::mutate(obvex, profile=paste0(X1, X2, X3, X4, X5, X6, X7)) %>%
      dplyr::select(observed.F, fitted.F, fitted.T.CL, fitted.T.NCL, profile) %>%
      dplyr::mutate(per.F=(observed.F-fitted.F)/observed.F, per.T.CL=(observed.F-fitted.T.CL)/observed.F, per.T.NCL=(observed.F-fitted.T.NCL)/observed.F) %>%
      dplyr::select(per.F, per.T.CL, per.T.NCL, profile) %>%
      gather(key=method, value=perc, per.F, per.T.CL, per.T.NCL) %>%
      add_column(index=rep(1:nrow(obvex),3))
    
  }
  
  
  return(tmp)
}


find_mean_sd=function(obvex){
     tmp= dplyr::select(obvex, observed.F,  fitted.F, fitted.T.CL, fitted.T.NCL) %>%
       dplyr::mutate(per.F=(observed.F-fitted.F)/observed.F, per.T.CL=(observed.F-fitted.T.CL)/observed.F, per.T.NCL=(observed.F-fitted.T.NCL)/observed.F) %>%
      dplyr::select(per.F, per.T.CL, per.T.NCL)
      mean.per.F=mean(tmp$per.F)
      mean.per.T.CL=mean(tmp$per.T.CL)
      mean.per.T.NCL=mean(tmp$per.T.NCL)
      sd.per.F=sd(tmp$per.F)
      sd.per.T.CL=sd(tmp$per.T.CL)
      sd.per.T.NCL=sd(tmp$per.T.NCL)
      return(c(mean.per.F, mean.per.T.CL,mean.per.T.NCL, sd.per.F, sd.per.T.CL, sd.per.T.NCL))
}



percentage_accurate_obvex=lapply(obvex, find_accuracy)
percentage_mean_sd=lapply(obvex, find_mean_sd)

head(percentage_accurate_obvex[[1]])


plot_mean_sd_per=as.tibble(matrix(unlist(percentage_mean_sd), ncol=6, byrow=TRUE)) %>%
  dplyr::rename(mean.per.F=V1, mean.per.T.CL=V2, mean.per.T.NCL=V3 ,sd.per.F=V4, sd.per.T.CL=V5, sd.per.T.NCL=V6) 

tmp_false=plot_mean_sd_per %>%
  dplyr::select(mean.per.F, sd.per.F) %>%
  add_column(method="LCA") %>%
  dplyr::rename(mean=mean.per.F, sd=sd.per.F) %>%
  cbind(all_param) %>%
  arrange(sigma.z)
  
tmp_true.conLoad=plot_mean_sd_per %>%
  dplyr::select(mean.per.T.CL, sd.per.T.CL) %>%
  add_column(method="LCRE (CL)") %>%
  dplyr::rename(mean=mean.per.T.CL, sd=sd.per.T.CL) %>%
  cbind(all_param) %>%
  arrange(sigma.z)

tmp_true.NonconLoad=plot_mean_sd_per %>%
  dplyr::select(mean.per.T.NCL, sd.per.T.NCL) %>%
  add_column(method="LCRE (No CL)") %>%
  dplyr::rename(mean=mean.per.T.NCL, sd=sd.per.T.NCL) %>%
  cbind(all_param) %>%
  arrange(sigma.z)


plot_mean_sd_method=rbind(tmp_false, tmp_true.conLoad, tmp_true.NonconLoad) %>%
  add_column(index=rep(1:200,3))
head(plot_mean_sd_method)

plot_mean_sd_method$threshold=recode(plot_mean_sd_method$threshold, varied="Varying over Programs", constant="Constant Over Programs")






ggplot(plot_mean_sd_method, aes(index, mean, colour=method, group=method)) +
  #geom_ribbon(aes(ymin=mean+sd, ymax=mean-sd), alpha=0.3)+
  #geom_line(aes(colour=method))+
  geom_boxplot()+
    theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
#  geom_hline(yintercept=0)+
  facet_grid(.~sigma.z, scales="free")+
  scale_fill_brewer(palette = "Dark2")+
  scale_colour_brewer(palette = "Dark2")+
#  scale_colour_manual(values=mycols,name="Model", labels=c("LCA", "LCRE"))+
 # scale_fill_manual(values=mycols,name="Model", labels=c("LCA", "LCRE"))+
  labs(y="Normalised Difference to Observed Results", colour="Model", fill="Model")+
 ggsave("Simulation_ObEx_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(plot_mean_sd_method, aes(index, mean, colour=method, group=method)) +
  geom_boxplot()+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~sigma.z, scales="free")+
  scale_colour_brewer(palette = "Dark2")+
  labs(y="Normalised Difference to Observed Results", colour="Model", fill="Model")+
  ggsave("Simulation_ObEx_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(plot_mean_sd_method, aes(index, mean, colour=method, group=method)) +
  geom_boxplot()+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~delta, scales="free")+
  scale_colour_brewer(palette = "Dark2")+
  labs(y="Normalised Difference to Observed Results", colour="Model", fill="Model")+
  ggsave("Simulation_ObEx_delta.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(plot_mean_sd_method, aes(index, mean, colour=method, group=method)) +
  geom_boxplot()+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~p.0, scales="free")+
  scale_colour_brewer(palette = "Dark2")+
  labs(y="Normalised Difference to Observed Results", colour="Model", fill="Model")+
  ggsave("Simulation_ObEx_p.0.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(plot_mean_sd_method, aes(index, mean, colour=method, group=method)) +
  geom_boxplot()+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~p, scales="free")+
  scale_colour_brewer(palette = "Dark2")+
  labs(y="Normalised Difference to Observed Results", colour="Model", fill="Model")+
  ggsave("Simulation_ObEx_p.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

ggplot(plot_mean_sd_method, aes(index, mean, colour=method, group=method)) +
  geom_boxplot()+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~threshold, scales="free")+
  scale_colour_brewer(palette = "Dark2")+
  labs(y="Normalised Difference to Observed Results", colour="Model", fill="Model")+
  ggsave("Simulation_ObEx_threshold.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

plot_perc=function(percentage_accurate_obvex){
  ggplot(percentage_accurate_obvex, aes(x=profile, y=perc, colour=method, group=method)) +
    geom_point()+
    #geom_line(position=position_dodge(width=0.7))+
    theme_bw() +
    theme(axis.text.x = element_text(angle = 90, hjust = 1))+
    geom_hline(yintercept=0)+
#    scale_colour_discrete(labels=c("LCA", "LCRE"))+
    scale_color_brewer(palette="Dark2", labels=c("LCA", "LCRE (CL)", "LCRE (No CL)"))+
    labs(x="Profile", y="Normalised Difference to Observed Results", colour="Method")
}
plot_perc(percentage_accurate_obvex[[20]])


scenarios=all_param %>%
  mutate(scenario=paste("Scenario Parameters: P", p, "Delta", delta, "Sigma.z", sigma.z,"P.0", p.0, sep=" ")) %>%
  dplyr::select(scenario)

for(i in 1:200){
plot_perc(percentage_accurate_obvex[[i]])+
  labs(title=as.character(scenarios[i,1]))+
  ggsave(paste0("Simulation_ObEx_Difference_byParam_", scenarios[i,1], ".jpeg"),path="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/obex_results/", device="jpeg", width=16, height=8)
}



############################################################ Find best mean for each scenario ################################################


plot_mean_sd_method_list=plot_mean_sd_per %>%
  cbind(all_param) %>%
  mutate(mean.per.F=abs(mean.per.F), mean.per.T.CL=abs(mean.per.T.CL), mean.per.T.NCL=abs(mean.per.T.NCL))

best_obvex_F=filter(plot_mean_sd_method_list, mean.per.F<mean.per.T.CL, mean.per.F<mean.per.T.NCL)
best_obvex_T.CL=filter(plot_mean_sd_method_list, mean.per.T.CL<mean.per.F, mean.per.T.CL<mean.per.T.NCL)
best_obvex_T.NCL=filter(plot_mean_sd_method_list, mean.per.T.NCL<mean.per.T.CL, mean.per.T.NCL<mean.per.F)

best_obvex=add_column(best_obvex_F, best_obvex="LCA") %>%
  rbind(add_column(best_obvex_T.CL, best_obvex="CL")) %>%
  rbind(add_column(best_obvex_T.NCL, best_obvex="NCL")) %>%
  dplyr::select(mean.per.F, mean.per.T.CL, mean.per.T.NCL, p, delta, sigma.z, p.0,threshold, best_obvex) %>%
  dplyr::rename(LCA.obvex=mean.per.F, LCRE.CL.obvex=mean.per.T.CL, LCRE.NCL.obvex=mean.per.T.NCL) %>%
  mutate(p=as.factor(p), delta=as.factor(delta), p.0=as.factor(p.0), sigma.z=as.factor(sigma.z))

###################################################### Add Best Obvex to measurement summary #####################################################


agreement_BIC_param_obvex=inner_join(agreement_BIC_param, best_obvex, by=c("p", "delta", "sigma.z", "p.0", "threshold")) %>%
  arrange(sigma.z, p,delta, p.0)

agreement_BIC_param_obvex=agreement_BIC_param_obvex[,c(1:7, 17, 8:16)]

# agreement_BIC_param_obvex

######################################################### Measure difference MGMM and LCA/LCRE ###############################################
filelist



library(mclust)
get_diff_post=function(file){
  load(file)
  
  # details=separate(as.tibble(file), col=value, into=c(NA, NA, NA, NA, NA, NA, NA, NA,NA, "p", NA,"delta", NA, "sigma.z", NA, "p.0"), sep="_") %>%
  #   mutate(p.0=as.double((p.0)),p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z))
  # #threshold=2*(1:details$p)/details$p-1
  #y=matrix(0,3000,details$p)
  #y[x.sort>outer(rep(1,3000),threshold)]=1
  #y=data.frame(x.sort, y)
  
  details=separate(as.tibble(filelist[1:100]), col=value, into=c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, "p", NA, "delta", NA, "sigma.z", NA, "p.0"), sep="_") %>%
    mutate(p.0=as.double(p.0), p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z)) %>%
    cbind(threshold="varied")
  
  tmp=separate(as.tibble(filelist[101:200]), col=value, into=c(NA, NA,NA, NA, NA, NA, NA, NA, NA, NA, NA, "p", NA, "delta", NA, "sigma.z", NA, "p.0"), sep="_") %>%
    mutate(p.0=as.double(p.0), p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z)) %>%
    cbind(threshold="constant")
  
  details=rbind(details, tmp)
  
  LCA_post=postClassProbs(lca.fit.F)
  y.LCA_post=merge(y.sort, LCA_post)$'Class 1'
  LCRE.CL_post=postClassProbs(lca.fit.T.CL)
  y.LCRE.CL_post=merge(y.sort, LCRE.CL_post)$'Class 1'
  LCRE.NCL_post=postClassProbs(lca.fit.T.NCL)
  y.LCRE.NCL_post=merge(y.sort, LCRE.NCL_post)$'Class 1'
  
  gmm_post=predict(gmm.fit)$z[,1]
  if(cor(y.LCA_post, gmm_post)<0) y.LCA_post= 1-y.LCA_post
  if(cor(y.LCRE.CL_post, gmm_post)<0) y.LCRE.CL_post= 1-y.LCRE.CL_post
  if(cor(y.LCRE.NCL_post, gmm_post)<0) y.LCRE.NCL_post= 1-y.LCRE.NCL_post
  
  diff_post_LCA=(gmm_post-y.LCA_post)^2
  diff_post_LCRE.CL=(gmm_post-y.LCRE.CL_post)^2
  diff_post_LCRE.NCL=(gmm_post-y.LCRE.NCL_post)^2
  diff_post=tibble(LCA=diff_post_LCA, LCRE.CL=diff_post_LCRE.CL, LCRE.NCL=diff_post_LCRE.NCL)
  return(diff_post)
}


get_diff_post(filelist[1])
warnings()
diff=lapply(filelist, get_diff_post)
#save(diff, file="~/Documents/Aim_2/homo_sapiens_neutrophil/diff_post")

get_measure_sqrt=function(diff_post){
  temp=c(sum(diff_post[,1]), sum(diff_post[,2]), sum(diff_post[,3]))
  measure=sqrt(temp/3000)
  return(measure)
}  

measure_sqrt= matrix(unlist(lapply(diff, get_measure_sqrt)), nrow=200, ncol=3, byrow=TRUE) %>%
  as.tibble() %>%
  dplyr::rename(LCA=V1, LCRE.CL=V2, LCRE.NCL=V3) %>%
 # gather(method, gmm_comp, LCA, LCRE.CL, LCRE.NCL) %>%
  cbind(all_param) %>%
  arrange(sigma.z) %>%
  add_column(index=1:(200)) %>%
  mutate(sigma.z=as.factor(sigma.z))
#measure_sqrt$method=recode(measure_sqrt$method, LCA="LCA", LCRE.CL="LCRE (CL)", LCRE.NCL="LCRE (no CL)")
measure_sqrt$threshold=recode(measure_sqrt$threshold, varied="Varying over Programs", constant="Constant Over Programs")

measure_sqrt_var_thresh=cbind(measure_sqrt)
save(measure_sqrt_var_thresh, file="sqrt_diff_plot_simulation_fixed_thresh")

load("sqrt_diff_plot_simulation_fixed_thresh")



appendix_measure_sqrt=add_column(measure_sqrt_var_thresh) %>%
  dplyr::select(p, delta, sigma.z, p.0, threshold, LCA, LCRE.CL, LCRE.NCL) %>%
  mutate(LCA=round(LCA,5),
         LCRE.CL=round(LCRE.CL,5),
         LCRE.NCL=round(LCRE.NCL,5))


latex(as.matrix(appendix_measure_sqrt), booktabs=T, file="~/Documents/Thesis/thesis_finale/Images/Appendix_B_2", longtable=T)



a=ggplot(measure_sqrt, aes(x=LCRE.CL, y=LCA, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  # theme(axis.title.y = element_blank(),   axis.text.y = element_blank(),  axis.ticks = element_blank())+
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  #labs(y="Average Correlation with MGMM") +
  scale_colour_brewer(palette="Set1")+
  geom_abline(aes(intercept=0, slope=1))
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

b=ggplot(measure_sqrt, aes(x=LCRE.NCL, y=LCA, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  geom_abline(aes(intercept=0, slope=1))+
  #labs(y="Average Correlation with MGMM") +
  scale_colour_brewer(palette="Set1")
#  ggsave("Simulation_Average_Correlation_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)


c=ggplot(measure_sqrt, aes(x=LCRE.NCL, y=LCRE.CL, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  #  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  geom_abline(aes(intercept=0, slope=1))+
  #labs(y="Average Correlation with MGMM") +
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
fig=grid_arrange_shared_legend(b,a,c , ncol = 2, nrow = 2, position="bottom") 
ggsave("Simulation_Diff_Post_Prob_sigmaz_pairs.jpeg",plot=fig, path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)











measure_sqrt





ggplot(measure_sqrt, aes(y=gmm_comp, colour=method))+
  geom_boxplot()+
  theme_bw()+
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  facet_grid(.~sigma.z, scale="free") +
  labs(y="Difference in Posterior Probability compared with GMM")+
  labs(colour = "Method")+
  scale_colour_brewer(palette = "Dark2")+
  ggsave("Straight_Diff_Post_Prob.sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=6)

  ggplot(measure_sqrt, aes(y=gmm_comp, colour=method))+
    geom_boxplot()+
    theme_bw()+
    theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
    facet_grid(.~delta, scale="free") +
    labs(y="Difference in Posterior Probability compared with GMM")+
    labs(colour = "Method")+
    scale_colour_brewer(palette = "Dark2")+
  ggsave("Straight_Diff_Post_Prob.delta.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=6)
  
  ggplot(measure_sqrt, aes(y=gmm_comp, colour=method))+
    geom_boxplot()+
    theme_bw()+
    theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
    facet_grid(.~p.0, scale="free") +
    labs(y="Difference in Posterior Probability compared with GMM")+
    labs(colour = "Method")+
    scale_colour_brewer(palette = "Dark2")+
  ggsave("Straight_Diff_Post_Prob.p.0.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=6)
  
  ggplot(measure_sqrt, aes(y=gmm_comp, colour=method))+
    geom_boxplot()+
    theme_bw()+
    theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
    facet_grid(.~p, scale="free") +
    labs(y="Difference in Posterior Probability compared with GMM")+
    labs(colour = "Method")+
    scale_colour_brewer(palette = "Dark2")+
  ggsave("Straight_Diff_Post_Prob.p.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=6)
  
  ggplot(measure_sqrt, aes(y=gmm_comp, colour=method))+
    geom_boxplot()+
    theme_bw()+
    theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
    facet_grid(.~threshold, scale="free") +
    labs(y="Difference in Posterior Probability compared with GMM")+
    labs(colour = "Method")+
    scale_colour_brewer(palette = "Dark2")+
    ggsave("Straight_Diff_Post_Prob.threshold.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=6)
  
  ####################################################### Which was best of Differences in Post Prob ###############################################################
  
  measure_sqrt_list=matrix(unlist(lapply(diff, get_measure_sqrt)), nrow=200, ncol=3, byrow=TRUE) %>%
    as.tibble() %>%
    dplyr::rename(LCA=V1, LCRE.CL=V2, LCRE.NCL=V3) %>%
  #  gather(method, gmm_comp, LCA, LCRE.CL, LCRE.NCL) %>%
    cbind(all_param) %>%
    arrange(sigma.z) %>%
    mutate(sigma.z=as.factor(sigma.z), delta=as.factor(delta), p=as.factor(p), p.0=as.factor(p.0))
  
# Fix!  

  save(measure_sqrt_list, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/measure_sqrt_list_combined_comparing_parameters")
  best_post_diff_LCA=filter(measure_sqrt_list, (LCA<LCRE.CL)==TRUE, (LCA<LCRE.NCL)==TRUE)
  best_post_diff_LCRE.CL=filter(measure_sqrt_list, (LCRE.CL<LCA)==TRUE, (LCRE.CL<LCRE.NCL)==TRUE)
  best_post_diff_LCRE.NCL=filter(measure_sqrt_list, (LCRE.NCL<LCRE.CL)==TRUE, (LCRE.NCL<LCA)==TRUE)
  
  
  best_diff_LCA=filter(measure_sqrt, round(LCRE.CL,2)>round(LCA,2) & round(LCA,2)<round(LCRE.NCL,2))%>%
    dplyr::select(-index)
  best_diff_LCRE.NCL=filter(measure_sqrt, round(LCRE.NCL,2)<round(LCA,2) & round(LCRE.NCL,2)<round(LCRE.CL,2)) %>%
    dplyr::select(-index)
  best_diff_LCRE.CL=filter(measure_sqrt, round(LCRE.CL,2)<round(LCA,2) & round(LCRE.CL,2)<round(LCRE.NCL,2))%>%
    dplyr::select(-index)
  
  best_diff_LCRE.ALL=filter(measure_sqrt, round(LCRE.CL,2)>round(LCA,2) & round(LCRE.NCL,2)>round(LCA,2) )%>%
    dplyr::select(-index)
  
  
  find_trend=function(best_corr){
    trends=list()
    for(i in 1:5){
      tmp=best_corr %>%
        group_by(best_corr[,(3+i)]) %>%
        summarise(freq=n())
      trends[[i]]=tmp
    }
    return(trends)
  }
  
  find_trend(best_diff_LCA)
  find_trend(best_diff_LCRE.CL)
  find_trend(best_diff_LCRE.NCL)
  
  best_diff_all=cbind(best_diff_LCA, best_diff="LCA") %>%
    rbind(cbind(best_diff_LCRE.CL, best_diff="LCRE.CL")) %>%
    rbind(cbind(best_diff_LCRE.NCL, best_diff="LCRE.NCL")) %>%
    mutate(p=as.factor(p), delta=as.factor(delta), sigma.z=as.factor(sigma.z), p.0=as.factor(p.0))
  
  is.factor(best_diff_all$p)
  
  best_all=full_join(best_corr_all, best_diff_all, by=c("p", "delta", "sigma.z", "p.0", "threshold"), suffix=c("_corr", "_diff"))
  
  save(best_all, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/best_table_diff_corr")
  ################################################# Add to measurement summary ##################################################################
  
  best_post_diff=add_column(best_post_diff_LCA, best_diff="LCA") %>%
    rbind(add_column(best_post_diff_LCRE.CL, best_diff="CL")) %>%
    rbind(add_column(best_post_diff_LCRE.NCL, best_diff="NCL")) %>%
    dplyr::rename(LCA.diff=LCA, LCRE.CL.diff=LCRE.CL, LCRE.NCL.diff=LCRE.NCL)
  
  agreement_BIC_param_obvex_diff=inner_join(agreement_BIC_param_obvex, best_post_diff, by=c("p", "delta", "sigma.z", "p.0", "threshold")) %>%
      arrange(sigma.z, p,delta, p.0)

  agreement_BIC_param_obvex_diff=agreement_BIC_param_obvex_diff[,c(1:8, 21, 9:20)]

agreement_freq=  group_by(agreement_BIC_param_obvex_diff, best_corr, best.BIC, best_obvex, best_diff) %>%
    summarise(freq=n())
#save(agreement_freq, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/agreement_freq_changingThresh")
(data.frame(agreement_freq))

    ############################################################ Sum of Scores ################################################################

find_sum_of_scores=function(file){
  load(file)
  #details=separate(as.tibble(file), col=value, into=c(NA, NA, NA, NA, NA, NA, NA, NA, NA, "p", NA,"delta", NA, "sigma.z", NA, "p.0"), sep="_") %>%
    #mutate(p.0=as.double((p.0)),p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z))
  # details=separate(as.tibble(filelist[1:100]), col=value, into=c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, "p", NA, "delta", NA, "sigma.z", NA, "p.0"), sep="_") %>%
  #   mutate(p.0=as.double(p.0), p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z)) %>%
  #   cbind(threshold="varied")
  # 
  # tmp=separate(as.tibble(filelist[101:200]), col=value, into=c(NA, NA,NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, "p", NA, "delta", NA, "sigma.z", NA, "p.0"), sep="_") %>%
  #   mutate(p.0=as.double(p.0), p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z)) %>%
  #   cbind(threshold="constant")
  
  #details=rbind(details, tmp)
  
  temp=rowSums(y.sort)
  gmm_post=predict(gmm.fit)$z[,1]
  if(cor(temp, gmm_post)<0) gmm_post=predict(gmm.fit)$z[,2]
  return(cor(temp, gmm_post))
}


cor_sum=lapply(filelist, find_sum_of_scores)

#save(cor_sum, file="~/Documents/Aim_2/homo_sapiens_neutrophil/cor_sum")
get_last_correlation=function(correlation){
  last_cor=correlation[20,2:4] 
  return(abs(last_cor))
}


sum_scores_compare=matrix(unlist(lapply(correlation, get_last_correlation)), nrow=200, ncol=3, byrow=TRUE) %>%
  as.tibble() %>%
  dplyr::rename(LCA=V1, "LCRE (CL)"=V2, "LCRE (No CL)"=V3) %>%
  add_column('Sum of Scores'=unlist(cor_sum)) %>%
  # gather(method, correlation, LCA, "LCRE (CL)", "LCRE (No CL)", 'Sum of Scores') %>%
   cbind(all_param) %>%
   arrange(sigma.z) %>%
   add_column(index=1:(200)) %>%
  mutate(sigma.z=as.factor(sigma.z), delta=as.factor(delta), p=as.factor(p), p.0=as.factor(p.0)) 

sum_scores_compare$threshold=recode(sum_scores_compare$threshold, varied="Varying over Programs", constant="Constant Over Programs")

save(sum_scores_compare, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/combined_comparing_parameters_sumofscores")

load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/combined_comparing_parameters_sumofscores")


sum_scores_appendix=sum_scores_compare %>%
  dplyr::select(p, delta, sigma.z, p.0, threshold, LCA, `LCRE (CL)`, `LCRE (No CL)`, `Sum of Scores`) %>%
  mutate(LCA=round(LCA, 5), `LCRE (CL)`=round(`LCRE (CL)`, 5), `LCRE (No CL)`=round(`LCRE (No CL)`, 5), `Sum of Scores`=round(`Sum of Scores`,5))

latex(as.matrix(sum_scores_appendix), booktabs=T, file="~/Documents/Thesis/thesis_finale/Images/Appendix_B_4", longtable=T)



load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/combined_comparing_parameters_sumofscores")
ggplot(sum_scores_compare, aes(y=correlation, colour=method, group=method)) +
  geom_boxplot()+
  theme_bw() +
  theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  labs(y="Correlation to MGMM", colour="Method")+
  facet_grid(.~sigma.z, scale="free")+
  scale_colour_brewer(palette = "Dark2")+
  ggsave("Sum_Scores_compare_corr_sigmaz.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

  ggplot(sum_scores_compare, aes(y=correlation, colour=method, group=method)) +
    geom_boxplot()+
    theme_bw() +
    theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
    labs(y="Correlation to MGMM", colour="Method")+
    facet_grid(.~delta, scale="free")+
    scale_colour_brewer(palette = "Dark2")+
  ggsave("Sum_Scores_compare_corr_delta.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
  
  ggplot(sum_scores_compare, aes(y=correlation, colour=method, group=method)) +
    geom_boxplot()+
    theme_bw() +
    theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
    labs(y="Correlation to MGMM", colour="Method")+
    facet_grid(.~p.0, scale="free")+
    scale_colour_brewer(palette = "Dark2")+
  ggsave("Sum_Scores_compare_corr_p.0.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=8)

  ggplot(sum_scores_compare, aes(y=correlation, colour=method, group=method)) +
    geom_boxplot()+
    theme_bw() +
    theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
    labs(y="Correlation to MGMM", colour="Method")+
    facet_grid(.~p, scale="free")+
    scale_colour_brewer(palette = "Dark2")+
  ggsave("Sum_Scores_compare_corr_p.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
  
  ggplot(sum_scores_compare, aes(y=correlation, colour=method, group=method)) +
    geom_boxplot()+
    theme_bw() +
    theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
    labs(y="Correlation to MGMM", colour="Method")+
    facet_grid(.~threshold, scale="free")+
    scale_colour_brewer(palette = "Dark2")+
    ggsave("Sum_Scores_compare_corr_threshold.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
  ########################################################## Sum of scores paired plots #####################################################################
  sum_scores_compare$`Sum of Scores`
a=ggplot(sum_scores_compare, aes(x=LCA, y=`Sum of Scores`, colour=sigma.z))+
    geom_point() +
    theme_bw() +
    # theme(axis.title.y = element_blank(),   axis.text.y = element_blank(),  axis.ticks = element_blank())+
    #guides(colour="none")+
    #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
    #facet_grid(~sigma.z) +
    labs(colour = expression(sigma[z]))+
    labs(y="Correlation with MGMM\n for Sum of Scores", x="Correlation with MGMM\n for LCA") +
    scale_colour_brewer(palette="Set1")+
    geom_abline(aes(intercept=0, slope=1))

b=ggplot(sum_scores_compare, aes(x=`LCRE (CL)`, y=`Sum of Scores`, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  # theme(axis.title.y = element_blank(),   axis.text.y = element_blank(),  axis.ticks = element_blank())+
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  labs(y=" Correlation with MGMM\n for Sum of Scores", x=" Correlation with MGMM\n for LCRE (CL)") +
  scale_colour_brewer(palette="Set1")+
  geom_abline(aes(intercept=0, slope=1))


c=ggplot(sum_scores_compare, aes(x=`LCRE (No CL)`, y=`Sum of Scores`, colour=sigma.z))+
  geom_point() +
  theme_bw() +
  # theme(axis.title.y = element_blank(),   axis.text.y = element_blank(),  axis.ticks = element_blank())+
  #guides(colour="none")+
  #theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
  #facet_grid(~sigma.z) +
  labs(colour = expression(sigma[z]))+
  labs(y="Correlation with MGMM\n for Sum of Scores", x="Correlation with MGMM\n for LCRE (NCL)") +
  scale_colour_brewer(palette="Set1")+
  geom_abline(aes(intercept=0, slope=1))
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
ggsave("Simulation_SumofScores_Post_Prob_sigmaz_pairs.jpeg",plot=fig, path="~/Documents/Thesis/thesis_finale/Images/", device="jpeg", width=8, height=8)

sum_scores_compare_easynames=dplyr::rename(sum_scores_compare, "LCRE.CL"=`LCRE (CL)`, LCRE.NCL=`LCRE (No CL)`, sum_scores=`Sum of Scores`)

best_sum_scores=filter(sum_scores_compare_easynames, round(sum_scores,2)>round(LCA, 2) & round(sum_scores,2)>round(LCRE.CL, 2) & round(sum_scores,2)>round(LCRE.NCL, 2)) %>%
  dplyr::select(-index)


best_diff_LCRE.NCL=filter(measure_sqrt, round(LCRE.NCL,2)<round(LCA,2) & round(LCRE.NCL,2)<round(LCRE.CL,2)) %>%
  dplyr::select(-index)
best_diff_LCRE.CL=filter(measure_sqrt, round(LCRE.CL,2)<round(LCA,2) & round(LCRE.CL,2)<round(LCRE.NCL,2))%>%
  dplyr::select(-index)

best_diff_LCRE.ALL=filter(measure_sqrt, round(LCRE.CL,2)>round(LCA,2) & round(LCRE.NCL,2)>round(LCA,2) )%>%
  dplyr::select(-index)


find_trend=function(best_corr){
  trends=list()
  for(i in 1:5){
    tmp=best_corr %>%
      group_by(best_corr[,(4+i)]) %>%
      summarise(freq=n())
    trends[[i]]=tmp
  }
  return(trends)
}

find_trend(best_sum_scores)
find_trend(best_diff_LCRE.CL)
find_trend(best_diff_LCRE.NCL)

best_diff_all=cbind(best_diff_LCA, best_diff="LCA") %>%
  rbind(cbind(best_diff_LCRE.CL, best_diff="LCRE.CL")) %>%
  rbind(cbind(best_diff_LCRE.NCL, best_diff="LCRE.NCL")) %>%
  mutate(p=as.factor(p), delta=as.factor(delta), sigma.z=as.factor(sigma.z), p.0=as.factor(p.0))

is.factor(best_diff_all$p)

best_all=full_join(best_corr_all, best_diff_all, by=c("p", "delta", "sigma.z", "p.0", "threshold"), suffix=c("_corr", "_diff"))



######################################################### Best calculation of binding based on p.0 ############################################################
  cols=c("#1B9E77" ,"#D95F02" ,"#7570B3" ,"#66A61E")
  
    get_posterior_prob=function(file){
    load(file)
    
    # details=separate(as.tibble(file), col=value, into=c(NA, NA, NA, NA, NA, NA, NA, NA,NA, "p", NA,"delta", NA, "sigma.z", NA, "p.0"), sep="_") %>%
    #   mutate(p.0=as.double((p.0)),p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z))
    # #threshold=2*(1:details$p)/details$p-1
    #y=matrix(0,3000,details$p)
    #y[x.sort>outer(rep(1,3000),threshold)]=1
    #y=data.frame(x.sort, y)
    details=separate(as.tibble(filelist[1:100]), col=value, into=c(NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,  "p", NA, "delta", NA, "sigma.z", NA, "p.0"), sep="_") %>%
      mutate(p.0=as.double(p.0), p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z)) %>%
      cbind(threshold="varied")
    
    tmp=separate(as.tibble(filelist[101:200]), col=value, into=c(NA, NA,NA, NA, NA, NA, NA, NA, NA, NA, NA, "p", NA, "delta", NA, "sigma.z", NA, "p.0"), sep="_") %>%
      mutate(p.0=as.double(p.0), p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z)) %>%
      cbind(threshold="constant")
    
    details=rbind(details, tmp)
    
    LCA_post=postClassProbs(lca.fit.F)
    y.LCA_post=merge(y.sort, LCA_post)$'Class 1'
    LCRE.CL_post=postClassProbs(lca.fit.T.CL)
    y.LCRE.CL_post=merge(y.sort, LCRE.CL_post)$'Class 1'
    LCRE.NCL_post=postClassProbs(lca.fit.T.NCL)
    y.LCRE.NCL_post=merge(y.sort, LCRE.NCL_post)$'Class 1'
    
    gmm_post=predict(gmm.fit)$z[,1]
    if(cor(y.LCA_post, gmm_post)<0) y.LCA_post= 1-y.LCA_post
    if(cor(y.LCRE.CL_post, gmm_post)<0) y.LCRE.CL_post= 1-y.LCRE.CL_post
    if(cor(y.LCRE.NCL_post, gmm_post)<0) y.LCRE.NCL_post= 1-y.LCRE.NCL_post
    
    post_prob=tibble(LCA=y.LCA_post, LCRE.CL=y.LCRE.CL_post, LCRE.NCL=y.LCRE.NCL_post, GMM=gmm_post) 
      
    return(post_prob)
  }
  
  
  averages=(lapply(filelist,get_posterior_prob)) 
  
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
     dplyr::mutate(check=(abs(GMM-binding_number)>abs(GMM-3000+binding_number))) %>%
    # binding_genes
    dplyr::mutate(LCA=ifelse(abs(GMM-binding_number)<abs(GMM-3000+binding_number), LCA, 3000-LCA ), 
                  LCRE.CL=ifelse(abs(GMM-binding_number)<abs(GMM-3000+binding_number), LCRE.CL, 3000-LCRE.CL ), 
                  LCRE.NCL=ifelse(abs(GMM-binding_number)<abs(GMM-3000+binding_number), LCRE.NCL, 3000-LCRE.NCL ),
                  GMM=ifelse(abs(GMM-binding_number)<abs(GMM-3000+binding_number), GMM, 3000-GMM ))

binding_genes
  
  
  plot_binding_goodness=binding_genes %>%
    dplyr::mutate(LCA=LCA/binding_number, LCRE.CL=LCRE.CL/binding_number, LCRE.NCL=LCRE.NCL/binding_number, GMM=GMM/binding_number) %>%
    dplyr::select(-binding_number) %>%
    gather(key=method, value=proportion, LCA, LCRE.CL, LCRE.NCL, GMM) %>%
    dplyr::mutate(p=as.factor(p), delta=as.factor(delta), sigma.z=as.factor(sigma.z), p.0=as.factor(p.0))
  
  plot_binding_goodness$method=recode_factor(plot_binding_goodness$method, LCA="LCA", LCRE.CL="LCRE (CL)", LCRE.NCL="LCRE (no CL)", MGMM="MGMM")
  plot_binding_goodness$threshold=recode(plot_binding_goodness$threshold, varied="Varying over Programs", constant="Constant Over Programs")
  
  plot_binding_goodness_varThresh=plot_binding_goodness 
  save(plot_binding_goodness_varThresh, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/plot_p.0_estimation_varThresh")
  
  ggplot(plot_binding_goodness, aes(y=proportion, colour=method)) +
    geom_boxplot() +
    theme_bw()+
    facet_grid(.~sigma.z) +
    geom_hline(yintercept=1)+
    theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
    labs(y="Proportion of Actual Binding Number", colour="Model")+
    scale_colour_manual(values=cols)+
    ggsave("Proportion_accuracy_var_thresh_sigma.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
  
  ggplot(plot_binding_goodness, aes(y=proportion, colour=method)) +
    geom_boxplot() +
    theme_bw()+
    facet_grid(.~delta) +
    geom_hline(yintercept=1)+
    theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
    labs(y="Proportion of Actual Binding Number", colour="Model")+
    scale_colour_manual(values=cols)+
    ggsave("Proportion_accuracy_var_thresh_delta.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
  
  ggplot(plot_binding_goodness, aes(y=proportion, colour=method)) +
    geom_boxplot() +
    theme_bw()+
    facet_grid(.~p.0) +
    geom_hline(yintercept=1)+
    theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
    labs(y="Proportion of Actual Binding Number", colour="Model")+
    scale_colour_manual(values=cols)+
    ggsave("Proportion_accuracy_var_thresh_p.0.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
  
  ggplot(plot_binding_goodness, aes(y=proportion, colour=method)) +
    geom_boxplot() +
    theme_bw()+
    facet_grid(.~p) +
    geom_hline(yintercept=1)+
    theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
    labs(y="Proportion of Actual Binding Number", colour="Model")+
    scale_colour_manual(values=cols)+
    ggsave("Proportion_accuracy_var_thresh_p.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)

  
  ggplot(plot_binding_goodness, aes(y=proportion, colour=method)) +
    geom_boxplot() +
    theme_bw()+
    facet_grid(.~threshold) +
    geom_hline(yintercept=1)+
    theme(axis.title.x = element_blank(),   axis.text.x = element_blank(),  axis.ticks = element_blank())+
    labs(y="Proportion of Actual Binding Number", colour="Model")+
    scale_colour_manual(values=cols)+
    ggsave("Proportion_accuracy_var_thresh_thresholds.jpeg",path="~/Documents/Thesis/Images/", device="jpeg", width=8, height=8)
  
  filter(plot_binding_goodness, method=="GMM", proportion>1)
  
  
  ################################################ Comparing to ave thresholds ######################################################
  

  
  
