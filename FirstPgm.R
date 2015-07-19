celinput <- readline('Enter Temp in Cel')
celNum <- as.numeric(celinput)
farNum <- ((9/5) * celNum) + 32
farStr <- sprint("%.2f",farNum)
message <- paste('Temp in FarHeit : ', farStr)
print(message)