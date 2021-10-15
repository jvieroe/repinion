## code to prepare `DATASET` dataset goes here

# https://drsimonj.svbtle.com/creating-corporate-colour-palettes-for-ggplot2


# ---------- Create vector of colors ----------
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


# Upload data to GitHub
usethis::use_data(epi_cols,
                  overwrite = TRUE)



# ---------- Create list with continuous color palettes ----------
epipal_c <- list(

  `epiblue` = getcols_epi("Epi_WarmSand", "Epi_ClearBlue", "Epi_DarkBlue"),

  `epipurple` = getcols_epi("Epi_WarmSand", "Epi_LightPurple", "Epi_DarkPurple"),

  `epigreen` = getcols_epi("Epi_WarmSand", "Epi_LightGreen", "Epi_Green"),

  `epigold` = getcols_epi("Epi_WarmSand", "Epi_LightGold", "Epi_Gold")

)


# Upload data to GitHub
usethis::use_data(epipal_c,
                  overwrite = TRUE)



# ---------- Create list with discrete color palettes ----------
epipal_d <- list()

epipal_d$main <- list(

  "Epi_DarkBlue" = "#0F283C",
  "Epi_WarmSand" = "#E8E1D5",
  "Epi_DarkPurple" = "#641E3C",
  "Epi_ClearBlue" = "#233CA0",
  "Epi_LightDeepBlue" = "#68838B",
  "Epi_LightPurple" = "#BA7384",
  "Epi_LightBlue" = "#A7C7D7",
  "Epi_Green" = "#004337",
  "Epi_LightGreen" = "#73A89A",
  "Epi_Gold" = "#C18022",
  "Epi_LightGold" = "#EBC882",
  "Epi_Red" = "#E13C32"

)

# Upload data to GitHub
usethis::use_data(epipal_d,
                  overwrite = TRUE)


