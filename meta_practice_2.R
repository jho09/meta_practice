library(metaPsychometric)
library(tidyverse)

# Example 1

ex1_meta_data <- read_csv("meta_data_ex1.csv")
View(ex1_meta_data)

ex1_results <- meta_bare_bones(ex1_meta_data)
print(ex1_results)

meta_plot_funnel(ex1_results)

# Example 2

ex2_meta_data <- read_csv("meta_data_ex2.csv")
View(ex2_meta_data)

ex2_results <- meta_bare_bones(ex2_meta_data)
print(ex2_results)

meta_plot_funnel(ex2_results)


# Example 3

ex3_meta_data <- read_csv("meta_data_ex3.csv")
View(ex3_meta_data)

ex3_results <- meta_bare_bones(ex3_meta_data)
print(ex3_results)

meta_plot_forest(ex3_results)
meta_plot_funnel(ex3_results)
meta_plot_funnel(ex3_results,show_null_dist = TRUE)


ex3_meta_data_canada <- ex3_meta_data %>% filter(country=="Canada")
ex3_meta_data_usa <- ex3_meta_data %>% filter(country=="United States")

ex3_results_canada <- meta_bare_bones(ex3_meta_data_canada)
print(ex3_results_canada)

meta_plot_forest(ex3_results_canada)

ex3_results_usa <- meta_bare_bones(ex3_meta_data_usa)
print(ex3_results_usa)

meta_plot_forest(ex3_results_usa)


# Example 4: Correcting for unreliability

ex4_meta_data <- read_csv("meta_data_ex4.csv")
View(ex4_meta_data)

ex4_results <- meta_corrected(ex4_meta_data)
print(ex4_results)

ex4_meta_data_canada <- ex4_meta_data %>% filter(country=="Canada")
ex4_meta_data_usa <- ex4_meta_data %>% filter(country=="United States")

ex4_results_canada <- meta_corrected(ex4_meta_data_canada)
print(ex4_results_canada)

ex4_results_usa <- meta_corrected(ex4_meta_data_usa)
print(ex4_results_usa)
