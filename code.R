library(mailR)

# Not, on Ubuntu, as per https://github.com/rpremraj/mailR/issues/77,
# you may need to download the below two jars into system.file("java", package = "mailR")
# 1. https://mvnrepository.com/artifact/com.sun.activation/javax.activation/1.2.0
# 2. https://mvnrepository.com/artifact/javax.activation/javax.activation-api/1.2.0

sender <- "joebrew@gmail.com"
sender_password <- 'XXXX'
recipients <- c("eric.k@hyfeapp.com")
subject <- 'Test email'
body <- paste0('Hey man, this is just a test. I sent this at ', Sys.time(), ' from my ', Sys.info()['version'])
send.mail(from = sender,
          to = recipients,
          subject = subject,
          body = body,
          smtp = list(host.name = "smtp.gmail.com", port = 465, 
                      user.name = sender,            
                      passwd = sender_password, ssl = TRUE),
          authenticate = TRUE,
          send = TRUE)
