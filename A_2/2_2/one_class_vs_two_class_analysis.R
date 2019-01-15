library(randomLCA)

filelist_lca.F=
  c("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.F_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.F_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.9")

filelist_lca.T.CL=
  c("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.CL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.CL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.9")


filelist_lca.T.NCL=
  c("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_lca.T.NCL_record_5_samples_oneclass_181218_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_2_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
    #"~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_4_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_0.5_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_0.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_5_delta_1.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_0.5_sigma.z_1_p.0_0.9",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.1",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.3",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.5",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.7",
    "~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/3models_oneclass_181218_contThresh_lca.T.NCL_record_5_samples_lca_sim_p_7_delta_1.5_sigma.z_1_p.0_0.9")




library(tidyverse)
library(randomLCA)

load_results_BIC=function(file, method){
  load(file)
  if(method=="LCA"){
    bic=sapply(lca.F_record,function(x){
      if(is.logical(x)){
        return(NA)
      }else{
        BIC(x)
      }
    }, simplify = T)
  }else if(method=="LCRE.CL"){
    bic=sapply(lca.T.CL_record, function(x){
      if(is.logical(x)){
        return(NA)
      }else{
        BIC(x)
      }
    }, simplify=T)    
  }else if(method=="LCRE.NCL"){
    bic=sapply(lca.T.NCL_record, function(x){
      if(is.logical(x)){
        return(NA)
      }else{
        BIC(x)
      }
    }, simplify = T)
  }
  return(unlist(bic))
}  


results_lca.F_oneclass=lapply(filelist_lca.F, load_results_BIC, method="LCA")
results_lca.CL_oneclass=lapply(filelist_lca.T.CL, load_results_BIC, method="LCRE.CL")
results_lca.NCL_oneclass=lapply(filelist_lca.T.NCL, load_results_BIC, method="LCRE.NCL")

save(results_lca.F_oneclass, results_lca.CL_oneclass, results_lca.NCL_oneclass, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/BIC_raw_oneclass")

all_param=separate(as.tibble(filelist_lca.F[1:100]), col=value, into=c(NA, NA,NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA,NA,  "p", NA, "delta", NA, "sigma.z", NA, "p.0"), sep="_") %>%
  mutate(p.0=as.double(p.0), p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z)) %>%
  cbind(threshold="varied")

tmp=separate(as.tibble(filelist_lca.F[101:200]), col=value, into=c(NA,NA, NA,NA,NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, NA, "p", NA, "delta", NA, "sigma.z", NA, "p.0"), sep="_") %>%
  mutate(p.0=as.double(p.0), p=as.integer(p), delta=as.double(delta), sigma.z=as.double(sigma.z)) %>%
  cbind(threshold="constant")

