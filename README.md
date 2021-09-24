# MechaCar Statistical Analysis with R

## Overview

AutosRUs’ newest prototype, the MechaCar, is suffering from production troubles that are blocking the manufacturing process. In this project, I am going to conduct the data analysis using R language to review and analyze the production data of the manufacturing lots to help resolve the problem.

There are four parts in this project:

1.	Perform multiple linear regression analysis to identify which variables in the dataset predict the mpg of MechaCar prototypes
2.	Collect summary statistics on the pounds per square inch (PSI) of the suspension coils from the manufacturing lots
3.	Run t-tests to determine if the manufacturing lots are statistically different from the mean population
4.	Design a statistical study to compare vehicle performance of the MechaCar vehicles against vehicles from other manufacturers. For each statistical analysis, you'll write a summary interpretation of the findings.


## I. Linear Regression to Predict MPG

<img width="771" alt="Deliveralbe 1 lm" src="https://user-images.githubusercontent.com/84211948/134463264-7723dd55-f5ff-4b0c-8b18-273d55d632dc.png">

<img width="771" alt="Deliverable 1 lm summary" src="https://user-images.githubusercontent.com/84211948/134463275-3965623a-dc84-47a7-9041-0bbed41d59bd.png">

- **Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

   In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to the results, vehicle_length and ground_clearance have the smallest Pr(>|t|) values. In another word, vehicle_length and ground_clearance are statistically least likely to provide random amount of variance to the mpg value because these two variables have significant impact on mpg values.

- **Is the slope of the linear model considered to be zero? Why or why not?**

   According to the result, the multiple linear regression model is:

    ```mpg = 6.267vehicle_length + 0.001245vehicle_weight + 0.06877spoiler_angle + 3.546ground_clearance – 3.411AWD – 104.0```

  The slope of the linear model cannot be considered as zero, as the coefficients for most of the variables are significant. In addition, the p-value of the linear regression analysis is 5.35e-11, which is much smaller than assumed significance level of 0.05% (5e-4). Therefore, we can state that there is sufficient evidence to reject the null hypothesis, means that the slope of our linear model is not zero. 

- **Does this linear model predict mpg of MechaCar prototypes effectively? Why or why not?**

    From the linear regression summary, the r-squared value is 0.7149, which means 71.49% of the variability of the dependent variable mpg is explained by the linear regression model. This number tells us that the linear model does predict mpg of MechaCar protypes effectively.


## II. Summary Statistics on Suspension Coils

<img width="329" alt="total_summary" src="https://user-images.githubusercontent.com/84211948/134472773-1062dfb0-fb38-4038-884c-5960a2254ff7.png">

<img width="482" alt="lot_summary" src="https://user-images.githubusercontent.com/84211948/134472796-25e5e5a9-5487-46d6-a5e6-d11aee268359.png">

- **The design specifications for the MechaCar suspension coils dictate that the variance of the suspension coils must not exceed 100 pounds per square inch. Does the current manufacturing data meet this design specification for all manufacturing lots in total and each lot individually? Why or why not?**

  By looking at the total_summary, the Variance is 62.29, which indicates that the current manufacture does meet the design specification that the variance of the suspension coils must within 100 pounds per square inch. 
  
  However, when looking at lot_summary, not all the lots meet the requirement. The first lot has a variance of 0.98 and the second lot has a variance of 7.47, which means these two lots both meet the design specification requirement. The third lot has a variance of 170.29, which is 70.29 over the requirement. Therefore, the third lot does not meet the design requirement.

## III. T-Tests on Suspension Coils

### 1. This t-test is created to determine if the PSI across all manufacturing lots is statistically different from the population mean of 1,500 pounds per square inch.

<img width="774" alt="t-test for all" src="https://user-images.githubusercontent.com/84211948/134499110-96413afe-711b-4fd2-b05a-2a9ef2122471.png">

From the result we can see that the p-value = 0.06028, which is greater than our assumed significance level of 0.05. Therefore, we do not have sufficient evidence to reject the null hypothesis. We should accept the null hypothesis and reject the alternative hypothesis. In conclusion, we should sate that the PSI across all manufacturing lots is statistically similar to the population mean of 1,500 pounds per square inch.

