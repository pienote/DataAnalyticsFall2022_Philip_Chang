plot(ecdf(EPI), do.points=FALSE, verticals=TRUE)
par(pty="s")
qqnorm(EPI); qqline(EPI)
x <- seq(30, 95, 1)
qqplot(qt(ppoints(250), df=5), x, xlab="Q-Q plot for t dsn")
qqline(x)
boxplot(EPI, DALY)
qqplot(EPI, DALY)
EPILand <- EPI[!Landlock]
ELand <- EPILand[!is.na(EPILand)]
hist(ELand)
No_surface_water
hist(No_surface_water)
plot(ecdf(EPI_data$EPI),do.points=FALSE,verticals = TRUE)
plot(ecdf(EPI_data$EPI),do.points=TRUE,verticals = TRUE) # points are visible on the plot.
par(pty="s")
help("qqnorm") # read the RStudio documentation for qqnorm
help("qqplot") # read the RStudio documentation for qqplot
qqnorm(EPI_data$EPI)
qqline(EPI_data$EPI) # adding the line on the Q-Q plot
x <- seq(30,95,1)
x
x2 <-seq(30,95,2)
x2
x2 <-seq(30,96,2)
x2
qqplot(qt(ppoints(250),df=5),x, xlab = "Q-Q plot")
qqline(x)

multivariate <- read.csv("~/multivariate.csv")
head(multivariate)
attach(multivariate)
help(lm)
mm <- lm(Homeowners~Immigrant)
mm
summary(mm)
plot(Homeowners~Immigrant)
help(abline)
abline(mm)
abline(mm, col=2, lwd=3)
newImmigrantData <- data.frame(Immigrant = c(0, 20))
abline(mm)
abline(mm, col=3, lwd=3)
attributes(mm)
mm$coefficients