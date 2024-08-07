library(tidyverse)

buriti <- 
read_csv("C:/R_central/bioquant-2024-01/modulo-02/analise_sibbr/registros_mauritia_flexuosa/registros_mauritia_flexuosa.csv",
         na=c("", "NA"),
         col_types=cols_only(Institution="f",
                             year="d",
                             )) |> 
  mutate(sp="Mauritia flexuosa")

pequi <-  
  read_csv("C:/R_central/bioquant-2024-01/modulo-02/analise_sibbr/registros_caryocar_brasiliense/registros_caryocar_brasiliense.csv",
           na=c("", "NA"),
           col_types=cols_only(Institution="f",
                               year="d",
           )) |> 
  mutate(sp="Caryocar brasiliense")

dados <- 
bind_rows(pequi, buriti)

dados |> 
  write_csv2("C:/R_central/bioquant-2024-01/modulo-02/analise_sibbr/banco_dados.csv")

read_csv2("C:/R_central/bioquant-2024-01/modulo-02/analise_sibbr/banco_dados.csv")
