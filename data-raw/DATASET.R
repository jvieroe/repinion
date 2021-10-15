## code to prepare `DATASET` dataset goes here

epi_cols <- tibble::tibble(
  name = c(
    "Epinion Red",
    "Epinion DarkBlue",
    "Epinion WarmSand",
    "Epinion DarkPurple",
    "Epinion ClearBlue",
    "Epinion LightDeepBlue",
    "Epinion LightPurple",
    "Epinion LightBlue",
    "Epinion Green",
    "Epinion LightGreen",
    "Epinion Gold",
    "Epinion LightGold"),
  hex_codes = c(
    "#E13C32",
    "#0F283C",
    "#E8E1D5",
    "#641E3C",
    "#233CA0",
    "#68838B",
    "#BA7384",
    "#A7C7D7",
    "#004337",
    "#73A89A",
    "#C18022",
    "#EBC882"
  ))

epi_cols <- tibble::deframe(epi_cols)


# ----- Upload data to GitHub
usethis::use_data(epi_cols,
                  overwrite = TRUE)

# https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2



