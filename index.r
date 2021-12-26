# install rvest package if you haven't
# install.packages("rvest")
# install.packages("stringi")

library(rvest)

url <- "https://www.csie.ndhu.edu.tw/"
content <- read_html(url)
titles <- html_nodes(content, "#content a")

for(title in html_text(titles)) {
    if(substr(title, 1, 1) != '\r') {
        next
    }
    title <- gsub("\\s+", title, replacement = "")
    print(title)
}