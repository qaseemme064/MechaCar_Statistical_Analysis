# MechaCar_Statistical_Analysis
The data analysis team at AutoRUs is responsible for performing retrospective analysis of histrorical data, analytical verification and validation of current automotive specifications and the study design of future product testing.
AutoRUs'newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing team's progress. So we are reviewing the production data for insights that may help the manufacturing team.

Following are the observations:

1) Performing multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes.

2) Collecting summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots.

3) Running t-tests to determine if the manufacturing lots are statistically different from the mean population.

4) Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers.

## Resources
**Tools** : tidyverse, dplyr, MechaCarChallenge.RScript
**Software** : RStudio and R
 

## Linear Regression to Predict MPG

![linear reg mechacar](https://user-images.githubusercontent.com/96033163/163681205-75d6d558-8463-41ea-9ee9-6c48a65e589b.png)


**1)  Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

*In summary output, all Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to results vehicle length and ground clearance provides a non-random amount of variance to the linear model of mpg. That is to say, the vehicle length and vehicle ground clearance have a significant impact on miles per gallon on the MechaCar prototype.*

**2) Is the slope of the linear model considered to be zero? Why or why not?**
*The p-Value for this model, p-Value: 5.35e-11, is much smaller than the assumed significance level of 0.05%. This indicates there is sufficient evidence to reject our null hypothesis, which further indcates that the slope of this linear model is not zero.*



**3) Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**
*According to the summary output, the r-squared value is 0.71, which predicts that approximatley 71% of all mpg predictions will be correct when using this linear model*

## Summary Statistics on Suspension Coils
The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch.

Below are the results:

![total summary](https://user-images.githubusercontent.com/96033163/163681211-5a71e1a6-c595-4bd9-a996-856cb685b32d.png)

![lot summary](https://user-images.githubusercontent.com/96033163/163681206-c505bc39-24c3-449c-b25a-e61b4b3c2d44.png)

When looking at the entire population of the production lot, the variance of the coils is 62.29 PSI, which is well within the 100 PSI variance requirement.

Individually, lot 1 and lot 2 are meeting the design specifications as they have the variance on PSI as 0.9 and 7.4 respectively. However, with variance on PSI as 170, lot 3 does not meet the design specification.


## T-Tests on Suspension Coils
**For Overall**

![tsample](https://user-images.githubusercontent.com/96033163/163681212-7d64a86a-db61-4000-86a6-0f9bbfe6891c.png)


Assuming our significance level is the common 0.05 percent, our p-value of 0.060 is above the significance level. Therefore, we do not have sufficient evidence to reject the null hypothesis, and we can state that the PSI across all manufacturing lots is statiscally similar to the population mean of 1498.78 psi.


**Lot 1**

![lot1 ttest](https://user-images.githubusercontent.com/96033163/163681207-d2da7551-02a0-4467-8418-a08de8c1f06a.png)

Here the p-value is above the significance level of 0.05 percent, so we cannot reject the null hypothesis and conclude that the PSI across the Lot 1 is statistically similar to the population mean


**Lot 2**

![lot2 ttest](https://user-images.githubusercontent.com/96033163/163681208-96868c7e-9e67-4ac1-a704-938861100ff9.png)

Here the p-value is above the significance level of 0.05 percent, so we cannot reject the null hypothesis and conclude that the PSI across the Lot 2 is statistically similar to the population mean

**Lot 3**

![lot3 ttest](https://user-images.githubusercontent.com/96033163/163681210-a9791437-302f-460d-b169-70fd5403375c.png)


Here the p-values are below the significance level, so we can conclude that the PSI for Lot3 are statistically different from the population mean.


## Study Design: MechaCar vs Competition

At MechaCar we are performing statistical study that can quantify how the MechaCar performs against the competition. In our study design, we are thinking of metrics that would interest consumers and motivate them to buy MechaCar vehicles based on data.


**1) What metric or metrics are you going to test?**

*Following are the metrics:*

- All data is to be numerical
- Data samples will be as large as possible
- Data samples need to be randomly selected
- Variance of data needs to be similar

**2) What is the null hypothesis or alternative hypothesis?**

- *Null Hypothesis (Ho): MechaCar is priced correctly based on its performance of key factors for its genre.*
- *Alternative Hypothesis (Ha): MechaCar is NOT priced correctly based on performance of key factors for its genre*

**3) What statistical test would you use to test the hypothesis? And why?**

*I will use one-way ANOVA test. This test is used to compare the means of a continuous numerical variable across a number of groups.*
*So in this analysis we would compare the means for each metric across the different manufacturers.*

**4) What data is needed to run the statistical test?**

*To perform the test, we need data of MechaCar vehicles and its competition, all gathered in a single dataframe where each metric is a column.*