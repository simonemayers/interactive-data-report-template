knitr::opts_chunk$set(warning = FALSE, message = FALSE) 

| echo: false
ID <- c(1,2,3,4,5,6,7,8,9,10)
Occupation <- c("industrial", "professional", "professional", "professional", "industrial ", "industrial", "professional", "professional", "industrial", "industrial")
Age <- c(34, 41, 36, 41, 48, 61, 37, 40, 33, 32)
Loan_Salary_Ratio <- c(2.96, 4.64, 3.22, 3.11, 3.80, 2.52, 1.50, 1.93, 5.25, 4.15)
Outcome <- c("repaid", "default", "default", "default", "default", "repaid", "repaid", "repaid", "default", "default")
df <- data.frame(ID, Occupation, Age, Loan_Salary_Ratio, Outcome)
print(df)

#| echo: false
#| tbl-cap-location: margin
knitr::kable(df, caption = 'A machine learning application dataset.', col.names = gsub("[_]", " ", names(df)), align = "rlccl")

#| echo: false
# install readr, if not already installed
# install.packages("readr")
# load readr
library(readr)
df <- readr::read_tsv("./data.tsv", col_names = FALSE)
column_names <- c("ID", "Amount", "Salary", "Loan-Salary Ratio", "Age", "Occupation", "House", "Type", "Outcome")
colnames(df) <- column_names
print(df)

#| echo: false
#| tbl-cap-location: margin
knitr::kable(df, caption = 'Another machine learning application dataset.', col.names = gsub("[_]", " ", names(df)), align = "lrrcrrrrr")


