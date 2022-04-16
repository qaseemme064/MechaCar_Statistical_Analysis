#### Deliverable # 1

library(dplyr)
MechaCar_mpg <- read.csv(file='MechaCar_mpg.csv',check.names=F,stringsAsFactors = F)

#passing linear regression in all six columns
lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= MechaCar_mpg)

#summary of linear regression
summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data= MechaCar_mpg))


#### Deliverable # 2

suspensionCoil <- read.csv(file= 'Suspension_Coil.csv', check.names = F, stringsAsFactors = F)

#calculation mean, median, mode, variance & SD
total_summary <- suspensionCoil %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Stand.Dev=sd(PSI), .groups= 'keep')

#calculation mean, median, mode, variance & SD by LOTS
lot_summary <- suspensionCoil %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), Stand.Dev=sd(PSI), .groups= 'keep')
















