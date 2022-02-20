f <- file.choose('MechaCar_mpg(1).csv')
MechCar <- read.csv(f)

MechCar_df <- data.frame(MechCar)

lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechCar_df)

summary(lm(mpg ~ vehicle_length + vehicle_weight + spoiler_angle + ground_clearance + AWD,data=MechCar_df))