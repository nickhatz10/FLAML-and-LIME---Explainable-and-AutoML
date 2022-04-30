df = read.table('credit_all.log')


df$id <- df$V2
df$validation_loss <- df$V17
df$min_child_samples <- df$V27
df$learning_rate <- df$V30
df$log_max_bin <- df$V33
df$reg_alpha <- df$V39
df$reg_lambda <- df$V42
df$n_estimators <- df$V21
df$num_leaves <- df$V24




df <- df[,50:58]


df$id <- gsub(",", '', df$id)
df$validation_loss <- gsub(",", '', df$validation_loss)
df$min_child_samples <- gsub(",", '', df$min_child_samples)
df$learning_rate <- gsub(",", '', df$learning_rate)
df$log_max_bin <- gsub(",", '', df$log_max_bin)
df$reg_alpha <- gsub(",", '', df$reg_alpha)
df$n_estimators <- gsub(",", '', df$n_estimators)
df$reg_lambda <- gsub("},", '', df$reg_lambda)
df$num_leaves <- gsub(",", '', df$num_leaves)






write.csv(df, "credit_log.csv")
