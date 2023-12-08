# load packages 

install.packages("pacman", "dplyr")
library (pacman)
pacman::p_load (dplyr)

# load data

virus_data <- read_csv("question-5-data/Cui_etal2014.csv")

# log transformation for linear model

virus_log <- virus_data %>% mutate(volume_log = log(`Virion volume (nm×nm×nm)`),
                                   genome_length = `Genome length (kb)`, 
                                   genome_length_log = log(`Genome length (kb)`),
                                   volume = `Virion volume (nm×nm×nm)`)

# generate linear model 

virus_model1 <- lm(volume_log ~ genome_length_log, virus_log)
summary(virus_model1)


# scaling factor

B <- 7.0748
reverted_scaling_factor <- exp(7.0748)
reverted_scaling_factor

# exponent

a <- 1.5152

# write function

linear_fun_virus <- function (genome_length_log) {
  
  volume_log <- a*genome_length_log + B

}

linear_fun_virus_print <- function (genome_length_log) {
  
  volume_log <- a*genome_length_log + B
  
  print (volume_log)
  
}

# code to reproduce the plot 

ggplot(aes(genome_length_log,volume_log), data = virus_log) +
  
  geom_function(fun=linear_fun_virus, colour = "blue") +
  
  geom_point() + 
  
  geom_smooth(method = 'lm', alpha = 0.5) +
  
  labs(y= "log[Virion volume (nm3)]", x = "log[Genome length (kb)]") +
  
  theme_minimal() +
  
  theme(panel.border = element_rect(color = "black", 
                                    fill = NA, size = 0.5))

# estimated volume of 300 kb virus 

linear_fun_virus_print (log(300))

virus_volume_300 <- exp(linear_fun_virus(log(300)))

virus_volume_300
