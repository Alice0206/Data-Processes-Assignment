
library(dplyr)
library(ggplot2)
library(caret)
library(tidyverse)
################set the work directory and Read the data###########################
setwd("C:/Users/Ali/Desktop/UPM/Data-Processes-Assignment")
Data<-read.csv("data/iTunes/data.csv")

################Process the data for machine learning##############################
New_Data<- Data[,-1]
New_Data<-New_Data[,-9:-28]
colnames(New_Data)
split=0.80
trainIndex <- createDataPartition(New_Data$label, p=split, list=FALSE)
data_train <- New_Data[ trainIndex,]
data_test <- New_Data[-trainIndex,]

##########################split the x and y for the model##########################
x <- scale(data_train[,1:8])
y <- data_train[,9]

x_test <- scale(data_test[,1:8])
y_test <- data_test[,9]

train_control <- trainControl(method="cv", number=10)
preProcessInTrain <-c("center", "scale")

#################naive bayes model######################################
nbModel <- train(x,y,
                 trControl=train_control, 
                 method="nb",
                 preProc = preProcessInTrain)

print(nbModel)
confusionMatrix(predictions, y_test)

######################predict the data with test data####################
predictions<-predict(nbModel,x_test)

summary(predictions)

ConMat<-confusionMatrix(predictions, y_test)
summary(ConMat)

ConMat_data<-as.data.frame.matrix(ConMat$table) 
ConMat_Per <- ConMat_data / colSums(ConMat_data)*100
Final_data <- ConMat_Per %>%
  rownames_to_column() %>%
  gather(colname, value, -rowname)

#####################Confusion Matrix for heatmap#########################
ggplot(Final_data, aes(x = rowname, y = colname,fill=value)) + 
  geom_tile()+
  labs(title = "The Confusion Matrix for the prediction based on Naive Bayes model",x= "Predition (%)",y= "Reference (%)")+
  geom_text(aes(label=value), color="black")+
  scale_fill_distiller(palette="Greens", direction=1)













