library(dplyr)
mechacar_mpg_df <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F) #read in the csv file as a df
head(mechacar_mpg_df)
lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df) #perform linear regression
summary(lm(mpg~vehicle_length+vehicle_weight+spoiler_angle+ground_clearance+AWD, data = mechacar_mpg_df)) #use summary function to find p value and rsquared value


# Deliverable 2: Suspension Coils
# Read in the csv file as a table
suspension_coil_df <- read.csv(file ='Suspension_Coil.csv', check.names = F, stringsAsFactors = F)
head(suspension_coil_df)
# Create a total summary dataframe to get mean, median, variance, and SD
total_summary <- suspension_coil_df %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI))
total_summary
# Create a lot summary dataframe
lot_summary <- suspension_coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean = mean(PSI), Median = median(PSI), Variance = var(PSI), SD = sd(PSI), .groups = 'keep')


# Deliverable 3: T-Test on Suspension Coils
# Compare all lots to population mean of 1500 psi
t.test(suspension_coil_df$PSI, mu=1500)
# T-test for each lot
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot1")$PSI, mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot2")$PSI, mu = 1500)
t.test(subset(suspension_coil_df,Manufacturing_Lot=="Lot3")$PSI, mu = 1500)