library('irr')
w_data <- read.csv("data_collection.csv", sep = ";", header = T)
attach(w_data)

iccVariable <- data.frame(X2KM_APP, X2KM_ACC)
print("___2KM__")
print(icc(iccVariable, model = "twoway", type = "agreement", unit = "single"))
iccVariable <- data.frame(X4KM_APP, X4KM_ACC)
print("___4KM__")
print(icc(iccVariable, model = "twoway", type = "agreement", unit = "single"))
iccVariable <- data.frame(X6KM_APP, X6KM_ACC)
print("___6KM__")
print(icc(iccVariable, model = "twoway", type = "agreement", unit = "single"))
iccVariable <- data.frame(X8KM_APP, X8KM_ACC)
print("___8KM__")
print(icc(iccVariable, model = "twoway", type = "agreement", unit = "single"))
iccVariable <- data.frame(X10KM_APP, X10KM_ACC)
print("___10KM__")
print(icc(iccVariable, model = "twoway", type = "agreement", unit = "single"))
iccVariable <- data.frame(CAFT_APP, CAFT_ACC)
print("__CAFT__")
print(icc(iccVariable, model = "twoway", type = "agreement", unit = "single"))