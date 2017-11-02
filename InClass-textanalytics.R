
#1
print("\"") # to take away escape chars, use cat
cat("\"") #escape qoutation mark
cat('"') 
cat("ab\ncd")
cat("a\tb\nc\td")

#2
cat(":-\\") # escape backslash

cat("(^_^\")")
cat("@_'-'")
cat("\\m/")

#3
library(stringr)
?str_locate
?str_sub

#4
str_locate(string = "great", pattern = "a")

list = c("great", "fantastic", "super")
str_locate(string = list, pattern = "a")
occurance = str_locate_all(string = list, pattern = "a")
occurance[[1]]
occurance[[1]][1,2] # 1st occurance, 1st row, 2nd colomn

#5
str_sub(string = "testing", start = 1, end = 3) #or
str_sub(string = "testing", end = 3)

str_sub("testing", start = 4) #or
str_sub("testing", start = 4, end = nchar("testing"))

str_sub("testing", 
        start = 1,
        end = 4)
#6
input = c("abc", "defg")
str_sub(input, c(2,3))

#7
emails = readRDS("email.rds")
emails[1]
cat(emails[1])
cat(emails[10])

#8
location = str_locate(string = emails[1], pattern = "\n\n")
header1 = str_sub(string = emails[1],
                 start = 1, 
                 end = location[1])
body1 = str_sub(string = emails[1], 
               start = location[2]+ 2)
cat(body1)
cat(header1)

#9
str_split(string = header1, 
          pattern = "\n")


cat(emails[118])

#10
locationall = str_locate(string = emails, 
                         pattern = "\n\n")
headerall = str_sub(string = emails,
                  start = locationall[1,1], 
                  end = locationall[,1])
bodyall = str_sub(string = emails, 
                start = locationall[,2]+ 2)

#hand out 2
#1
fruit = c("apple", "banana", "pear", "pinapple")
str_detect(fruit, "a") # contains
str_detect(fruit, pattern = "^a") # start with
str_detect(fruit, "a$") # ends with
str_detect(fruit, "[aeiou]") # any
str_detect(fruit, "[a-d]") # from-to

#3
str_detect(fruit, pattern = "^a[a-z]*e$"  ) # start with

#4
phone = c("213 740 4826", "213-740-4826", 
          "213.740.4826", "(213) 740-4826")
parser = "[(]?[0-9]{3}[)]?[. -]{1}[0-9]{3}[. -]{1}[0-9]{4}"
str_detect(phone, pattern = parser )

#5
cat(bodyall[10])
cat(bodyall[18])
str_extract(string = bodyall, pattern = parser)

zip = c("90028", "90028-08909")
parserzip = "[0-9]{5}(-[0-9]{4})?"

zip = c("90028", "90028-08990")
parserzip = "[0-9]{5}(-[0-9]{4})?\\>"
str_detect(zip, pattern = parserzip)           

