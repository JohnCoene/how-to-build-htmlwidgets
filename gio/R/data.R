#' Random data generator
#' 
#' @param n Number of rows.
#' 
#' @export
random_data <- function(n){
  # values
  values <- runif(n, 10^2, 10^4)
  values <- round(values)

  # edges
  import <- sample(iso2, n, replace = TRUE)
  export <- sample(iso2, n, replace = TRUE)

  df <- data.frame(
    e = export,
    i = import,
    v = values,
    stringsAsFactors = FALSE
  )

  # remove self-loop
  subset(df, df$e != df$i)
}

iso2 <- c("CF", "TD", "CL", "CC", "CK", "CU", "CD", "GU", "IR", "IQ", 
"LA", "LC", "ML", "MT", "YT", "MX", "NE", "OM", "RU", "ST", "SS", 
"SA", "NL", "CG", "FR", "CN", "SD", "WS", "YE", "HU", "LU", "AW", 
"CW", "HN", "SK", "KR", "DE", "PK", "GN", "AT", "BE", "SX", "RS", 
"IE", "ME", "GE", "VN", "VG", "VI", "AS", "BQ", "GF", "IM", "TL", 
"CZ", "AF", "AL", "DZ", "AD", "AO", "AI", "AQ", "AG", "AR", "AM", 
"AU", "AZ", "BS", "BH", "BD", "BB", "BL", "BY", "BZ", "BJ", "BM", 
"BT", "GW", "BO", "BW", "BV", "BR", "IO", "BN", "BG", "BF", "BI", 
"KH", "CM", "CA", "KY", "CX", "CO", "KM", "CR", "HR", "CY", "DK", 
"DJ", "DM", "DO", "KP", "EC", "EG", "SV", "AE", "ER", "EE", "ET", 
"FK", "FO", "FM", "FJ", "FI", "PF", "TF", "WF", "GA", "GM", "GH", 
"GI", "GR", "GL", "GD", "GP", "GT", "GG", "GQ", "GY", "HT", "HM", 
"SH", "BA", "VA", "HK", "IS", "IN", "ID", "IL", "IT", "CI", "JM", 
"JP", "JE", "JO", "KZ", "KE", "KI", "KN", "KW", "KG", "LV", "LB", 
"LS", "LR", "LY", "LI", "LT", "MO", "MK", "MG", "MW", "MY", "MV", 
"MP", "MH", "MQ", "MR", "MU", "UM", "PM", "MD", "MC", "MN", "MS", 
"MA", "MZ", "MM", "NA", "NR", "NP", "NC", "NZ", "NI", "NG", "NU", 
"NF", "NO", "PW", "PS", "PA", "PG", "PY", "PE", "PH", "PN", "PL", 
"PT", "PR", "QA", "RE", "RO", "RW", "MF", "SM", "SN", "SC", "SL", 
"SG", "SI", "SB", "SO", "GS", "ZA", "ES", "LK", "SR", "SJ", "SZ", 
"SE", "CH", "SY", "TW", "TJ", "TZ", "TH", "TG", "TK", "TO", "TT", 
"TN", "TR", "TM", "TC", "TV", "UG", "UA", "GB", "US", "UY", "UZ", 
"VU", "VE", "CV", "VC", "EH", "ZM", "ZW")
