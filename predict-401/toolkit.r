salaries <- read.csv(file.path("C:/Users/00811289/Desktop","salaries.csv"), sep=",")

summary(salaries)
str(salaries)
sd(salaries$SAL)

hist(salaries$SAL)
skewness(salaries$SAL)
kurtosis(salaries$SAL)
plot(salaries$AGE, salaries$SAL)

qqnorm(salaries$SAL)
qqline(salaries$SAL)

margin.of.error <- qnorm(1-(0.05/2)) * sd/sqrt(n)
conf.int <- c(mean - margin.of.error, mean + margin.of.error)
conf.int