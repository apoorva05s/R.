           #FACTOR

#Factor is a categorical data.


?factor
#create a vector which contains gender of 5 people
data=c("M","F","F","M","F")
f=factor(data)
f
f1=factor(data,levels=c("M","F","T"))
f1
f2=factor(data, levels=c("M","F","T"), labels=c("Male","Female","Transgender"))
f2

f3=factor(data, levels=c("M","F","T"), labels=c("Male","Female","Transgender"),
          ordered=TRUE)#By default ordered is FALSE
f3


as.factor(f3)#convert vector to factor
is.factor(f3)#tell whether the factor is true or not(it is factor or not)
f3[4]#access

#change the second element to transgender
f3[2]="Transgender"
f3

survey_responses<- c("g","a", "b", "g", "g", "a", "b", "g", "b", "a")
survey_factor <- factor(survey_responses, levels=c("g", "a", "b"), labels=c("good", "average", "bad"),
                        ordered=TRUE)
survey_factor
