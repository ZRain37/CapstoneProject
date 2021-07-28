library(ggplot2)
library(readr)
MHCLD_PUF_2018 <- read_csv("Downloads/MHCLD_PUF_2018.csv")
CLD <- subset(MHCLD_PUF_2018, EDUC != "-9" & AGE != "-9" & ETHNIC != "-9" & 
                RACE != "-9" & GENDER != "-9")
summary(CLD)

CLD2 <- CLD[ , 2:19]
cor(CLD2)
cor(CLD)

library(tree)

tree2 <- tree(EDUC ~ TRAUSTREFLG + ANXIETYFLG + ADHDFLG + CONDUCTFLG +
  DELIRDEMFLG + BIPOLARFLG + DEPRESSFLG + ODDFLG + PDDFLG + PERSONFLG +
  SCHIZOFLG + ALCSUBFLG, data = CLD)
summary(tree2)
plot(tree2)
text(tree2)
