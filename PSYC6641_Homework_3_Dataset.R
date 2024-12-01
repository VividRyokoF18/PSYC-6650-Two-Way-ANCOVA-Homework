setwd("C:/Users/filam/Downloads")

library(stats)
library(psych)
library(apaTables)
library(haven)

Homework_3 <- read_spss("Homework 3.sav")

hw3data$intervention_type <- factor(hw3data$intervention_type, levels=c(1:2),labels=c("CBT","MM"))
hw3data$age_group <- factor(hw3data$age_group, levels=c(1:3),labels=c("Young Adults","Middle-aged Adults","Senior Adults"))

anova_result <- aov(stress_level_post ~ intervention_type*age_group, data = hw3data)
anova_result <- aov(stress_level_post ~ age_group, data = hw3data)
anova_result <- aov(stress_level_post ~ intervention_type, data = hw3data)

#Two-Way ANOVA
model <- aov(stress_level_post ~ intervention_type*age_group, data = hw3data)
summary(model)

#Two-Way ANCOVA
model <- aov(stress_level_post ~ intervention_type * age_group + stress_level_pre, data = hw3data)
summary(model)

#Three-Way ANOVA
model <- aov(stress_level_post ~ intervention_type * age_group * learning_style, data = hw3data)
summary(model)
