library(randomLCA)

filelist_lca.F=
  c("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.9")

load(filelist_lca.F[100])
lca.F_record_1class
lca.F_record_2class

filelist_lca.T.CL=
  c("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.9")

filelist_lca.T.NCL=
  c("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_conthresh_noclusters_221218_lca_sim_p_7_sigma.z_1_p.0_0.9")
load(filelist_lca.F[[1]])
# results_lca.F_twoclass=results_lca.F
# results_lca.CL_twoclass=results_lca.CL
# results_lca.NCL_twoclass=results_lca.NCL

# save(results_lca.F_twoclass, results_lca.CL_twoclass, results_lca.NCL_twoclass, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/BIC_raw_twoclass")


library(tidyverse)
library(randomLCA)

load_results_BIC=function(file, method){
  load(file)
  if(method=="LCA"){
    bic_1class=sapply(lca.F_record_1class,function(x){
      if(is.logical(x)){
        return(NA)
      }else{
        BIC(x)
      }
    }, simplify = T)
    
    bic_2class=sapply(lca.F_record_2class,function(x){
      if(is.logical(x)){
        return(NA)
      }else{
        BIC(x)
      }
    }, simplify = T)
  }else if(method=="LCRE.CL"){
    bic_1class=sapply(lca.T.CL_record_1class, function(x){
      if(is.logical(x)){
        return(NA)
      }else{
        BIC(x)
      }
    }, simplify=T)    
    
    bic_2class=sapply(lca.T.CL_record_2class, function(x){
      if(is.logical(x)){
        return(NA)
      }else{
        BIC(x)
      }
    }, simplify=T)    
  }else if(method=="LCRE.NCL"){
    bic_1class=sapply(lca.T.NCL_record_1class, function(x){
      if(is.logical(x)){
        return(NA)
      }else{
        BIC(x)
      }
    }, simplify = T)
    
    bic_2class=sapply(lca.T.NCL_record_2class, function(x){
      if(is.logical(x)){
        return(NA)
      }else{
        BIC(x)
      }
    }, simplify = T)
  }
  return(tibble(oneclass=unlist(bic_1class), twoclass=unlist(bic_2class)))
}  

results_lca.F_BIC=lapply(filelist_lca.F, load_results_BIC, method="LCA")
results_lca.CL_BIC=lapply(filelist_lca.T.CL, load_results_BIC, method="LCRE.CL")
results_lca.NCL_BIC=lapply(filelist_lca.T.NCL, load_results_BIC, method="LCRE.NCL")

# save(results_lca.F_oneclass, results_lca.CL_oneclass, results_lca.NCL_oneclass, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/BIC_raw_oneclass")

all_param=separate(as.tibble(filelist_lca.F[1:50]), col=value, into=c(NA, NA,NA, NA, NA, NA, NA, NA, NA, NA, NA, "p", NA, "sigma.z", NA, "p.0"), sep="_") %>%
  mutate(p.0=as.double(p.0), p=as.integer(p), sigma.z=as.double(sigma.z)) %>%
  cbind(threshold="varied")

tmp=separate(as.tibble(filelist_lca.F[51:100]), col=value, into=c(NA,NA, NA,NA,NA, NA, NA, NA, NA, NA, NA, NA, "p", NA, "sigma.z", NA, "p.0"), sep="_") %>%
  mutate(p.0=as.double(p.0), p=as.integer(p), sigma.z=as.double(sigma.z)) %>%
  cbind(threshold="constant")

all_param=rbind(all_param, tmp)
#save(all_param, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/params_oneclass")

# load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/params_oneclass")
# load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/BIC_raw_oneclass")
# load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/BIC_raw_twoclass")


get_diff_BIC=function(results_BIC){
  tmp=lapply(results_BIC, function(x){
    mutate(x, diff=oneclass-twoclass) %>%
      dplyr::select(diff)
  })
  tmp=matrix(unlist(tmp), ncol=20, nrow=100, byrow=TRUE)
  return(tmp)
}



results_lca.F=get_diff_BIC(results_lca.F_BIC)
results_lca.F_class=as.tibble(cbind(results_lca.F, oneclass=rowSums(results_lca.F[,c(1:20)]<3), twoclass=rowSums(results_lca.F[,c(1:20)]>3))) %>%
    dplyr::select("oneclass_F"=oneclass) %>%
  cbind(all_param) 



results_lca.CL=get_diff_BIC(results_lca.CL_BIC)
results_lca.CL_class=as.tibble(cbind(results_lca.CL, oneclass=rowSums(results_lca.CL[,c(1:20)]<3, na.rm = T), twoclass=rowSums(results_lca.CL[,c(1:20)]>3), na.rm=T)) %>%
  dplyr::select("oneclass_CL"=oneclass) %>%
  cbind(all_param) 

