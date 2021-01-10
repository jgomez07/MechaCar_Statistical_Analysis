#Deliverable 1 
library(dplyr)
mechacar_mpg <- read.csv(file='MechaCar_mpg.csv', check.names=F,stringsAsFactors =F)
mechacar_mpg
head(mechacar_mpg)

lm(mpg~vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD, data=mechacar_mpg)

#Deliverable 2 # Lot #1
suspension_coil <- read.csv( file = 'Suspension_Coil.csv')

lot_summary <- suspension_coil %>% group_by(Manufacturing_Lot) %>% 
  summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

total_summary <- suspension_coil %>% 
  summarise(Mean=mean(PSI),Median=median(PSI),Variance=var(PSI),SD=sd(PSI))

> t.test(subset(suspension_coil,Manufacturing_Lot=="Lot1")$PSI,mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot2")$PSI,mu = 1500)
t.test(subset(suspension_coil,Manufacturing_Lot=="Lot3")$PSI,mu = 1500)


