position_filter <- function(a,b) {
  for (i in 1:length(a)) {
    if(a[i] == "SUB" || a[i] == "RES" || a[i] == "") {
      s <- unlist(strsplit(b[i],","))
      a[i] = s[1]
    }
  }
  a
}