findVideos <- function(where = ".", extensions = c("avi", "mp4")) {
  retVal <- NULL
  # Optimization? What is that?
  for (i in 1:length(extensions)) {
    retVal <- c(retVal, list.files(
      path = where
      ,pattern = paste0("*.", extensions[i])
      ,full.names = TRUE
      ,recursive = TRUE
      ,no.. = TRUE
    ))
  }
  return(retVal)
}
