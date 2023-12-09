### API CONNECTION & DATA LOAD


# Load necessary packages 
install.packages("RSocrata")
library(RSocrata)

# Get the data from API
df <- read.socrata(
  "https://data.lacity.org/resource/twzm-wihy.json"
  #app_token = "YOURAPPTOKENHERE"
)

# Store the data into an R data file 
columns <- c("the_geom.coordinates", "lampa")
path <- "data/streetlights.rds"

saveRDS(df, file = path)
