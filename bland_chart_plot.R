#
library(ggplot2)
library(gridExtra)

# Read values from data collection
data <- read.table("dados_por_estagio.csv", header = TRUE, sep = ",")

data$avg2 <- (data$X2KMPH_ACC + data$X2KMPH_APP)/2
data$diff2 <- data$X2KMPH_ACC - data$X2KMPH_APP
data$avg4 <- (data$X4KMPH_ACC + data$X4KMPH_APP)/2
data$diff4 <- data$X4KMPH_ACC - data$X4KMPH_APP
data$avg6 <- (data$X6KMPH_ACC + data$X6KMPH_APP)/2
data$diff6 <- data$X6KMPH_ACC - data$X6KMPH_APP
data$avg8 <- (data$X8KMPH_ACC + data$X8KMPH_APP)/2
data$diff8 <- data$X8KMPH_ACC - data$X8KMPH_APP
data$avg10 <- (data$X10KMPH_ACC + data$X10KMPH_APP)/2
data$diff10 <- data$X10KMPH_ACC - data$X10KMPH_APP
data$avg12 <- (data$X12KMPH_ACC + data$X12KMPH_APP)/2
data$diff12 <- data$X12KMPH_ACC - data$X12KMPH_APP


data$mean_diff2 <- mean(data$diff2)
data$mean_diff4 <- mean(data$diff4)
data$mean_diff6 <- mean(data$diff6)
data$mean_diff8 <- mean(data$diff8)
data$mean_diff10 <- mean(data$diff10)
data$mean_diff12 <- mean(data$diff12)


data$lower2 <- mean_diff2 - 1.96*sd(data$diff2)
data$upper2 <- mean_diff2 + 1.96*sd(data$diff2)
data$lower4 <- mean_diff4 - 1.96*sd(data$diff4)
data$upper4 <- mean_diff4 + 1.96*sd(data$diff4)
data$lower6 <- mean_diff6 - 1.96*sd(data$diff6)
data$upper6 <- mean_diff8 + 1.96*sd(data$diff6)
data$lower8 <- mean_diff8 - 1.96*sd(data$diff8)
data$upper8 <- mean_diff10 + 1.96*sd(data$diff8)
data$lower10 <- mean_diff10 - 1.96*sd(data$diff10)
data$upper10 <- mean_diff10 + 1.96*sd(data$diff10)
data$lower12 <- mean_diff12 - 1.96*sd(data$diff12)
data$upper12 <- mean_diff12 + 1.96*sd(data$diff12)

# Using "data" dataframe
attach(data)


bland2 <- ggplot(data, aes(x = avg2, y = diff2)) +
  theme_classic() +
  geom_point(size=2) +
  geom_hline(yintercept = mean_diff2)+
  geom_hline(yintercept = lower2, color = "blue", linetype="dashed") +
  geom_hline(yintercept = upper2, color = "red", linetype="dashed") +
  labs(
    title = "Bland-Altman estágio de 2 Km/h",
    y = "Diferenças entre ACC e Aplicativo",
    x = "Médias entre ACC e Aplicativo",
  )

bland4 <- ggplot(data, aes(x = avg4, y = diff4)) +
  theme_classic() +
  geom_point(size=2) +
  geom_hline(yintercept = mean_diff4)+
  geom_hline(yintercept = lower4, color = "blue", linetype="dashed") +
  geom_hline(yintercept = upper4, color = "red", linetype="dashed") +
  labs(
    title = "Bland-Altman estágio de 4 Km/ h",
    y = "Diferenças entre ACC e Aplicativo",
    x = "Médias entre ACC e Aplicativo",
  )

bland6 <- ggplot(data, aes(x = avg6, y = diff6)) +
  theme_classic() +
  geom_point(size=2) +
  geom_hline(yintercept = mean_diff6)+
  geom_hline(yintercept = lower6, color = "blue", linetype="dashed") +
  geom_hline(yintercept = upper6, color = "red", linetype="dashed") +
  labs(
    title = "Bland-Altman estágio de 6 Km/h",
    y = "Diferenças entre ACC e Aplicativo",
    x = "Médias entre ACC e Aplicativo",
  )
bland8 <- ggplot(data, aes(x = avg8, y = diff8)) +
  theme_classic() +
  geom_point(size=2) +
  geom_hline(yintercept = mean_diff8)+
  geom_hline(yintercept = lower8, color = "blue", linetype="dashed") +
  geom_hline(yintercept = upper8, color = "red", linetype="dashed") +
  labs(
    title = "Bland-Altman estágio de 8 Km/h",
    y = "Diferenças entre ACC e Aplicativo",
    x = "Médias entre ACC e Aplicativo",
  )
bland10 <- ggplot(data, aes(x = avg10, y = diff10)) +
  theme_classic() +
  geom_point(size=2) +
  geom_hline(yintercept = mean_diff10)+
  geom_hline(yintercept = lower10, color = "blue", linetype="dashed") +
  geom_hline(yintercept = upper10, color = "red", linetype="dashed") +
  labs(
    title = "Bland-Altman estágio de 10 Km/h",
    y = "Diferenças entre ACC e Aplicativo",
    x = "Médias entre ACC e Aplicativo",
  )
bland12 <- ggplot(data, aes(x = avg12, y = diff12)) +
  theme_classic() +
  geom_point(size=2) +
  geom_hline(yintercept = mean_diff12)+
  geom_hline(yintercept = lower12, color = "blue", linetype="dashed") +
  geom_hline(yintercept = upper12, color = "red", linetype="dashed") +
  labs(
    title = "Bland-Altman Estágio de 12 Km/h",
    y = "Diferenças entre ACC e Aplicativo",
    x = "Médias entre ACC e Aplicativo",
  )

grid.arrange(bland2, bland4, bland6, bland8, bland10, bland12, nrow = 2)