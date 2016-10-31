# var_obs <- weighted variance
# var_exp <- due to random sampling

# per_error <- var_exp/var_obs ... if < 0.75, then there are moderators

# LL and UL are the 95% CI
# cred_LL and cred_UL are the 80% Credible Interval



# devtools::install_github("dstanley4/metaPsychometric")

# library(apaTables)
# library(tidyverse)
# ex1_data <- read_csv("meta_data_ex1.csv")

# View(ex1_data)
# glimpse(ex1_data)

# > library(metaPsychometric)
# metaPsychometric
# ex1_results <- meta_bare_bones(ex1_data)
# ex1_results

# meta_plot_funnel(ex1_results)
# meta_plot_funnel(ex1_results,show_null_dist = TRUE)
# meta_plot_forest(ex1_results)