# MechaCar Statistical Analysis with R

## Overview

## I. Linear Regression to Predict MPG

<img width="771" alt="Deliveralbe 1 lm" src="https://user-images.githubusercontent.com/84211948/134463264-7723dd55-f5ff-4b0c-8b18-273d55d632dc.png">

<img width="771" alt="Deliverable 1 lm summary" src="https://user-images.githubusercontent.com/84211948/134463275-3965623a-dc84-47a7-9041-0bbed41d59bd.png">

- **Which variables/coefficients provided a non-random amount of variance to the mpg values in the dataset?**

   In the summary output, each Pr(>|t|) value represents the probability that each coefficient contributes a random amount of variance to the linear model. According to the results, vehicle_length and vehicle_weight have the smallest Pr(>|t|) values. In another word, vehicle_length and vehicle_weight are statistically least likely to provide random amount of variance to the mpg value because these two variables have significant impact on mpg values.

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
