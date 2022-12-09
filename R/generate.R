#' Generates an EGG update file
#'
#' This function prompts the user to provide information about what they
#' did this week for the EGG group in Pitt's Urology Department.
#'
#' @keywords update
#' @export


create_EGG_update <- function(){
  filename <- paste0("~/Documents/EGG/Weekly_Updates/",Sys.Date(), "_Update.docx")

  suppressWarnings(rmarkdown::render(
    "~/R_packages/egg.updates/inst/rmarkdown/templates/weekly-update/skeleton/skeleton.Rmd",
                  output_file = filename, params = "ask")
  )
}
