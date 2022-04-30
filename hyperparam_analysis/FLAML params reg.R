df = read.table('cars.log')


df$id <- df$V2
df$validation_loss <- df$V17
df$max_leaves <- df$V27
df$n_estimators <- df$V21
df$max_features <- df$V24




df <- df[,35:39]


df$id <- gsub(",", '', df$id)
df$validation_loss <- gsub(",", '', df$validation_loss)
df$max_leaves <- gsub("},", '', df$max_leaves)


df$n_estimators <- gsub(',','', df$n_estimators)
df$max_features <- gsub(',','', df$max_features)





write.csv(df, "car_log.csv")
