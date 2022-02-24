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

  `epiblue` = getcols_epi("Epinion LightBlue", "Epinion DarkBlue"),

  `epipurple` = getcols_epi("Epinion LightPurple", "Epinion DarkPurple"),

  `epigreen` = getcols_epi("Epinion LightGreen", "Epinion Green"),

  `epigold` = getcols_epi("Epinion LightGold", "Epinion Gold"),

  `epiredblue` = getcols_epi("Epinion Red", "Epinion DarkBlue"),

  `epigoldblue` = getcols_epi("Epinion LightGold", "Epinion DarkBlue"),

  `epigoldgreen` = getcols_epi("Epinion LightGold", "Epinion Green"),

  `epigoldpurple` = getcols_epi("Epinion LightGold", "Epinion DarkPurple"),

  `epigoldred` = getcols_epi("Epinion LightGold", "Epinion Red")



)


# Upload data to GitHub
usethis::use_data(epipal_c,
                  overwrite = TRUE)



# ---------- Create list with discrete color palettes ----------
epipal_d <- list()

epipal_d$main <- list(

  "Epinion DarkBlue" = "#0F283C",
  "Epinion WarmSand" = "#E8E1D5",
  "Epinion DarkPurple" = "#641E3C",
  "Epinion ClearBlue" = "#233CA0",
  "Epinion LightDeepBlue" = "#68838B",
  "Epinion LightPurple" = "#BA7384",
  "Epinion LightBlue" = "#A7C7D7",
  "Epinion Green" = "#004337",
  "Epinion LightGreen" = "#73A89A",
  "Epinion Gold" = "#C18022",
  "Epinion LightGold" = "#EBC882"#,
  #"Epinion Red" = "#E13C32"

)

epipal_d$usered <- list(

  "Epinion Red" = "#E13C32",
  "Epinion DarkBlue" = "#0F283C",
  "Epinion WarmSand" = "#E8E1D5",
  "Epinion DarkPurple" = "#641E3C",
  "Epinion ClearBlue" = "#233CA0",
  "Epinion LightDeepBlue" = "#68838B",
  "Epinion LightPurple" = "#BA7384",
  "Epinion LightBlue" = "#A7C7D7",
  "Epinion Green" = "#004337",
  "Epinion LightGreen" = "#73A89A",
  "Epinion Gold" = "#C18022",
  "Epinion LightGold" = "#EBC882"

)

# epipal_d$nosand <- list(
#
#   "Epinion Red" = "#E13C32",
#   "Epinion DarkBlue" = "#0F283C",
#   "Epinion DarkPurple" = "#641E3C",
#   "Epinion ClearBlue" = "#233CA0",
#   "Epinion LightDeepBlue" = "#68838B",
#   "Epinion LightPurple" = "#BA7384",
#   "Epinion LightBlue" = "#A7C7D7",
#   "Epinion Green" = "#004337",
#   "Epinion LightGreen" = "#73A89A",
#   "Epinion Gold" = "#C18022",
#   "Epinion LightGold" = "#EBC882"
#
# )

epipal_d$nosand <- list(

  "Epinion Red" = "#E13C32",
  "Epinion DarkBlue" = "#0F283C",
  "Epinion LightDeepBlue" = "#68838B",
  "Epinion DarkPurple" = "#641E3C",
  "Epinion ClearBlue" = "#233CA0",
  "Epinion LightPurple" = "#BA7384",
  "Epinion LightBlue" = "#A7C7D7",
  "Epinion Green" = "#004337",
  "Epinion LightGreen" = "#73A89A",
  "Epinion Gold" = "#C18022",
  "Epinion LightGold" = "#EBC882"

)

epipal_d$prio_green <- list(

  "Epinion Red" = "#E13C32",
  "Epinion DarkBlue" = "#0F283C",
  "Epinion LightDeepBlue" = "#68838B",
  "Epinion DarkPurple" = "#641E3C",
  "Epinion Green" = "#004337",
  "Epinion ClearBlue" = "#233CA0",
  "Epinion LightPurple" = "#BA7384",
  "Epinion LightBlue" = "#A7C7D7",
  "Epinion LightGreen" = "#73A89A",
  "Epinion Gold" = "#C18022",
  "Epinion LightGold" = "#EBC882"

)


epipal_d$likert5pb <- list(

  "Epinion DarkPurple" = "#641E3C",
  "Epinion LightPurple" = "#BA7384",
  "Epinion WarmSand" = "#E8E1D5",
  "Epinion LightBlue" = "#A7C7D7",
  "Epinion DarkBlue" = "#0F283C"

)

epipal_d$likert5pg <- list(

  "Epinion DarkPurple" = "#641E3C",
  "Epinion LightPurple" = "#BA7384",
  "Epinion WarmSand" = "#E8E1D5",
  "Epinion LightGold" = "#EBC882",
  "Epinion Gold" = "#C18022"

)

epipal_d$likert5gb <- list(

  "Epinion Gold" = "#C18022",
  "Epinion LightGold" = "#EBC882",
  "Epinion WarmSand" = "#E8E1D5",
  "Epinion LightBlue" = "#A7C7D7",
  "Epinion DarkBlue" = "#0F283C"

)


# Upload data to GitHub
usethis::use_data(epipal_d,
                  overwrite = TRUE)