all_param=rbind(all_param, tmp)
save(all_param, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/params_oneclass")

load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/params_oneclass")
load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/BIC_raw_oneclass")
load("~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/BIC_raw_twoclass")

results_lca.F_twoclass=results_lca.F
results_lca.CL_twoclass=results_lca.CL
results_lca.NCL_twoclass=results_lca.NCL

# save(results_lca.F_twoclass, results_lca.CL_twoclass, results_lca.NCL_twoclass, file="~/Documents/Aim_2/homo_sapiens_neutrophil/Simulation_LCA/BIC_raw_twoclass")


get_diff_BIC=function(results_oneclass, results_twoclass){
  tmp_oneclass=matrix(unlist(results_oneclass), nrow=200, ncol=20, byrow=TRUE)
  tmp_twoclass=matrix(unlist(results_twoclass), nrow=200, ncol=20, byrow=TRUE)
  tmp=as.tibble(tmp_oneclass-tmp_twoclass)
  
  return(tmp)
}



results_lca.F=get_diff_BIC(results_lca.F_oneclass, results_lca.F_twoclass)
results_lca.F_class=as.tibble(cbind(results_lca.F, oneclass=rowSums(results_lca.F[,c(1:20)]<0), twoclass=rowSums(results_lca.F[,c(1:20)]>0))) %>%
    dplyr::select("oneclass_F"=oneclass) %>%
  cbind(all_param) 



results_lca.CL=get_diff_BIC(results_lca.CL_oneclass, results_lca.CL_twoclass)
results_lca.CL_class=as.tibble(cbind(results_lca.CL, oneclass=rowSums(results_lca.CL[,c(1:20)]<3, na.rm = T), twoclass=rowSums(results_lca.CL[,c(1:20)]>3), na.rm=T)) %>%
  dplyr::select("oneclass_CL"=oneclass) %>%
  cbind(all_param) 




results_lca.NCL=get_diff_BIC(results_lca.NCL_oneclass, results_lca.NCL_twoclass)
results_lca.NCL_class=as.tibble(cbind(results_lca.NCL, oneclass=rowSums(results_lca.NCL[,c(1:20)]<3, na.rm=T), twoclass=rowSums(results_lca.NCL[,c(1:20)]>3)), na.rm=T) %>%
  dplyr::select("oneclass_NCL"=oneclass) %>%
  cbind(all_param) 



results_class_bic=inner_join(results_lca.F_class, results_lca.CL_class, by=c("p", "delta", "sigma.z", "p.0", "threshold")) %>%
  inner_join(results_lca.NCL_class,  by=c("p", "delta", "sigma.z", "p.0", "threshold")) %>%
  dplyr::select(oneclass_F, oneclass_CL, oneclass_NCL, p, delta, sigma.z, p.0, threshold)

results_class_bic_appendix=results_class_bic %>%
 dplyr::select(p, delta, sigma.z, p.0, threshold, oneclass_F, oneclass_CL, oneclass_NCL)


latex(as.matrix(results_class_bic_appendix), booktabs=T, file="~/Documents/Thesis/thesis_finale/Images/Appendix_B_5", longtable=T)


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


find_trend(filter(results_class_bic, oneclass_F>=10))

filter(results_class_bic, oneclass_F>=10)
filter(results_class_bic, oneclass_CL>=10)
filter(results_class_bic, oneclass_NCL>=10)

find_trend(filter(results_class_bic, oneclass_F>=10))
find_trend(filter(results_class_bic, oneclass_CL>=10))
find_trend(filter(results_class_bic, oneclass_NCL>=10))



set.seed(12345)
some_scen=floor(runif(10,1,200))
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
  labs(y="Difference in BIC", x="Replication Number")+
  ggsave("BIC_byclass_10_sims.jpeg", path="~/Documents/Thesis/Images/", device="jpeg", width=12, height=12)


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

################################################## compare correlation to MGMM and results from BIC #################################################

results_lca.F
results_lca.CL
results_lca.NCL



load("~/Documents/Aim_2/homo_sapiens_neutrophil/correlation_param")


matched_correlation=list()
for(i in 1:200){
  matched_correlation[[i]]=correlation[[i]] %>%
    add_column(BIC_Diff.F=t(results_lca.F[i,])[,1], BIC_Diff.T.CL=t(results_lca.CL[i,])[,1], BIC_Diff.T.NCL=t(results_lca.NCL[i,])[,1])  %>%
    mutate(correct_BIC.F=BIC_Diff.F>3, correct_BIC.T.CL=BIC_Diff.T.CL>3, correct_BIC.T.NCL=BIC_Diff.T.NCL>3)
}


plot_correlations_by_correct_BIC=function(matched_correlation){
  ggplot(matched_correlation, aes(x=1:20, y=posterior.lca.T.NCL, group=correct_BIC.T.NCL)) +
    geom_boxplot()+
    theme_bw()+
    facet_grid(.~correct_BIC.T.NCL)
}

# plot_correlations_by_correct_BIC(matched_correlation)
# lapply(matched_correlation_ncl, plot_correlations_by_correct_BIC)




find_average_correlations=function(matched_correlation, model){
  if(model=="T.CL"){
    tmp=dplyr::select(matched_correlation, posterior.lca.T.CL, correct_BIC.T.CL)
    av_TRUE=mean(filter(tmp, correct_BIC.T.CL==TRUE)$posterior.lca.T.CL)
    sd_TRUE=sd((filter(tmp, correct_BIC.T.CL==TRUE)$posterior.lca.T.CL))
    av_FALSE=mean(filter(tmp, correct_BIC.T.CL==FALSE)$posterior.lca.T.CL)
    sd_FALSE=sd((filter(tmp, correct_BIC.T.CL==FALSE)$posterior.lca.T.CL))
    return(c(av_TRUE, sd_TRUE, av_FALSE, sd_FALSE))
  } else {
    tmp=dplyr::select(matched_correlation, posterior.lca.T.NCL, correct_BIC.T.NCL)
    av_TRUE=mean(filter(tmp, correct_BIC.T.NCL==TRUE)$posterior.lca.T.NCL)
    sd_TRUE=sd((filter(tmp, correct_BIC.T.NCL==TRUE)$posterior.lca.T.NCL))
    av_FALSE=mean(filter(tmp, correct_BIC.T.NCL==FALSE)$posterior.lca.T.NCL)
    sd_FALSE=sd((filter(tmp, correct_BIC.T.NCL==FALSE)$posterior.lca.T.NCL))
    return(c(av_TRUE, sd_TRUE, av_FALSE, sd_FALSE))
  }
}

matched_correlation_ncl=matched_correlation[which(results_class_bic$oneclass_NCL>=10)]

average_correlations_T_F_NCL=matrix(unlist(lapply(matched_correlation_ncl, find_average_correlations, model="T.NCL")), nrow=83, byrow = TRUE) %>%
  as.tibble()%>%
  dplyr::rename(av_TRUE=V1, sd_TRUE=V2, av_FALSE=V3, sd_FALSE=V4) %>%
  cbind(all_param[which(results_class_bic$oneclass_NCL>=10),]) %>%
  mutate(sigma.z=as.factor(sigma.z), delta=as.factor(delta))

matched_correlation_cl=matched_correlation[which(results_class_bic$oneclass_CL>=10)]

average_correlations_T_F_CL=matrix(unlist(lapply(matched_correlation_cl, find_average_correlations, model="T.CL")), nrow=18, byrow = TRUE) %>%
  as.tibble()%>%
  dplyr::rename(av_TRUE=V1, sd_TRUE=V2, av_FALSE=V3, sd_FALSE=V4) %>%
  cbind(all_param[which(results_class_bic$oneclass_CL>=10),]) %>%
  mutate(sigma.z=as.factor(sigma.z), delta=as.factor(delta))


a=ggplot(average_correlations_T_F_NCL, aes(x=av_TRUE, y=av_FALSE)) +
  geom_point()+
  theme_bw()+
  labs(y="Average Correlation of LCRE (NCL) with MGMM\n for points with INCORRECT class preference", x="Average Correlation  of LCRE (NCL) with MGMM\n for points with CORRECT class preference") +
  scale_colour_brewer(palette="Set1")+
  geom_abline(aes(intercept=0, slope=1))
a
b=ggplot(average_correlations_T_F_CL, aes(x=av_TRUE, y=av_FALSE)) +
  geom_point()+
  theme_bw()+
  labs(y="Average Correlation of LCRE (CL) with MGMM\n for points with INCORRECT class preference", x="Average Correlation of LCRE (CL) with MGMM\n for points with CORRECT class preference") +
  scale_colour_brewer(palette="Set1")+
  geom_abline(aes(intercept=0, slope=1))
b

fig=grid.arrange(b,a, ncol=2, layout_matrix=rbind(c(1,2)))
ggsave("BIC_twoclass_F_T_av_corr.jpeg",plot=fig, path="~/Documents/Thesis_Restructured_Fancy/Images/", device="jpeg", width=8, height=8)


################### Find average difference 

average_differences=mutate(average_correlations_T_F_NCL, diff=av_TRUE-av_FALSE) %>%
  dplyr::select(diff)
average_NCL=mean(average_differences$diff)
matched_correlation_ncl[[1]]
# 
# average_difference_T_F_NCL=matrix(unlist(matched_correlation_ncl[1:2]), ncol=10, byrow = F) %>%
#   as.tibble()%>%
#   dplyr::rename(av_TRUE=V1, sd_TRUE=V2, av_FALSE=V3, sd_FALSE=V4) %>%
#   cbind(all_param[which(results_class_bic$oneclass_NCL>=10),]) %>%
#   mutate(sigma.z=as.factor(sigma.z), delta=as.factor(delta))



average_differences=mutate(average_correlations_T_F_CL, diff=av_TRUE-av_FALSE) %>%
  dplyr::select(diff)
average_CL=mean(average_differences$diff)
