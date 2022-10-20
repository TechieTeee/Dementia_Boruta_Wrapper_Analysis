#Import Necessary Libraries
library(readr)
library(boruta)
set.seed(111)

#Import Dataset (Already Uploaded w/ GUI)
#dementia_dataset <- read_csv("dementia_dataset.csv")

#View Dataset
View(dementia_dataset)

#List Types for Variables
str(dementia_dataset)

#Summary of Dataset
summary(dementia_dataset)

#The character features are "Subject ID", "MRI ID", "Group", "M/F" and "Hand".
#That's five columns in total that need to be converted.

#Convert Categorical Features into Factor Data Type
as.factor(dementia_dataset[1])
as.factor(dementia_dataset[2])
as.factor(dementia_dataset[3])
as.factor(dementia_dataset[6])
as.factor(dementia_dataset[7])

#Check Data Type Again After Conversion
str(read_file)

##Remove th NAs Before Applying the Boruta
#Check Function for NAs and Missing Values
complete.cases(dementia_dataset)

#Define New Dataset w/o Missing Values and Nas
df <- dementia_dataset[complete.cases(dementia_dataset),]

#Clinical Dementia Rating Going to Be Used as Output Variable
#y = (dementia_dataset[12])
boruta.bank_train <- Boruta(CDR~., data = df, doTrace = 2)
