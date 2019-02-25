require(tidyverse)
require(rvest)
require(xml2)

url = "https://www.basketball-reference.com/players/h/hardeja01.html"
site = read_html(url)
site

table.path = '//*[@id="per_game"]'
table = site %>% html_nodes(.,xpath = table.path)
table

table = table%>%html_table(.)%>%
  .[[1]]
table 