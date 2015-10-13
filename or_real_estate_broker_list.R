df_Master <- read.csv("/Users/craigzimber/Documents/RMLS_Data/Master/df_Master.csv", 
                      stringsAsFactors = FALSE, header = TRUE)

str(df_Master$List.Date)
df_Master$List.Date <- as.Date(df_Master$List.Date, "%m/%d/%y")
last_2_yr <- subset(df_Master, List.Date > "2012-10-01")
names(last_2_yr)
nCols1 <- c("Agent",
            "LPID",
            "BRCD",
            "Office",
            "Agent.Phone",
            "Cell.Pager",
            "Agent.Email",
            "List.Date") 

last_2_yr <- last_2_yr[, nCols1]

write.csv(last_2_yr, "broker_last_2_yr.csv", row.names = F)
