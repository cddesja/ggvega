format_json <- function(type, ...){
  if(type == "bar"){
    ## set up format
    tmp_file <- paste0('"data": [\n{\n"name": "table",\n"values": [\n')
    tab_x <- table(x)

    tmp_file <- c(tmp_file, paste0('{ "category": "',  names(tab_x), '", "amount": ', tab_x, '},\n'))
    last_datum <- tmp_file[length(tmp_file)]
    tmp_file[length(tmp_file)] <- gsub("[,](?=[^,]*$)","",last_datum,perl = TRUE)
    tmp_file <- c(tmp_file, '\n]\n}\n],')
  }
}
