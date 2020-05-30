#' Random data generator
#' 
#' @param n Number of rows.
#' 
#' @export
random_data <- function(n = 100){
  # values
  values <- runif(n, 10^5, 10^7)
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

  subset(df, df$e != df$i)
}

iso2 <- c("PE", "BF", "FR", "LY", "BY", "PK", "ID", "YE", "MG", "BO", 
"CI", "DZ", "CH", "CM", "MK", "BW", "UA", "KE", "TW", "JO", "MX", 
"AE", "BZ", "BR", "SL", "ML", "CD", "IT", "SO", "AF", "BD", "DO", 
"GW", "GH", "AT", "SE", "TR", "UG", "MZ", "JP", "NZ", "CU", "VE", 
"PT", "CO", "MR", "AO", "DE", "SD", "TH", "AU", "PG", "IQ", "HR", 
"GL", "NE", "DK", "LV", "RO", "ZM", "IR", "MM", "ET", "GT", "SR", 
"EH", "CZ", "TD", "AL", "FI", "SY", "KG", "SB", "OM", "PA", "AR", 
"GB", "CR", "PY", "GN", "IE", "NG", "TN", "PL", "NA", "ZA", "EG", 
"TZ", "GE", "SA", "VN", "RU", "HT", "BA", "IN", "CN", "CA", "SV", 
"GY", "BE", "GQ", "LS", "BG", "BI", "DJ", "AZ", "MY", "PH", "UY", 
"CG", "RS", "ME", "EE", "RW", "AM", "SN", "TG", "ES", "GA", "HU", 
"MW", "TJ", "KH", "KR", "HN", "IS", "NI", "CL", "MA", "LR", "NL", 
"CF", "SK", "LT", "ZW", "LK", "IL", "LA", "KP", "GR", "TM", "EC", 
"BJ", "SI", "NO", "MD", "LB", "NP", "ER", "US", "KZ", "AQ", "SZ", 
"UZ", "MN", "BT", "NC", "FJ", "KW", "TL", "BS", "VU", "FK", "GM", 
"QA", "JM", "CY", "PR", "PS", "BN", "TT", "CV", "PF", "WS", "LU", 
"KM", "MU", "FO", "ST", "DM", "TO", "KI", "FM", "BH", "AD", "MP", 
"PW", "SC", "AG", "BB", "TC", "VC", "LC", "YT", "VI", "GD", "MT", 
"MV", "KY", "KN", "MS", "BL", "NU", "PM", "CK", "WF", "AS", "MH", 
"AW", "LI", "VG", "SH", "JE", "AI", "GG", "SM", "BM", "TV", "NR", 
"GI", "PN", "MC", "VA", "IM", "GU", "SG")
