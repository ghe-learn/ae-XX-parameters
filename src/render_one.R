render_one <- function(country) {
  # assuming the output format of input.Rmd is PDF
  quarto::quarto_render(
    input = "ae-XX-parameters.qmd",
    output_file = paste0("slides/", "waste-composition-", country, ".html"),
    execute_params = list(country = country)
    #envir = parent.frame()
  )
}