results_lca.CL_BIC[[10]]
results_lca.F_BIC[[10]]


results_lca.NCL=get_diff_BIC(results_lca.NCL_BIC)
results_lca.NCL_class=as.tibble(cbind(results_lca.NCL, oneclass=rowSums(results_lca.NCL[,c(1:20)]<3, na.rm=T), twoclass=rowSums(results_lca.NCL[,c(1:20)]>3)), na.rm=T) %>%
  dplyr::select("oneclass_NCL"=oneclass) %>%
  cbind(all_param) 



results_class_bic=inner_join(results_lca.F_class, results_lca.CL_class, by=c("p", "sigma.z", "p.0", "threshold")) %>%
  inner_join(results_lca.NCL_class,  by=c("p", "sigma.z", "p.0", "threshold")) %>%
  dplyr::select(oneclass_F, oneclass_CL, oneclass_NCL, p, sigma.z, p.0, threshold)
results_class_bic_nocluster=results_class_bic %>%
  dplyr::select(p, sigma.z, p.0, threshold, LCA=oneclass_F, LCRE.CL=oneclass_CL, LCRE.NCL=oneclass_NCL)

latex(as.matrix(results_class_bic_nocluster), booktabs=T, file="~/Documents/Thesis/thesis_finale/Images/Appendix_B_6", longtable=T)

save(results_class_bic_nocluster, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/results_bic_diff_nocluster")



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


find_trend(filter(results_class_bic, oneclass_F>=10))

filter(results_class_bic, oneclass_F>=10)
filter(results_class_bic, oneclass_CL>=10)
filter(results_class_bic, oneclass_NCL>=10)

find_trend(filter(results_class_bic, oneclass_F>=10))
find_trend(filter(results_class_bic, oneclass_CL>=10))
find_trend(filter(results_class_bic, oneclass_NCL>=10))



set.seed(12345)
some_scen=floor(runif(10,1,100))
plot_results_lca.F=as_tibble(cbind(t(results_lca.F[some_scen,])))
names(plot_results_lca.F)=some_scen
plot_results_lca.F= gather(plot_results_lca.F, key=scenario, value=BIC_diff_F, names(plot_results_lca.F)) %>%
  add_column(index=rep(1:20, 10))

plot_results_lca.CL=as_tibble(cbind(t(results_lca.CL[some_scen,])))
names(plot_results_lca.CL)=some_scen
plot_results_lca.CL= gather(plot_results_lca.CL, key=scenario, value=BIC_diff_TCL, names(plot_results_lca.CL)) %>%
  add_column(index=rep(1:20, 10))


plot_results_lca.NCL=as_tibble(cbind(t(results_lca.NCL[some_scen,])))
names(plot_results_lca.NCL)=some_scen
plot_results_lca.NCL= gather(plot_results_lca.NCL, key=scenario, value=BIC_diff_TNCL, names(plot_results_lca.NCL)) %>%
  add_column(index=rep(1:20, 10))


plot_results=inner_join(plot_results_lca.F, plot_results_lca.CL, by=c("scenario", "index")) %>%
  inner_join(plot_results_lca.NCL) %>%
  gather(key=method, value=BIC_diff, BIC_diff_F, BIC_diff_TCL, BIC_diff_TNCL) 

plot_results$method = recode_factor(plot_results$method, "BIC_diff_F"="LCA",  "BIC_diff_TCL"="LCRE (CL)", "BIC_diff_TNCL"="LCRE (no CL)")

ggplot(plot_results, aes(x=index, y=BIC_diff,group=as.factor(scenario))) +
  geom_line()+
  theme_bw()+
  facet_grid(.~method)+
  geom_hline(yintercept=20, col="red", linetype=5)+
  labs(y="Difference in BIC", x="Replication Number")+
  ggsave("BIC_byclass_10_sims_noclusters.jpeg", path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=12)


# b=ggplot(plot_results_lca.CL, aes(x=index, y=BIC_diff, group=scenario)) +
#   geom_line()+
#   theme_bw()+
#   labs(y="BIC", x="Replication Number")
# 
# c=ggplot(plot_results_lca.NCL, aes(x=index, y=BIC_diff,group=as.factor(scenario))) +
#   geom_line()+
#   theme_bw()+
#   labs(y="BIC", x="Replication Number")

# fig=grid.arrange(a,b,c, ncol=3, nrow=1)
# ggsave("BIC_byclass_10_sims.jpeg",plot=fig, path="~/Documents/Thesis/Images/", device="jpeg", width=20, height=5)




