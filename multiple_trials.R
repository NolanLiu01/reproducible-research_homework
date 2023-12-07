# code for multiple repeats for when I misread the question

# Set the number of steps for each random walk

n_steps <- 500

# Set the number of repeats

n_repeats <- 10

# Create a list to store the results of each random walk

walks_list <- list()

# Perform the random walk for each repeat

for (i in 1:n_repeats) {
  walks_list[[i]] <- random_walk(n_steps)
}

# Loop for generating plot

plots_list <- list()

for (i in 1:n_repeats) {
  
  title <- paste("Random Walk", i)
  
  plots_list[[i]] <- ggplot(aes(x = x, y = y), data = walks_list[[i]]) +
    
    geom_path(aes(colour = time)) +
    
    theme_bw() +
    
    xlab("x-coordinate") +
    
    ylab("y-coordinate")
}

grid.arrange(grobs = plots_list, ncol = 2)