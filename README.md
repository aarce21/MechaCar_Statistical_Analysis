# MechaCar_Statistical_Analysis
# Overview 
The goal of this analysis is to help AutosRUs' understand different metrics that might explain the decrease in production they are seeing. By looking at production data, we are aiming to help push the production team forward and ensure they are successful with designing and producing MechaCars. 

## Linear Regression to Predict MPG
![summary_lm_del1](https://github.com/aarce21/MechaCar_Statistical_Analysis/blob/main/images/summary_lm_del1.PNG)

* The variables in our dataset that provide a non-random amount of variance to the mpg values are the vehicale length and ground clearance. Vehicle length returned a p-value of 2.60e-12 and ground clearance returned a p-value of 5.21e-08. This means that they have a significant impact on the data. The intercept of the model also provides a non-random amount of variance to the model, with a p-value of 5.35e-11. With an intercept that has a significant mipact on the data, this could indicate that our dataset is missing variables that have a significant effect on mpg of that the other significant variables, vehicle length and ground clearance, need to be scaled or transformed. 
* The slope of this linear model cannot be considered zero. The model returned a p-value of 5.35e-11, which is lower than our assumed significance level of 0.05%. This means that there is enough evidence for us to reject the null hypothesis and that the slope of the model is not zero. 
* The model returned an r-squared value of 0.7149, meaning that the model is about 71% accurate at predicting the mpg of MechaCar prototypes. Although there is room for improvement in the model, the higher the r-squared value, the higher the chance that one variable can effectively predict another. 


## Summary Statistics on Suspension Coils
![total_summary](https://github.com/aarce21/MechaCar_Statistical_Analysis/blob/main/images/total_summary.PNG)

The total summary variance, showing the variance for all three lots combined, is 62.3 psi and does fall into the specifications by being under 100 psi. 

![lot_summary](https://github.com/aarce21/MechaCar_Statistical_Analysis/blob/main/images/lot_summary.PNG)

However, when we created the table to show the variance for each lot individually, we can see that lot 3 did not meet the specifications. Lot 3 has a variance of 170.3 psi, well over the limit of 100 psi. Lot 1, with a variance of 0.98 psi, and lot 2, with a variance of 7.5 psi, do not exceed the limit of 100 psi. 


## T-Tests on Suspension Coils
![t_test](https://github.com/aarce21/MechaCar_Statistical_Analysis/blob/main/images/t_test.PNG)

The T-test results for all manufacturing lots combined returned a p-value of 0.06, which is greater than our benchmark of 0.05%. Therefore, we do not have enough evidence to reject the null hypothesis. 

![lots_ttest](https://github.com/aarce21/MechaCar_Statistical_Analysis/blob/main/images/lots_ttest.PNG)

* The t-test for Lot 1 returned a p-value of 1, which is greated than 0.05% and we are unable to reject the null hypothesis and there is not a significant statistical difference between Lot 1 and the population mean. 
* The Lot 2 t-test returned a p-value of 0.61. This value is also greater than 0.05%, meaning that we do not have enough evidence to reject the null hypothesis. There is not a significant difference between Lot 2 and the population mean. 
* The t-test for Lot 3 returned a p-value of 0.04. This value is lower than our benchmark of 0.05%, meaning that we do have anough evidence to reject the null hypothesis. There is a significant statistical difference between Lot 3 and the population mean and Lot 3 may need to undergo further evaluation. 


## Study Design: MechaCar vs Competition
When people are looking into buying a car there are many factors they may take into consideration to make sure they can be confident in their purchase. An important factor for people looking to purchase a MechaCar might be the car's maintenance cost. A car with high maintenance costs may deter buyers from making a purchase so it is important to see how much MechaCar's maintenance costs are compared to the competition.  
* Metric to test: The cost of maintenance for a MechaCar vehicle compared to other competitors. 
* Null Hypothesis: The cost of maintenance for MechaCar is the same as the cost of maintenance for a competing car 
* Alternative Hypothesis: The cost of maintenance for MechaCar is significantly more or less expensive that a competing car. 
* Statistical test: A two-sample t-test would be used to test if the cost of maintenance of MechaCar is the same or significantly then a competitor's vehicle. A two sample t-tets will allow us to look at the average cost of MechaCar maintenance and the average cost of a competing car's maintenance. If the p-value that the t-test yields is greater than 0.05% we can state that there is not enough evidence to reject the null hypothesis and that the cost of maintenance for MechaCar and a competing car are statistically similar. If the p-value is below 0.05% we can state that there is enough evidence to reject the null hypothesis and that the maintenance costs are statistically different. 
* Data needed: To test this we will need the cost of maintence for MechaCar vehicles and the cost of maintenance for competing vehicles. 
