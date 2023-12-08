# Reproducible research: version control and R

\# INSERT ANSWERS HERE #

Question 4:

1. The random walks originate from the point (0,0) and move a fixed distance in a random direction with each step. The step length is set to 0.25 units, and the direction is determined by a random angle chosen between [0, 2π]. It can be seen that the random walks exhibit stochastic behavior, as the two walks that were generated are completely different.
2. A random seed is a starting point used by a pseudorandom number generator (PRNG) to produce a sequence of "random" numbers. Pseudorandom number generators are algorithms that generate sequences of numbers that exhibit statistical randomness but are, in fact, deterministic. This means that if a PRNG starts with the same initial seed, it will always generate the same sequence of numbers (Cruise, 2012).
3. Simply specify the seed with set.seed(). By setting a specific seed will ensure that the sequence of random numbers generated is the same every time the code is run. This is crucial for reproducibility, as it allows others to replicate the results exactly.
4. ![comparison](https://github.com/NolanLiu01/reproducible-research_homework/assets/150164339/e7294764-e96b-404b-be55-91a53dca249d)

Question 5

1. There are 13 columns and 33 rows. The 13 columns representing the various attributes of the virus. The 33 rows representing the 33 viruses represented in this study.
2. A log transformation could be used. By applying a natural log to both sides of the given equation, the result gives a linear equation. Thus a linear model could be used to determine the scaling factor and exponent. The code can be found in this repository in the file question_5_code.R
3. The values are the same as found in the paper. Scaling factor = 1181.807 and exponent = 1.52
4. Code to reproduce graph can also be found in question_5_code.R
5. The estimated virus volume is 6697007 (in nm3)

Bonus Question 
Reproducibility:
Reproducibility involves obtaining consistent results using the same dataset, same analysis methods, and same conditions. Compared to replicability, reproducibility focuses on whether the same analysis coud be rerun using the same data and methods to get similar results (Earth & Behavioral, 2019).

Replicability:
Replicability involves obtaining consistent results across multiple studies that are trying to answer the same scientific question. Each study has obtained its own data and come up with their own methods to arrive at the same result (Earth & Behavioral, 2019). 

How Git and Github can enhance Reproducibility and Replicability:

Version Control and Documentation:
Github can track changes in code, allowing the comparison of previous works and ensuring that the work process can be reconstructed by another individual. Github commits and README files can serve as documentation, explaining the purpose of each change and providing context for future reproductions.

Collaboration:
Collaborators can work together and have access to the same project, allowing a more transparent, reproducible, and replicatable workflow.

Branching:
Github branches are an effective tool to explore alternative analysis methods without changing the main branch code, while remaining well documented. 

Limitations:

Learning Curve:
GitHub may be inaccessible to those who are not as proficient in coding. 

Binary Data:
Github has trouble managing Large binary files , which could be a bottleneck for users.

Data Sensitivity:
Sharing sensitive data on GitHub could be a privacy and ethical concern.

Continuous Integration:
While CI tools can enhance reproducibility, their setup can be complex and might not be suitable for all projects.

Citations:
Cruise, B. T. (2012). Random vs. Pseudorandom Number Generators [Video]. Khan Academy. Retrieved December 8, 2023, from https://www.khanacademy.org/computing/computer-science/cryptography/crypt/v/random-vs-pseudorandom-number-generators
Earth, D. O., & Behavioral, C. B. O. (2019). Reproducibility and replicability in science. In National Academies Press eBooks. https://doi.org/10.17226/25303

## Instructions

The homework for this Computer skills practical is divided into 5 questions for a total of 100 points (plus an optional bonus question worth 10 extra points). First, fork this repo and make sure your fork is made **Public** for marking. Answers should be added to the # INSERT ANSWERS HERE # section above in the **README.md** file of your forked repository.

Questions 1, 2 and 3 should be answered in the **README.md** file of the `logistic_growth` repo that you forked during the practical. To answer those questions here, simply include a link to your logistic_growth repo.

**Submission**: Please submit a single **PDF** file with your candidate number (and no other identifying information), and a link to your fork of the `reproducible-research_homework` repo with the completed answers. All answers should be on the `main` branch.

## Assignment questions 

1) (**10 points**) Annotate the **README.md** file in your `logistic_growth` repo with more detailed information about the analysis. Add a section on the results and include the estimates for $N_0$, $r$ and $K$ (mention which *.csv file you used).
   
2) (**10 points**) Use your estimates of $N_0$ and $r$ to calculate the population size at $t$ = 4980 min, assuming that the population grows exponentially. How does it compare to the population size predicted under logistic growth? 

3) (**20 points**) Add an R script to your repository that makes a graph comparing the exponential and logistic growth curves (using the same parameter estimates you found). Upload this graph to your repo and include it in the **README.md** file so it can be viewed in the repo homepage.
   
4) (**30 points**) Sometimes we are interested in modelling a process that involves randomness. A good example is Brownian motion. We will explore how to simulate a random process in a way that it is reproducible:

   - A script for simulating a random_walk is provided in the `question-4-code` folder of this repo. Execute the code to produce the paths of two random walks. What do you observe? (10 points)
   - Investigate the term **random seeds**. What is a random seed and how does it work? (5 points)
   - Edit the script to make a reproducible simulation of Brownian motion. Commit the file and push it to your forked `reproducible-research_homework` repo. (10 points)
   - Go to your commit history and click on the latest commit. Show the edit you made to the code in the comparison view (add this image to the **README.md** of the fork). (5 points)

5) (**30 points**) In 2014, Cui, Schlub and Holmes published an article in the *Journal of Virology* (doi: https://doi.org/10.1128/jvi.00362-14) showing that the size of viral particles, more specifically their volume, could be predicted from their genome size (length). They found that this relationship can be modelled using an allometric equation of the form **$`V = \beta L^{\alpha}`$**, where $`V`$ is the virion volume in nm<sup>3</sup> and $`L`$ is the genome length in nucleotides.

   - Import the data for double-stranded DNA (dsDNA) viruses taken from the Supplementary Materials of the original paper into Posit Cloud (the csv file is in the `question-5-data` folder). How many rows and columns does the table have? (3 points)
   - What transformation can you use to fit a linear model to the data? Apply the transformation. (3 points)
   - Find the exponent ($\alpha$) and scaling factor ($\beta$) of the allometric law for dsDNA viruses and write the p-values from the model you obtained, are they statistically significant? Compare the values you found to those shown in **Table 2** of the paper, did you find the same values? (10 points)
   - Write the code to reproduce the figure shown below. (10 points)

  <p align="center">
     <img src="https://github.com/josegabrielnb/reproducible-research_homework/blob/main/question-5-data/allometric_scaling.png" width="600" height="500">
  </p>

  - What is the estimated volume of a 300 kb dsDNA virus? (4 points)

**Bonus** (**10 points**) Explain the difference between reproducibility and replicability in scientific research. How can git and GitHub be used to enhance the reproducibility and replicability of your work? what limitations do they have? (e.g. check the platform [protocols.io](https://www.protocols.io/)).
