# Healthcare-Insurance-Analysis

Project Task: Week 1
Data science/data analysis
1. Collate the files so that all the information is in one place
2. Check for missing values in the dataset
3. Find the percentage of rows that have trivial value (for example, ?), and delete such rows if they do not contain significant information
4. Use the necessary transformation methods to deal with the nominal and ordinal categorical variables in the dataset
5. The dataset has State ID, which has around 16 states. All states are not represented in equal proportions in the data. Creating dummy variables for all regions may also result in too many insignificant predictors. Nevertheless, only R1011, R1012, and R1013 are worth investigating further. Create a suitable strategy to create dummy variables with these restraints.
6. The variable NumberOfMajorSurgeries also appears to have string values. Apply a suitable method to clean up this variable.
7. Age appears to be a significant factor in this analysis. Calculate the patients' ages based on their dates of birth.
8. The gender of the patient may be an important factor in determining the cost of hospitalization. The salutations in a beneficiary's name can be used to determine their gender. Make a new field for the beneficiary's gender.
9. You should also visualize the distribution of costs using a histogram, box and whisker plot, and swarm plot.
10. State how the distribution is different across gender and tiers of hospitals
11. Create a radar chart to showcase the median hospitalization cost for each tier of hospitals
12. Create a frequency table and a stacked bar chart to visualize the count of people in the different tiers of cities and hospitals
13. Test the following null hypotheses:
a. The average hospitalization costs for the three types of hospitals are not significantly different
b. The average hospitalization costs for the three types of cities are not significantly different
c. The average hospitalization cost for smokers is not significantly different from the average cost for nonsmokers
d. Smoking and heart issues are independent

Project Task: Week 2
Machine Learning

1. Examine the correlation between predictors to identify highly correlated predictors. Use a 
heatmap to visualize this.
2. Develop and evaluate the final model using regression with a stochastic gradient descent 
optimizer. Also, ensure that you apply all the following suggestions:
Note: 
• Perform the stratified 5-fold cross-validation technique for model building and validation
• Use standardization and hyperparameter tuning effectively
• Use sklearn-pipelines
• Use appropriate regularization techniques to address the bias-variance trade-off
a. Create five folds in the data, and introduce a variable to identify the folds
b. For each fold, run a for loop and ensure that 80 percent of the data is used to train the model 
and the remaining 20 percent is used to validate it in each iteration
c. Develop five distinct models and five distinct validation scores (root mean squared error values)
d. Determine the variable importance scores, and identify the redundant variables
3. Use random forest and extreme gradient boosting for cost prediction, share your crossvalidation results, and calculate the variable importance scores
4. Case scenario:
Estimate the cost of hospitalization for Christopher, Ms. Jayna (her date of birth is 
12/28/1988, height is 170 cm, and weight is 85 kgs). She lives in a tier-1 city and her state’s 
State ID is R1011. She lives with her partner and two children. She was found to be 
nondiabetic (HbA1c = 5.8). She smokes but is otherwise healthy. She has had no 
transplants or major surgeries. Her father died of lung cancer. Hospitalization costs will be 
estimated using tier-1 hospitals.
5. Find the predicted hospitalization cost using all five models. The predicted value should be 
the mean of the five models' predicted values.

Project Task: Week 3
SQL
1. To gain a comprehensive understanding of the factors influencing hospitalization costs, it 
is necessary to combine the tables provided. Merge the two tables by first identifying the 
columns in the data tables that will help you in merging.
a. In both tables, add a Primary Key constraint for these columns
Hint: You can remove duplicates and null values from the column and then use ALTER TABLE 
to add a Primary Key constraint.
2. Retrieve information about people who are diabetic and have heart problems with their 
average age, the average number of dependent children, average BMI, and average 
hospitalization costs
3. Find the average hospitalization cost for each hospital tier and each city level
4. Determine the number of people who have had major surgery with a history of cancer
5. Determine the number of tier-1 hospitals in each state

Project Task: Week 4
Tableau
1. Create a dashboard in Tableau by selecting the appropriate chart types and 
business metrics
Note: Put more emphasis on data storytelling
