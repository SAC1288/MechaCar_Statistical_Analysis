#Deliverable 1
f <- file.choose('MechaCar_mpg(1).csv')
MechCar <- read.csv(f)

MechCar_df <- data.frame(MechCar)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechCar_df)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechCar_df))

#Deliverable 2
g <- file.choose('Suspension_Coil(1).csv')
Susp_Coil <- read.csv(g)

Susp_Coil_df <- data.frame(Susp_Coil)
library(dplyr)
Total_Summary <- summarize(Susp_Coil_df, Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI))
lot_summary <- Susp_Coil_df %>% group_by(Manufacturing_Lot) %>% summarize(Mean=mean(PSI), Median=median(PSI), Variance=var(PSI), SD=sd(PSI), .groups = 'keep')

#Deliverable 3

t.test(Susp_Coil_df$PSI, mu=1500)

#?t.test()

t.test(Susp_Coil_df$PSI ~ 1, data=Susp_Coil_df, subset=Manufacturing_Lot=='Lot1',mu=1500)
t.test(Susp_Coil_df$PSI ~ 1, data=Susp_Coil_df, subset=Manufacturing_Lot=='Lot2',mu=1500)
t.test(Susp_Coil_df$PSI ~ 1, data=Susp_Coil_df, subset=Manufacturing_Lot=='Lot3',mu=1500)
#t.test(log10(sample_table$Miles_Driven),mu=mean(log10(population_table$Miles_Driven)))