### 2. The following three t-test are used to determine if the PSI for each manufacturing lot is statistically different from the population mean of 15,000 pounds per square inch.

**a.	Manufacturing Lot 1**

<img width="773" alt="t-test for lot1" src="https://user-images.githubusercontent.com/84211948/134499131-f66dec61-c525-43fe-bd00-619d6f949142.png">

The p-value from this t-test is 1, which is not only greater than our assumed significance level of 0.05, but also indicates that the observed sample mean is exactly the same as the presumed population mean. Therefore, we can conclude that the PSI for manufacturing lot 2 exactly equals to the population mean of 1,500 pounds per square inch.

**b.	Manufacturing Lot 2**

<img width="774" alt="t-test for lot2" src="https://user-images.githubusercontent.com/84211948/134499149-5df33c66-83f6-431c-8d4d-d9f7f879c799.png">

The p-value from this t-test is 0.6072, which is greater than our assumed significance level of 0.05. Therefore, we do not have sufficient evidence to reject the null hypothesis. We should sate that the PSI for manufacturing lot 2 is statistically similar to the population mean of 1,500 pounds per square inch.

**c.	Manufacturing Lot 3**

<img width="774" alt="t-test for lot3" src="https://user-images.githubusercontent.com/84211948/134499166-3d9a04a8-49df-40c3-9e5b-0800fe092982.png">

The p-value from the t-test for lot 3 is 0.04168, which is smaller than our assumed significance level of 0.05.  Therefore, we do have sufficient evidence to reject the null hypothesis and accept alternative hypothesis. We can state that the PSI for manufacturing lot 3 is statistically not equal to 1,500 pounds per square inch.

## IV. Study Design: MechaCar vs Competition

### 1. What metric or metrics are you going to test?

In order to analysis the MechaCar’s performance against the competition, I will measure the following three metrics:
-	Cost
-	Fuel efficiency
-	Safety rating

These three metrics are often considered by consumers when purchasing a car. Cost is often the No.1 factor, as most people would set a budget before browsing options and compare options based on cost. Fuel efficiency is another important factor as it is important to know how much your vehicle is costing you every time you drive. A higher fuel efficiency can be a better option even when cost of the vehicle is higher. Safety rating is extremely important. Vehicles with high safety ratings generally have curtain, front, knee, and side airbags, which can provide significant higher level of protection. For consumers, safety should definitely be considered.


### 2. What is the null hypothesis or alternative hypothesis?

**Cost:**

_Null Hypothesis:_ The means of cost of all vehicles in this class are equal.

_Alternative Hypothesis:_ At least one of the vehicles in this class has a different mean of cost than other vehicles.

**Fuel efficiency:**

_Null Hypothesis:_ The means of fuel efficiency of all vehicles in this class are equal.

_Alternative Hypothesis:_ At least one of the vehicles in this class has a different mean of fuel efficiency than other vehicles.

**Safety rating:**

_Null Hypothesis:_ The means of safety ratings of all vehicles in this class are equal.

_Alternative Hypothesis:_ At least one of the vehicles in this class has a different mean of safety rating than other vehicles.

### 3. What statistical test would you use to test the hypothesis? And why?

**Cost:**

One-Way ANOVA test. This test will be used to test the mean cost of MechaCar with multiple other competition vehicles’ mean costs in the same class. 

**Fuel efficiency:**

Two-Way ANOVA test. This test will be used to test the mean of fuel efficiency of MechaCar with multiple other competition vehicles’ mean fuel efficiency in the same class. In addition, I want to test for two different independent variables: the fuel efficiency in city and on highway. Therefore, I need to use Two-Way ANOVA instead of One-Way ANOVA test to be able to test two conditions.

**Safety rating:**

One-Way ANOVA test. This test will be used to test the mean safety rating of MechaCar with multiple other competition vehicles’ mean safety rating in the same class. 

### 4. What data is needed to run the statistical test?

I would need a sample size of 50 MechaCars, and 50 of each other 4 competition vehicles in the same class, so 250 vehicles total to make a sufficient analysis.

For cost, I will need the cost of each of the 250 vehicles. For Fuel efficiency, I need two data points of each vehicle: mean fuel efficiency in the city and mean fuel efficiency on highway. For Safety rating, I need the mean safety rating of each vehicle. 

