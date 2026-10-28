#importanción de librerias
library(ggplot2)
library(readr)
setwd("C:/Users/pablo/OneDrive/Desktop/Maestria CIencia de Datos/Lab Fundamentos de Programación con R/Trabajo final mensajes de twitter")

data_cruda <- read_csv(
  "mensajes.csv",
  locale = locale(encoding = "Latin1"),
  show_col_types = FALSE,
  name_repair = "minimal"
)

#Exploración de las variables

#user_id
ggplot(data_cruda, aes(x=factor(user_id)))+geom_bar()+coord_flip()

library(dplyr)
library(ggplot2)

#status_id
ggplot(data_cruda, aes(x=factor(status_id)))+geom_bar()+coord_flip()
#status_id: representa el identificador unico de cada tweet, debido a que cada valor representa el valor 1, es decir una fila.
porcentaje_status_unicos <- length(unique(data_cruda$status_id)) / nrow(data_cruda) * 100
porcentaje_status_unicos
#Contar los Tweets para Cantidad de Tweets

#created_at
ggplot(data_cruda, aes(x=factor(created_at)))+geom_bar()+coord_flip()

#screen_name
ggplot(data_cruda, aes(x=factor(screen_name)))+geom_bar()+coord_flip()

#text
ggplot(data_cruda, aes(x=factor(text)))+geom_bar()+coord_flip()

#source
ggplot(data_cruda, aes(x=factor(source)))+geom_bar()+coord_flip()
#Analizar y determinar fuentes a utilizar

#display_text_width
hist(data_cruda$display_text_width)
#Crear categoria de (Menos de 100/ Entre 100-200/ Más 200)

#reply_to_status_id
ggplot(data_cruda, aes(x = factor(reply_to_status_id))) +
  geom_bar() +
  coord_flip()


#reply_to_user_id
ggplot(data_cruda, aes(x = factor(reply_to_user_id))) +
  geom_bar() +
  coord_flip()

#reply_to_screen_name
ggplot(data_cruda, aes(x = factor(reply_to_screen_name))) +
  geom_bar() +
  coord_flip()

#is_quote
ggplot(data_cruda, aes(x = factor(is_quote))) +
  geom_bar() +
  coord_flip()
#contar los TRUE para la categoria "Cantidad de citas"

#is_retweet
ggplot(data_cruda, aes(x = factor(is_retweet))) +
  geom_bar() +
  coord_flip()
#contar los TRUE para la categoria "Cantidad de retweet"

#favorite_count
hist(data_cruda$favorite_count)

#retweet_count
hist(data_cruda$retweet_count)

#hashtags
ggplot(data_cruda, aes(x = factor(hashtags))) +
  geom_bar() +
  coord_flip()

#urls_url
ggplot(data_cruda, aes(x = factor(urls_url))) +
  geom_bar() +
  coord_flip()

#urls_t.co
ggplot(data_cruda, aes(x = factor(urls_t.co))) +
  geom_bar() +
  coord_flip()

#urls_expanded_url
ggplot(data_cruda, aes(x = factor(urls_expanded_url))) +
  geom_bar() +
  coord_flip()

#media_url
ggplot(data_cruda, aes(x = factor(media_url))) +
  geom_bar() +
  coord_flip()

#media_t.co
ggplot(data_cruda, aes(x = factor(media_t.co))) +
  geom_bar() +
  coord_flip()

#media_expanded_url
ggplot(data_cruda, aes(x = factor(media_expanded_url))) +
  geom_bar() +
  coord_flip()

#media_type
ggplot(data_cruda, aes(x = factor(media_type))) +
  geom_bar() +
  coord_flip()

#ext_media_url
ggplot(data_cruda, aes(x = factor(ext_media_url))) +
  geom_bar() +
  coord_flip()

#ext_media_t.co
ggplot(data_cruda, aes(x = factor(ext_media_t.co))) +
  geom_bar() +
  coord_flip()

#ext_media_expanded_url
ggplot(data_cruda, aes(x = factor(ext_media_expanded_url))) +
  geom_bar() +
  coord_flip()

#mentions_user_id
ggplot(data_cruda, aes(x = factor(mentions_user_id))) +
  geom_bar() +
  coord_flip()

#mentions_screen_name
ggplot(data_cruda, aes(x = factor(mentions_screen_name))) +
  geom_bar() +
  coord_flip()

#lang
ggplot(data_cruda, aes(x = factor(lang))) +
  geom_bar() +
  coord_flip()

#retweet_status_id
ggplot(data_cruda, aes(x = factor(retweet_status_id))) +
  geom_bar() +
  coord_flip()

#retweet_source
ggplot(data_cruda, aes(x = factor(retweet_source))) +
  geom_bar() +
  coord_flip()

#retweet_favorite_count
hist(data_cruda$retweet_favorite_count)

#retweet_retweet_count
hist(data_cruda$retweet_retweet_count)

#retweet_user_id
ggplot(data_cruda, aes(x = factor(retweet_user_id))) +
  geom_bar() +
  coord_flip()

#retweet_screen_name
ggplot(data_cruda, aes(x = factor(retweet_screen_name))) +
  geom_bar() +
  coord_flip()

#retweet_name
ggplot(data_cruda, aes(x = factor(retweet_name))) +
  geom_bar() +
  coord_flip()

#retweet_followers_count
hist(data_cruda$retweet_followers_count)

#retweet_friends_count
hist(data_cruda$retweet_friends_count)

#retweet_statuses_count
hist(data_cruda$retweet_statuses_count)

#retweet_location
ggplot(data_cruda, aes(x = factor(retweet_location))) +
  geom_bar() +
  coord_flip()

#retweet_description
ggplot(data_cruda, aes(x = factor(retweet_description))) +
  geom_bar() +
  coord_flip()

ggplot(data_cruda, aes(x = factor(retweet_verified))) +
  geom_bar() +
  coord_flip()

#location
ggplot(data_cruda, aes(x=factor(location)))+geom_bar()+coord_flip() 

#followers_count
hist(data_cruda$followers_count)

#friends_count
hist(data_cruda$friends_count)

#listed_count
hist(data_cruda$listed_count)

#statuses_count
hist(data_cruda$statuses_count)

#favourites_count
hist(data_cruda$favourites_count)

#account_created_at
ggplot(data_cruda, aes(x=factor(account_created_at)))+geom_bar()+coord_flip()

data_cruda %>%
  filter(!is.na(place_name)) %>%
  ggplot(aes(x = factor(place_name))) +
  geom_bar() +
  coord_flip()

data_cruda %>%
  filter(!is.na(place_full_name)) %>%
  ggplot(aes(x = factor(place_full_name))) +
  geom_bar() +
  coord_flip()

data_cruda %>%
#  filter(!is.na(place_type)) %>%
  ggplot(aes(x = factor(place_type))) +
  geom_bar() +
  coord_flip()

data_cruda %>%
  filter(!is.na(country)) %>%
  ggplot(aes(x = factor(country))) +
  geom_bar() +
  coord_flip()

data_cruda %>%
  filter(!is.na(country_code)) %>%
  ggplot(aes(x = factor(country_code))) +
  geom_bar() +
  coord_flip()

data_cruda %>%
  filter(!is.na(location)) %>%
  ggplot(aes(x = factor(location))) +
  geom_bar() +
  coord_flip()

ggplot(data_cruda, aes(x=factor(name)))+geom_bar() #Grafico de barras horizontal

ggplot(data_cruda, aes(x=factor(protected)))+geom_bar() #Grafico de barras horizontal

ggplot(data_cruda, aes(x=factor(verified)))+geom_bar() #Grafico de barras horizontal

ggplot(data_cruda, aes(x=factor(polarity)))+geom_bar() #Grafico de barras horizontal


# Resumen de calidad de datos por variable

resumen_data_cruda <- data.frame(
  
  variable = names(data_cruda),
  
  tipo_dato = sapply(data_cruda, function(x) class(x)[1]),
  
  total_registros = nrow(data_cruda),
  
  valores_unicos = sapply(data_cruda, function(x) {
    length(unique(x))
  }),
  
  cantidad_na = sapply(data_cruda, function(x) {
    sum(is.na(x))
  }),
  
  cantidad_vacios = sapply(data_cruda, function(x) {
    sum(
      !is.na(x) &
        trimws(as.character(x)) == ""
    )
  })
)

# Total de faltantes: NA o vacío
resumen_data_cruda$total_faltantes <- 
  resumen_data_cruda$cantidad_na +
  resumen_data_cruda$cantidad_vacios

# Porcentaje de faltantes
resumen_data_cruda$porcentaje_faltantes <- round(
  resumen_data_cruda$total_faltantes /
    resumen_data_cruda$total_registros * 100,
  2
)

# Ordenar desde las variables con más faltantes
resumen_data_cruda <- resumen_data_cruda[
  order(resumen_data_cruda$porcentaje_faltantes, decreasing = TRUE),
]

resumen_data_cruda

#--------------------------------------------------
  


library(dplyr)
library(tidyr)
library(stringr)
library(lubridate)
library(ggplot2)
library(igraph)

# Limpia textos y convierte vacíos en NA
limpiar_cadena <- function(x) {
  
  x <- str_squish(as.character(x))
  
  x[!is.na(x) & x == ""] <- NA_character_
  
  return(x)
}

# Limpia nombres de usuario
limpiar_handle <- function(x) {
  
  x <- limpiar_cadena(x)
  
  x <- str_remove(x, "^@")
  
  x <- str_to_lower(x)
  
  return(x)
}

# Obtiene el valor más frecuente de una variable
moda <- function(x) {
  
  x <- x[!is.na(x) & x != ""]
  
  if (length(x) == 0) {
    return(NA_character_)
  }
  
  names(sort(table(x), decreasing = TRUE))[1]
}

# Desviación estándar segura
sd_segura <- function(x) {
  
  x <- x[!is.na(x)]
  
  if (length(x) < 2) {
    return(NA_real_)
  }
  
  sd(x)
}

# Percentil entre 0 y 1 para el puntaje de relevancia
percentil_seguro <- function(x) {
  
  x <- replace_na(as.numeric(x), 0)
  
  if (length(unique(x)) < 2) {
    return(rep(0, length(x)))
  }
  
  percent_rank(x)
}

base_tweets <- data_cruda |>
  
  transmute(
    
    id_tweet = as.character(status_id),
    
    usuario_id = as.character(user_id),
    
    screen_name = limpiar_handle(screen_name),
    
    texto = limpiar_cadena(text),
    
    fecha_tweet = ymd_hms(
      created_at,
      tz = "UTC",
      quiet = TRUE
    ),
    
    fecha_creacion_cuenta = ymd_hms(
      account_created_at,
      tz = "UTC",
      quiet = TRUE
    ),
    
    fuente = limpiar_cadena(source),
    
    ancho_texto = as.numeric(display_text_width),
    
    es_cita = coalesce(as.logical(is_quote), FALSE),
    
    es_retweet = coalesce(as.logical(is_retweet), FALSE),
    
    reply_to_status_id = as.character(reply_to_status_id),
    
    reply_to_user_id = as.character(reply_to_user_id),
    
    reply_to_screen_name = limpiar_handle(reply_to_screen_name),
    
    retweet_screen_name = limpiar_handle(retweet_screen_name),
    
    quoted_screen_name = limpiar_handle(quoted_screen_name),
    
    mentions_screen_name = str_to_lower(
      str_remove_all(
        limpiar_cadena(mentions_screen_name),
        "@"
      )
    ),
    
    hashtags = limpiar_cadena(hashtags),
    
    tiene_url = !is.na(
      limpiar_cadena(urls_expanded_url)
    ),
    
    tiene_media = !is.na(
      limpiar_cadena(media_url)
    ),
    
    media_type = limpiar_cadena(media_type),
    
    polaridad = limpiar_cadena(polarity),
    
    favoritos = coalesce(
      as.numeric(favorite_count),
      0
    ),
    
    retweets = coalesce(
      as.numeric(retweet_count),
      0
    ),
    
    seguidores = coalesce(
      as.numeric(followers_count),
      0
    ),
    
    seguidos = coalesce(
      as.numeric(friends_count),
      0
    ),
    
    veces_en_listas = coalesce(
      as.numeric(listed_count),
      0
    ),
    
    tweets_historicos = coalesce(
      as.numeric(statuses_count),
      0
    ),
    
    cuenta_verificada = coalesce(
      as.logical(verified),
      FALSE
    )
  ) |>
  
  mutate(
    
    es_respuesta = !is.na(reply_to_status_id) |
      !is.na(reply_to_user_id) |
      !is.na(reply_to_screen_name),
    
    tiene_hashtag = !is.na(hashtags),
    
    tiene_mencion = !is.na(mentions_screen_name),
    
    cantidad_hashtags = if_else(
      tiene_hashtag,
      str_count(hashtags, "\\S+"),
      0L
    ),
    
    cantidad_menciones = if_else(
      tiene_mencion,
      str_count(mentions_screen_name, "\\S+"),
      0L
    ),
    
    # Categorías mutuamente excluyentes
    tipo_mensaje = case_when(
      es_retweet ~ "Retweet",
      es_cita ~ "Cita",
      es_respuesta ~ "Respuesta",
      TRUE ~ "Original"
    )
  )

fecha_corte <- max(
  base_tweets$fecha_tweet,
  na.rm = TRUE
)

base_tweets <- base_tweets |>
  
  mutate(
    antiguedad_cuenta_anios = as.numeric(
      difftime(
        fecha_corte,
        fecha_creacion_cuenta,
        units = "days"
      )
    ) / 365.25
  )

diccionario_usuarios <- base_tweets |>
  
  distinct(
    usuario_id,
    screen_name
  ) |>
  
  rename(
    reply_to_user_id = usuario_id,
    destino_por_id = screen_name
  )

aristas_menciones <- base_tweets |>
  
  filter(
    !is.na(screen_name),
    !is.na(mentions_screen_name)
  ) |>
  
  transmute(
    id_tweet,
    origen = screen_name,
    destino = mentions_screen_name,
    tipo_interaccion = "Mencion"
  ) |>
  
  separate_rows(
    destino,
    sep = "\\s+"
  ) |>
  
  filter(
    !is.na(origen),
    !is.na(destino),
    origen != destino
  )

aristas_respuestas <- base_tweets |>
  
  filter(es_respuesta) |>
  
  select(
    id_tweet,
    origen = screen_name,
    reply_to_user_id,
    reply_to_screen_name
  ) |>
  
  left_join(
    diccionario_usuarios,
    by = "reply_to_user_id"
  ) |>
  
  mutate(
    destino = coalesce(
      reply_to_screen_name,
      destino_por_id
    ),
    
    tipo_interaccion = "Respuesta"
  ) |>
  
  select(
    id_tweet,
    origen,
    destino,
    tipo_interaccion
  ) |>
  
  filter(
    !is.na(origen),
    !is.na(destino),
    origen != destino
  )

aristas_retweets <- base_tweets |>
  
  filter(
    es_retweet,
    !is.na(retweet_screen_name)
  ) |>
  
  transmute(
    id_tweet,
    origen = screen_name,
    destino = retweet_screen_name,
    tipo_interaccion = "Retweet"
  ) |>
  
  filter(
    !is.na(origen),
    !is.na(destino),
    origen != destino
  )

aristas_citas <- base_tweets |>
  
  filter(
    es_cita,
    !is.na(quoted_screen_name)
  ) |>
  
  transmute(
    id_tweet,
    origen = screen_name,
    destino = quoted_screen_name,
    tipo_interaccion = "Cita"
  ) |>
  
  filter(
    !is.na(origen),
    !is.na(destino),
    origen != destino
  )

aristas_red <- bind_rows(
  aristas_menciones,
  aristas_respuestas,
  aristas_retweets,
  aristas_citas
)

aristas_red |>
  count(
    tipo_interaccion,
    sort = TRUE
  )

aristas_ponderadas <- aristas_red |>
  
  count(
    origen,
    destino,
    name = "peso"
  ) |>
  
  mutate(
    distancia = 1 / peso
  )

nodos_red <- tibble(
  name = unique(
    c(
      aristas_ponderadas$origen,
      aristas_ponderadas$destino
    )
  )
)

red_twitter <- graph_from_data_frame(
  d = aristas_ponderadas,
  vertices = nodos_red,
  directed = TRUE
)

pagerank_red <- page_rank(
  red_twitter,
  directed = TRUE,
  weights = E(red_twitter)$peso
)$vector

metricas_red <- tibble(
  
  screen_name = names(pagerank_red),
  
  grado_entrada = degree(
    red_twitter,
    mode = "in"
  ),
  
  grado_salida = degree(
    red_twitter,
    mode = "out"
  ),
  
  interacciones_recibidas = strength(
    red_twitter,
    mode = "in",
    weights = E(red_twitter)$peso
  ),
  
  pagerank = as.numeric(
    pagerank_red
  ),
  
  betweenness = betweenness(
    red_twitter,
    directed = TRUE,
    weights = E(red_twitter)$distancia,
    normalized = TRUE
  )
)

menciones_recibidas <- aristas_red |>
  
  filter(
    tipo_interaccion == "Mencion"
  ) |>
  
  count(
    destino,
    name = "menciones_recibidas"
  ) |>
  
  rename(
    screen_name = destino
  )

comentarios_recibidos <- aristas_red |>
  
  filter(
    tipo_interaccion == "Respuesta"
  ) |>
  
  count(
    destino,
    name = "comentarios_recibidos"
  ) |>
  
  rename(
    screen_name = destino
  )

retweets_recibidos_red <- aristas_red |>
  
  filter(
    tipo_interaccion == "Retweet"
  ) |>
  
  count(
    destino,
    name = "retweets_recibidos_red"
  ) |>
  
  rename(
    screen_name = destino
  )

citas_recibidas <- aristas_red |>
  
  filter(
    tipo_interaccion == "Cita"
  ) |>
  
  count(
    destino,
    name = "citas_recibidas"
  ) |>
  
  rename(
    screen_name = destino
  )

actividad_usuarios <- base_tweets |>
  
  group_by(
    usuario_id
  ) |>
  
  summarise(
    
    screen_name = moda(screen_name),
    
    fuente_mas_usada = moda(fuente),
    
    cantidad_total_mensajes = n(),
    
    tweets_originales = sum(
      tipo_mensaje == "Original"
    ),
    
    respuestas_emitidas = sum(
      tipo_mensaje == "Respuesta"
    ),
    
    citas_emitidas = sum(
      tipo_mensaje == "Cita"
    ),
    
    retweets_emitidos = sum(
      tipo_mensaje == "Retweet"
    ),
    
    publicaciones_no_retweet = sum(
      tipo_mensaje != "Retweet"
    ),
    
    ancho_texto_minimo = min(
      ancho_texto,
      na.rm = TRUE
    ),
    
    ancho_texto_maximo = max(
      ancho_texto,
      na.rm = TRUE
    ),
    
    ancho_texto_promedio = mean(
      ancho_texto,
      na.rm = TRUE
    ),
    
    ancho_texto_desviacion = sd_segura(
      ancho_texto
    ),
    
    hashtags_emitidos = sum(
      cantidad_hashtags,
      na.rm = TRUE
    ),
    
    menciones_emitidas = sum(
      cantidad_menciones,
      na.rm = TRUE
    ),
    
    mensajes_con_url = sum(
      tiene_url
    ),
    
    mensajes_con_multimedia = sum(
      tiene_media
    ),
    
    # Solo publicaciones propias: no se atribuye al retweeter
    # el engagement del tweet original.
    likes_recibidos = sum(
      if_else(
        tipo_mensaje != "Retweet",
        favoritos,
        0
      ),
      na.rm = TRUE
    ),
    
    retweets_recibidos = sum(
      if_else(
        tipo_mensaje != "Retweet",
        retweets,
        0
      ),
      na.rm = TRUE
    ),
    
    engagement_recibido = sum(
      if_else(
        tipo_mensaje != "Retweet",
        favoritos + retweets,
        0
      ),
      na.rm = TRUE
    ),
    
    .groups = "drop"
  )

perfil_usuarios <- base_tweets |>
  
  arrange(
    usuario_id,
    fecha_tweet
  ) |>
  
  group_by(
    usuario_id
  ) |>
  
  slice_tail(n = 1) |>
  
  transmute(
    
    usuario_id,
    
    fecha_creacion_cuenta,
    
    antiguedad_cuenta_anios,
    
    seguidores_observados = seguidores,
    
    seguidos_observados = seguidos,
    
    veces_en_listas,
    
    tweets_historicos,
    
    cuenta_verificada
  )

dataset_usuarios <- actividad_usuarios |>
  
  left_join(
    perfil_usuarios,
    by = "usuario_id"
  ) |>
  
  left_join(
    menciones_recibidas,
    by = "screen_name"
  ) |>
  
  left_join(
    comentarios_recibidos,
    by = "screen_name"
  ) |>
  
  left_join(
    retweets_recibidos_red,
    by = "screen_name"
  ) |>
  
  left_join(
    citas_recibidas,
    by = "screen_name"
  ) |>
  
  left_join(
    metricas_red,
    by = "screen_name"
  ) |>
  
  mutate(
    
    menciones_recibidas = replace_na(
      menciones_recibidas,
      0
    ),
    
    comentarios_recibidos = replace_na(
      comentarios_recibidos,
      0
    ),
    
    retweets_recibidos_red = replace_na(
      retweets_recibidos_red,
      0
    ),
    
    citas_recibidas = replace_na(
      citas_recibidas,
      0
    ),
    
    grado_entrada = replace_na(
      grado_entrada,
      0
    ),
    
    grado_salida = replace_na(
      grado_salida,
      0
    ),
    
    interacciones_recibidas = replace_na(
      interacciones_recibidas,
      0
    ),
    
    pagerank = replace_na(
      pagerank,
      0
    ),
    
    betweenness = replace_na(
      betweenness,
      0
    )
  )

dataset_usuarios <- dataset_usuarios |>
  
  mutate(
    
    p_seguidores = percentil_seguro(
      log1p(seguidores_observados)
    ),
    
    p_engagement = percentil_seguro(
      log1p(engagement_recibido)
    ),
    
    p_menciones = percentil_seguro(
      log1p(menciones_recibidas)
    ),
    
    p_grado_entrada = percentil_seguro(
      log1p(grado_entrada)
    ),
    
    p_pagerank = percentil_seguro(
      pagerank
    ),
    
    p_betweenness = percentil_seguro(
      betweenness
    ),
    
    puntaje_relevancia = round(
      100 * (
        0.20 * p_seguidores +
          0.25 * p_engagement +
          0.15 * p_menciones +
          0.15 * p_grado_entrada +
          0.15 * p_pagerank +
          0.10 * p_betweenness
      ),
      2
    ),
    
    quintil_relevancia = ntile(
      puntaje_relevancia,
      5
    ),
    
    usuario_relevante = if_else(
      quintil_relevancia == 5,
      1L,
      0L
    )
  )

nrow(dataset_usuarios)

n_distinct(data_cruda$user_id)

#---------------------------------------------------------------------------
#tweets

dataset_tweets_modelo <- base_tweets |>
  
  filter(
    es_retweet == FALSE
  ) |>
  
  transmute(
    
    id_tweet,
    
    usuario_id,
    
    screen_name,
    
    texto,
    
    fecha_tweet,
    
    hora_publicacion = hour(
      fecha_tweet
    ),
    
    dia_semana = wday(
      fecha_tweet,
      label = TRUE,
      week_start = 1
    ),
    
    antiguedad_cuenta_anios,
    
    seguidores_autor = seguidores,
    
    cuenta_verificada,
    
    fuente = coalesce(
      fuente,
      "Sin dato"
    ),
    
    tipo_mensaje,
    
    ancho_texto,
    
    tiene_hashtag,
    
    cantidad_hashtags,
    
    tiene_mencion,
    
    cantidad_menciones,
    
    tiene_url,
    
    tiene_media,
    
    media_type = coalesce(
      media_type,
      "Sin multimedia"
    ),
    
    polaridad = coalesce(
      polaridad,
      "Sin dato"
    ),
    
    likes = favoritos,
    
    retweets = retweets,
    
    engagement = favoritos + retweets
  )

umbral_relevancia_tweet <- quantile(
  dataset_tweets_modelo$engagement,
  probs = 0.80,
  na.rm = TRUE
)

umbral_relevancia_tweet

dataset_tweets_modelo <- dataset_tweets_modelo |>
  
  mutate(
    tweet_relevante = if_else(
      engagement >= umbral_relevancia_tweet,
      1L,
      0L
    )
  )

dataset_tweets_modelo |>
  count(
    tweet_relevante
  ) |>
  mutate(
    porcentaje = round(
      n / sum(n) * 100,
      2
    )
  )

dataset_usuarios_modelo <- dataset_usuarios |>
  
  transmute(
    
    usuario_id,
    
    screen_name,
    
    usuario_relevante,
    
    antiguedad_cuenta_anios,
    
    cuenta_verificada,
    
    fuente_mas_usada,
    
    cantidad_total_mensajes,
    
    tweets_originales,
    
    respuestas_emitidas,
    
    citas_emitidas,
    
    retweets_emitidos,
    
    ancho_texto_promedio,
    
    hashtags_emitidos,
    
    menciones_emitidas,
    
    mensajes_con_url,
    
    mensajes_con_multimedia
  )


hist(
  dataset_usuarios$antiguedad_cuenta_anios,
  
  breaks = seq(
    0,
    ceiling(
      max(
        dataset_usuarios$antiguedad_cuenta_anios,
        na.rm = TRUE
      )
    ) + 1,
    by = 1
  ),
  
  main = "Distribución de antigüedad de las cuentas",
  
  xlab = "Antigüedad de la cuenta en años",
  
  ylab = "Cantidad de usuarios"
)

#----------------------------------------------------------------------------------

top_relevantes <- dataset_usuarios |>
  
  arrange(
    desc(puntaje_relevancia)
  ) |>
  
  slice_head(n = 15)

ggplot(
  top_relevantes,
  aes(
    x = reorder(screen_name, puntaje_relevancia),
    y = puntaje_relevancia
  )
) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Top 15 usuarios con mayor relevancia",
    x = "Cuenta",
    y = "Puntaje de relevancia"
  )

top_pagerank <- dataset_usuarios |>
  
  arrange(
    desc(pagerank)
  ) |>
  
  slice_head(n = 15)

ggplot(
  top_pagerank,
  aes(
    x = reorder(screen_name, pagerank),
    y = pagerank
  )
) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Top 15 cuentas con mayor PageRank",
    x = "Cuenta",
    y = "PageRank"
  )

fuentes_principales <- dataset_usuarios |>
  
  count(
    fuente_mas_usada,
    sort = TRUE
  ) |>
  
  slice_head(n = 10)

ggplot(
  fuentes_principales,
  aes(
    x = reorder(fuente_mas_usada, n),
    y = n
  )
) +
  geom_col() +
  coord_flip() +
  labs(
    title = "Principales fuentes utilizadas por los usuarios",
    x = "Fuente",
    y = "Cantidad de usuarios"
  )

ggplot(
  dataset_usuarios,
  aes(
    x = log1p(seguidores_observados),
    y = log1p(engagement_recibido)
  )
) +
  geom_point() +
  labs(
    title = "Relación entre seguidores y engagement recibido",
    x = "Log(1 + seguidores)",
    y = "Log(1 + engagement)"
  )

dataset_tweets_modelo |>
  
  count(
    tipo_mensaje,
    tweet_relevante
  ) |>
  
  mutate(
    tweet_relevante = if_else(
      tweet_relevante == 1,
      "Relevante",
      "No relevante"
    )
  ) |>
  
  ggplot(
    aes(
      x = tipo_mensaje,
      y = n,
      fill = tweet_relevante
    )
  ) +
  geom_col(
    position = "dodge"
  ) +
  labs(
    title = "Tweets relevantes según tipo de mensaje",
    x = "Tipo de mensaje",
    y = "Cantidad de tweets",
    fill = "Clasificación"
  )

hist(
  log1p(dataset_tweets_modelo$engagement),
  
  main = "Distribución del engagement de tweets",
  
  xlab = "Log(1 + favoritos + retweets)",
  
  ylab = "Cantidad de tweets"
)







  
# 1. Preparar los datos: Contar y marcar el Top 3
# Primero calculamos la cuenta por categoría
base_tweets_prep <- base_tweets %>%
count(tipo_mensaje, name = "conteo") %>%       # Cuenta ocurrencias
arrange(desc(conteo)) %>%                      # Ordena de mayor a menor
mutate(es_top3 = ifelse(row_number() <= 1, "Top 1", "Otros")) # Crea la etiqueta

# 2. Crear el gráfico
ggplot(base_tweets_prep, aes(
  x = reorder(tipo_mensaje, conteo),
  y = conteo,
  fill = es_top3
)) +
  geom_bar(stat = "identity") +
  coord_flip() +
  scale_fill_manual(
    values = c(
      "Top 1" = "#1565A7",
      "Otros" = "#6B7280"
    ),
    guide = "none"
  ) +
  labs(
    x = "Tipo de mensaje",
    y = "Cantidad"
  ) +
  theme(
    plot.background = element_rect(fill = "#ededed", color = NA),
    panel.background = element_rect(fill = "#ededed", color = NA),
    panel.grid.major = element_blank(),
    panel.grid.minor = element_blank()
  )


fuente_prep <- base_tweets %>%
  
  # 1. Quitar valores NA o vacíos
  filter(!is.na(fuente) & trimws(fuente) != "") %>%
  
  # 2. Crear categorías principales
  mutate(
    etiqueta = case_when(
      fuente == "Twitter for Android" ~ "Twitter for Android",
      fuente == "Twitter for iPhone"  ~ "Twitter for iPhone",
      fuente == "Twitter Web App"     ~ "Twitter Web App",
      TRUE                            ~ "Otros"
    )
  ) %>%
  
  # 3. Agrupar y sumar todas las fuentes clasificadas como "Otros"
  count(etiqueta, name = "conteo") %>%
  
  # 4. Definir orden para que Android aparezca arriba
  mutate(
    etiqueta = factor(
      etiqueta,
      levels = c(
        "Otros",
        "Twitter Web App",
        "Twitter for iPhone",
        "Twitter for Android"
      )
    )
  )

ggplot(
  fuente_prep,
  aes(
    x = etiqueta,
    y = conteo,
    fill = etiqueta
  )
) +
  
  geom_col() +
  
  geom_text(
    aes(label = conteo),
    hjust = -0.15,
    size = 4
  ) +
  
  coord_flip() +
  
  scale_fill_manual(
    values = c(
      "Twitter for Android" = "#1565A7",
      "Twitter for iPhone"  = "#1565A7",
      "Twitter Web App"     = "#1565A7",
      "Otros"               = "#6B7280"
    ),
    guide = "none"
  ) +
  
  scale_y_continuous(
    expand = expansion(mult = c(0, 0.12))
  ) +
  
  labs(
    x = "Fuente",
    y = "Cantidad de mensajes"
  ) +
  
  theme(
    plot.background = element_rect(
      fill = "#ededed",
      color = NA
    ),
    
    panel.background = element_rect(
      fill = "#ededed",
      color = NA
    ),
    
    panel.grid.major = element_blank(),
    
    panel.grid.minor = element_blank(),
    
    axis.text = element_text(
      color = "black"
    ),
    
    axis.title = element_text(
      color = "black"
    ),
    
    plot.title = element_text(
      face = "bold",
      color = "black"
    )
  )

antiguedad <- dataset_usuarios$antiguedad_cuenta_anios

# Eliminar NA, infinitos o valores inválidos
antiguedad <- antiguedad[
  !is.na(antiguedad) &
    is.finite(antiguedad) &
    antiguedad >= 0
]

# Fondo general del gráfico
par(
  bg = "#ededed",
  col.axis = "black",
  col.lab = "black",
  col.main = "black"
)

# 1. Calcular histograma sin dibujar
h <- hist(
  antiguedad,
  breaks = seq(
    0,
    ceiling(max(antiguedad)) + 1,
    by = 1
  ),
  plot = FALSE
)

# 2. Identificar la barra con mayor frecuencia
idx_max <- which.max(h$counts)

# 3. Dibujar histograma base
plot(
  h,
  col = "#6B7280",
  border = "#ededed",
  main = "Distribución de antigüedad de las cuentas",
  xlab = "Antigüedad de la cuenta en años",
  ylab = "Cantidad de usuarios",
  las = 1
)

# 4. Resaltar la barra con mayor frecuencia
rect(
  xleft = h$breaks[idx_max],
  ybottom = 0,
  xright = h$breaks[idx_max + 1],
  ytop = h$counts[idx_max],
  col = "#1565A7",
  border = "#1565A7"
)

library(dplyr)
library(ggplot2)

# Preparar datos desde el dataset de usuarios
datos_verificados <- dataset_usuarios %>%
  filter(!is.na(cuenta_verificada)) %>%
  count(cuenta_verificada, name = "cantidad") %>%
  mutate(
    cuenta_verificada = factor(
      cuenta_verificada,
      levels = c(TRUE, FALSE),
      labels = c("Verificadas", "No verificadas")
    ),
    
    porcentaje = round(cantidad / sum(cantidad) * 100, 1),
    
    etiqueta = paste0(
      format(cantidad, big.mark = ","),
      " (",
      porcentaje,
      "%)"
    )
  )

# Gráfico de barras con etiquetas fuera
ggplot(
  datos_verificados,
  aes(
    x = reorder(cuenta_verificada, cantidad),
    y = cantidad,
    fill = cuenta_verificada
  )
) +
  geom_col(width = 0.65) +
  
  geom_text(
    aes(label = etiqueta),
    hjust = -0.12,
    size = 4,
    fontface = "bold",
    color = "black"
  ) +
  
  coord_flip() +
  
  scale_fill_manual(
    values = c(
      "Verificadas" = "#1565A7",
      "No verificadas" = "#6B7280"
    ),
    guide = "none"
  ) +
  
  scale_y_continuous(
    expand = expansion(mult = c(0, 0.18))
  ) +
  
  labs(
    title = "Distribución de cuentas verificadas",
    x = NULL,
    y = "Cantidad de cuentas"
  ) +
  
  theme_minimal() +
  
  theme(
    plot.background = element_rect(
      fill = "#ededed",
      color = NA
    ),
    
    panel.background = element_rect(
      fill = "#ededed",
      color = NA
    ),
    
    panel.grid.major.y = element_blank(),
    panel.grid.minor = element_blank(),
    
    panel.grid.major.x = element_line(
      color = "white",
      linewidth = 0.4
    ),
    
    axis.text = element_text(
      color = "black",
      size = 11
    ),
    
    axis.title = element_text(
      color = "black"
    ),
    
    plot.title = element_text(
      face = "bold",
      color = "black",
      size = 15
    )
  )

library(dplyr)
library(ggplot2)
library(forcats) # Para ordenar factores fácilmente

# --- 1. PREPARACIÓN DE DATOS ---
modelo_limpio <- modelo_tweets %>%
  filter(!is.na(screen_name) & screen_name != "") %>%
  filter(!is.na(seguidores_autor)) %>%
  filter(!is.na(engagement))

# --- 2. TOP 10 POR CANTIDAD DE MENSAJES (id_tweet) ---
# Contamos cuántas veces aparece cada usuario
top_10_mensajes <- modelo_limpio %>%
  count(screen_name, name = "cantidad_mensajes") %>%
  arrange(desc(cantidad_mensajes)) %>%
  head(10) %>%
  mutate(screen_name = fct_reorder(screen_name, cantidad_mensajes)) # Para ordenar en el gráfico

# Gráfico de barras
p_mensajes <- ggplot(top_10_mensajes, aes(x = screen_name, y = cantidad_mensajes, fill = "Top 10")) +
  geom_bar(stat = "identity", color = "white", width = 0.8) +
  coord_flip() +
  scale_fill_manual(values = "#1565A7", name = "Métrica") +
  labs(title = "Mensajes",
       x = "Cuenta",
       y = "Cantidad de Tweets") +
  theme_minimal() +
  theme(legend.position = "none")

# --- 3. TOP 10 POR CANTIDAD DE SEGUIDORES (seguidores_autor) ---
# Sumamos los seguidores por usuario (si hay múltiples tweets, sumamos)
top_10_seguidores <- modelo_limpio %>%
  group_by(screen_name) %>%
  summarise(total_seguidores = max(seguidores_autor), .groups = "drop") %>% # O usa sum() si quieres total acumulado
  arrange(desc(total_seguidores)) %>%
  head(10) %>%
  mutate(screen_name = fct_reorder(screen_name, total_seguidores))

# Gráfico de barras
p_seguidores <- ggplot(top_10_seguidores, aes(x = screen_name, y = total_seguidores, fill = "Top 10")) +
  geom_bar(stat = "identity", color = "white", width = 0.8) +
  coord_flip() +
  scale_fill_manual(values = "#1565A7", name = "Métrica") +
  labs(title = "Seguidores",
       x = "Cuenta",
       y = "Seguidores (Total)") +
  theme_minimal() +
  theme(legend.position = "none")

# --- 4. TOP 10 POR ENGAGEMENT RECIBIDO (engagement) ---
# Sumamos el engagement por usuario
top_10_engagement <- modelo_limpio %>%
  group_by(screen_name) %>%
  summarise(total_engagement = sum(engagement, na.rm = TRUE), .groups = "drop") %>%
  arrange(desc(total_engagement)) %>%
  head(10) %>%
  mutate(screen_name = fct_reorder(screen_name, total_engagement))

# Gráfico de barras
p_engagement <- ggplot(top_10_engagement, aes(x = screen_name, y = total_engagement, fill = "Top 10")) +
  geom_bar(stat = "identity", color = "white", width = 0.8) +
  coord_flip() +
  scale_fill_manual(values = "#1565A7", name = "Métrica") +
  labs(title = "Engagement",
       x = "Cuenta",
       y = "Engagement Total") +
  theme_minimal() +
  theme(legend.position = "none")

# --- 5. MOSTRAR LOS GRÁFICOS ---
# En RStudio, cada gráfico se mostrará por separado si los ejecutas uno por uno.
# Si quieres mostrarlos en una sola ventana, puedes usar gridExtra o patchwork

# Opcional: Mostrar los 3 gráficos en una fila
library(patchwork)
p_mensajes + p_seguidores + p_engagement + plot_layout(nrow = 1, ncol = 3)

install.packages(c("igraph", "ggraph", "tidygraph", "dplyr"))

library(igraph)
library(ggraph)
library(tidygraph)
library(dplyr)
install.packages("ggrepel")

library(dplyr)
library(igraph)
library(ggraph)
library(tidygraph)
library(ggrepel) # Para que las etiquetas no se solapen
library(stringr)

# --- 1. PREPARACIÓN DE LA RED (ARISTAS) ---
# Filtramos: quitamos NAs, vacíos y respuestas a uno mismo
red_data <- base_tweets %>%
  filter(!is.na(screen_name) & screen_name != "") %>%
  filter(!is.na(reply_to_screen_name) & reply_to_screen_name != "") %>%
  filter(screen_name != reply_to_screen_name) %>% # Eliminar auto-respuestas
  mutate(
    # Normalizar nombres (quitar @ si los tiene y pasar a minúsculas para evitar duplicados)
    origen = tolower(str_remove(screen_name, "^@")),
    destino = tolower(str_remove(reply_to_screen_name, "^@"))
  ) %>%
  # Contar cuántas veces interactuaron origen y destino
  count(origen, destino, tipo_mensaje, name = "peso") %>%
  ungroup()

# --- 2. CREAR EL OBJETO GRÁFICO (TIDYGRAPH) ---
grafo <- red_data %>%
  as_tbl_graph(directed = TRUE)

# --- 3. CALCULAR MÉTRICAS DE LA RED (IGRAPH) ---
# Convertimos temporalmente a igraph para calcular métricas rápidas
g_igraph <- as.igraph(grafo)

# Grado de Entrada (¿Cuántas veces respondieron a esta cuenta? = Popularidad)
grado_entrada <- degree(g_igraph, mode = "in")

# Grado de Salida (¿Cuántas cuentas distintas respondió esta cuenta? = Actividad)
grado_salida <- degree(g_igraph, mode = "out")

# PageRank (Importancia estructural en la red)
pr <- page_rank(g_igraph, directed = TRUE)$vector

# Betweenness (¿Es esta cuenta un puente entre grupos?)
bw <- betweenness(g_igraph, directed = TRUE)

# --- 4. AÑADIR MÉTRICAS AL GRAFO ---
grafo <- grafo %>%
  activate(nodes) %>%
  mutate(
    grado_entrada = grado_entrada,
    grado_salida = grado_salida,
    pagerank = pr,
    betweenness = bw,
    # Definir "Importancia": Top 2% de PageRank o entre los 50 más conectados
    es_top = ifelse(pagerank > quantile(pagerank, 0.98) | grado_entrada > quantile(grado_entrada, 0.95), "Top", "Resto"),
    # Tamaño del nodo proporcional al PageRank (mínimo 2)
    tamano = ifelse(pagerank > 0, pagerank * 500, 2),
    # Etiqueta: Solo mostramos si es del "Top"
    etiqueta = ifelse(es_top == "Top", name, NA_character_)
  )

# --- 5. GRAFICAR ---
ggraph(grafo, layout = "fr") + # Layout "fr" (Fruchterman-Reingold) es ideal para redes sociales
  # Bordes (Conexiones)
  geom_edge_link(aes(width = peso, alpha = peso), color = "gray60") +
  scale_edge_width(range = c(0.2, 1.5)) + # Grosor según peso
  scale_edge_alpha(range = c(0.1, 0.6)) +
  # Nodos (Cuentas)
  geom_node_point(aes(color = es_top, size = tamano), alpha = 0.8, shape = 21, stroke = 0.5) +
  scale_color_manual(values = c("Top" = "#1565A7", "Resto" = "#CCCCCC")) + # Tu color azul para el Top
  scale_size_continuous(range = c(2, 10)) + # Rango de tamaños
  # Etiquetas (Solo las importantes)
  geom_node_text(aes(label = etiqueta), 
                 repel = TRUE, 
                 size = 3, 
                 fontface = "bold",
                 color = "black",
                 box.padding = 0.3, 
                 point.padding = 0.5,
                 segment.color = "gray50") +
  # Estilos visuales
  theme_void() +
  theme(
    legend.position = "right",
    plot.title = element_text(hjust = 0.5, face = "bold", size = 16),
    plot.subtitle = element_text(hjust = 0.5, size = 12, color = "gray40"),
    legend.title = element_text(size = 10),
    legend.text = element_text(size = 9)
  ) +
  labs(
    title = "Red de Respuestas e Interacciones",
    subtitle = "Tamaño: Importancia (PageRank) | Color: Top 2% de influencia",
    color = "Nivel de Influencia",
    size = "PageRank"
  )





library(dplyr)
library(stringr)
library(tidygraph)
library(igraph)
library(ggraph)

# -----------------------------------------
# 1. Construcción de aristas: respuestas
# -----------------------------------------

red_data <- base_tweets %>%
  filter(
    !is.na(screen_name),
    screen_name != "",
    !is.na(reply_to_screen_name),
    reply_to_screen_name != ""
  ) %>%
  mutate(
    origen = tolower(str_remove(screen_name, "^@")),
    destino = tolower(str_remove(reply_to_screen_name, "^@"))
  ) %>%
  filter(origen != destino) %>%
  count(origen, destino, name = "peso") %>%
  ungroup()

# -----------------------------------------
# 2. Crear red dirigida
# -----------------------------------------

grafo <- red_data %>%
  as_tbl_graph(directed = TRUE)

g_igraph <- as.igraph(grafo)

# Distancia inversa al peso
E(g_igraph)$distancia <- 1 / E(g_igraph)$peso

# -----------------------------------------
# 3. Métricas de red
# -----------------------------------------

grado_entrada <- degree(
  g_igraph,
  mode = "in"
)

grado_salida <- degree(
  g_igraph,
  mode = "out"
)

pr <- page_rank(
  g_igraph,
  directed = TRUE,
  weights = E(g_igraph)$peso
)$vector

bw <- betweenness(
  g_igraph,
  directed = TRUE,
  weights = E(g_igraph)$distancia,
  normalized = TRUE
)

# -----------------------------------------
# 4. Agregar métricas al grafo
# -----------------------------------------

grafo <- grafo %>%
  activate(nodes) %>%
  mutate(
    grado_entrada = grado_entrada,
    grado_salida = grado_salida,
    pagerank = pr,
    betweenness = bw,
    
    es_top = ifelse(
      pagerank >= quantile(pagerank, 0.98),
      "Top 2% PageRank",
      "Resto"
    ),
    
    etiqueta = ifelse(
      es_top == "Top 2% PageRank",
      name,
      NA_character_
    )
  )

# -----------------------------------------
# 5. Visualización
# -----------------------------------------

ggraph(grafo, layout = "fr") +
  
  # Conexiones: más visibles sobre el fondo gris de PowerPoint
  geom_edge_link(
    aes(width = peso, alpha = peso),
    color = "#4B5563"
  ) +
  
  scale_edge_width(
    range = c(0.3, 2)
  ) +
  
  scale_edge_alpha(
    range = c(0.18, 0.75),
    guide = "none"
  ) +
  
  # Nodos: blanco para el resto y azul para las cuentas destacadas
  geom_node_point(
    aes(
      fill = es_top,
      size = pagerank
    ),
    color = "#374151",
    alpha = 1,
    shape = 21,
    stroke = 0.7
  ) +
  
  scale_fill_manual(
    values = c(
      "Top 2% PageRank" = "#1565A7",
      "Resto" = "#FFFFFF"
    )
  ) +
  
  scale_size_continuous(
    range = c(2.5, 11)
  ) +
  
  # Etiquetas con fondo blanco para mayor contraste
  geom_node_label(
    aes(label = etiqueta),
    repel = TRUE,
    size = 3,
    fontface = "bold",
    color = "black",
    fill = "white",
    alpha = 0.92,
    label.size = 0.2,
    label.r = unit(0.08, "lines"),
    box.padding = 0.35,
    point.padding = 0.5,
    segment.color = "#6B7280",
    segment.size = 0.3
  ) +
  
  theme_void() +
  
  theme(
    
    # Transparente para que use el fondo gris del PowerPoint
    plot.background = element_rect(
      fill = "transparent",
      color = NA
    ),
    
    panel.background = element_rect(
      fill = "transparent",
      color = NA
    ),
    
    legend.background = element_rect(
      fill = "transparent",
      color = NA
    ),
    
    legend.key = element_rect(
      fill = "transparent",
      color = NA
    ),
    
    legend.position = "right",
    
    plot.title = element_text(
      hjust = 0.5,
      face = "bold",
      size = 16,
      color = "black"
    ),
    
    plot.subtitle = element_text(
      hjust = 0.5,
      size = 11,
      color = "#374151"
    ),
    
    legend.title = element_text(
      size = 10,
      face = "bold",
      color = "black"
    ),
    
    legend.text = element_text(
      size = 9,
      color = "black"
    )
  ) +
  
  labs(
    title = "Red de respuestas entre cuentas",
    subtitle = "Tamaño: importancia estructural (PageRank) | Azul: Top 2 % por PageRank",
    fill = "Nivel de influencia",
    size = "PageRank",
    edge_width = "Frecuencia de respuestas"
  )



library(dplyr)
library(tidyr)
library(stringr)
library(tidygraph)
library(igraph)
library(ggraph)

aristas_menciones <- base_tweets %>%
  filter(!is.na(screen_name), screen_name != "") %>%
  filter(!is.na(mentions_screen_name), mentions_screen_name != "") %>%
  mutate(
    origen = tolower(str_remove(screen_name, "^@")),
    menciones_screen_name = tolower(mentions_screen_name)
  ) %>%
  separate_rows(mentions_screen_name, sep = "\\s+") %>%
  mutate(
    destino = str_remove(menciones_screen_name, "^@")
  ) %>%
  filter(destino != "", !is.na(destino), origen != destino) %>%
  transmute(
    origen,
    destino,
    tipo_interaccion = "Mencion"
  )

aristas_respuestas <- base_tweets %>%
  filter(!is.na(screen_name), screen_name != "") %>%
  filter(!is.na(reply_to_screen_name), reply_to_screen_name != "") %>%
  mutate(
    origen = tolower(str_remove(screen_name, "^@")),
    destino = tolower(str_remove(reply_to_screen_name, "^@"))
  ) %>%
  filter(origen != destino) %>%
  transmute(
    origen,
    destino,
    tipo_interaccion = "Respuesta"
  )
aristas_retweets <- base_tweets %>%
  filter(!is.na(screen_name), screen_name != "") %>%
  filter(tipo_mensaje == "Retweet")
  filter(!is.na(retweet_screen_name), retweet_screen_name != "") %>%
  mutate(
    origen = tolower(str_remove(screen_name, "^@")),
    destino = tolower(str_remove(retweet_screen_name, "^@"))
  ) %>%
  filter(origen != destino) %>%
  transmute(
    origen,
    destino,
    tipo_interaccion = "Retweet"
  )
aristas_citas <- base_tweets %>%
  filter(!is.na(screen_name), screen_name != "") %>%
  filter(is_quote == TRUE) %>%
  filter(!is.na(quoted_screen_name), quoted_screen_name != "") %>%
  mutate(
    origen = tolower(str_remove(screen_name, "^@")),
    destino = tolower(str_remove(quoted_screen_name, "^@"))
  ) %>%
  filter(origen != destino) %>%
  transmute(
    origen,
    destino,
    tipo_interaccion = "Cita"
  )
aristas_red_completa <- bind_rows(
  aristas_menciones,
  aristas_respuestas,
  aristas_retweets,
  aristas_citas
)
aristas_red_completa %>%
  count(tipo_interaccion, sort = TRUE)




#GRAFICO DE RED:
  
  library(dplyr)
library(igraph)
library(ggraph)
library(tidygraph)
library(ggrepel) # Para que las etiquetas no se solapen

# --- 1. PREPARACIÓN DE LA RED (ARISTAS) ---
# Filtramos: quitamos NAs, vacíos y respuestas a uno mismo
red_data <- base_tweets %>%
  filter(!is.na(screen_name) & screen_name != "") %>%
  filter(!is.na(reply_to_screen_name) & reply_to_screen_name != "") %>%
  filter(screen_name != reply_to_screen_name) %>% # Eliminar auto-respuestas
  mutate(
    # Normalizar nombres (quitar @ si los tiene y pasar a minúsculas para evitar duplicados)
    origen = tolower(str_remove(screen_name, "^@")),
    destino = tolower(str_remove(reply_to_screen_name, "^@"))
  ) %>%
  # Contar cuántas veces interactuaron origen y destino
  count(origen, destino, tipo_mensaje, name = "peso") %>%
  ungroup()

# --- 2. CREAR EL OBJETO GRÁFICO (TIDYGRAPH) ---
grafo <- red_data %>%
  as_tbl_graph(directed = TRUE)

# --- 3. CALCULAR MÉTRICAS DE LA RED (IGRAPH) ---
# Convertimos temporalmente a igraph para calcular métricas rápidas
g_igraph <- as.igraph(grafo)

# Grado de Entrada (¿Cuántas veces respondieron a esta cuenta? = Popularidad)
grado_entrada <- degree(g_igraph, mode = "in")

# Grado de Salida (¿Cuántas cuentas distintas respondió esta cuenta? = Actividad)
grado_salida <- degree(g_igraph, mode = "out")

# PageRank (Importancia estructural en la red)
pr <- page_rank(g_igraph, directed = TRUE)$vector

# Betweenness (¿Es esta cuenta un puente entre grupos?)
bw <- betweenness(g_igraph, directed = TRUE)

# --- 4. AÑADIR MÉTRICAS AL GRAFO ---
grafo <- grafo %>%
  activate(nodes) %>%
  mutate(
    grado_entrada = grado_entrada,
    grado_salida = grado_salida,
    pagerank = pr,
    betweenness = bw,
    # Definir "Importancia": Top 2% de PageRank o entre los 50 más conectados
    es_top = ifelse(pagerank > quantile(pagerank, 0.98) | grado_entrada > quantile(grado_entrada, 0.95), "Top", "Resto"),
    # Tamaño del nodo proporcional al PageRank (mínimo 2)
    tamano = ifelse(pagerank > 0, pagerank * 500, 2),
    # Etiqueta: Solo mostramos si es del "Top"
    etiqueta = ifelse(es_top == "Top", name, NA_character_)
  )

# --- 5. GRAFICAR ---
ggraph(grafo, layout = "fr") + # Layout "fr" (Fruchterman-Reingold) es ideal para redes sociales
  # Bordes (Conexiones)
  geom_edge_link(aes(width = peso, alpha = peso), color = "gray60") +
  scale_edge_width(range = c(0.2, 1.5)) + # Grosor según peso
  scale_edge_alpha(range = c(0.1, 0.6)) +
  # Nodos (Cuentas)
  geom_node_point(aes(color = es_top, size = tamano), alpha = 0.8, shape = 21, stroke = 0.5) +
  scale_color_manual(values = c("Top" = "#1565A7", "Resto" = "#CCCCCC")) + # Tu color azul para el Top
  scale_size_continuous(range = c(2, 10)) + # Rango de tamaños
  # Etiquetas (Solo las importantes)
  geom_node_text(aes(label = etiqueta), 
                 repel = TRUE, 
                 size = 3, 
                 fontface = "bold",
                 color = "black",
                 box.padding = 0.3, 
                 point.padding = 0.5,
                 segment.color = "gray50") +
  # Estilos visuales
  theme_void() +
  theme(
    legend.position = "right",
    plot.title = element_text(hjust = 0.5, face = "bold", size = 16),
    plot.subtitle = element_text(hjust = 0.5, size = 12, color = "gray40"),
    legend.title = element_text(size = 10),
    legend.text = element_text(size = 9)
  ) +
  labs(
    title = "Red de Respuestas e Interacciones",
    subtitle = "Tamaño: Importancia (PageRank) | Color: Top 2% de influencia",
    color = "Nivel de Influencia",
    size = "PageRank"
  )


#-----------------------------------------------------------------------------
modelo_tweets <- dataset_tweets_modelo |>
  mutate(
    log_seguidores = log1p(seguidores_autor),
    
    fuente_modelo = case_when(
      fuente %in% c(
        "Twitter for Android",
        "Twitter for iPhone",
        "Twitter Web App"
      ) ~ fuente,
      TRUE ~ "Otra"
    ),
    
    tipo_mensaje = factor(tipo_mensaje),
    
    polaridad = factor(polaridad),
    
    fuente_modelo = factor(fuente_modelo),
    
    tiene_hashtag = factor(tiene_hashtag),
    
    tiene_mencion = factor(tiene_mencion),
    
    tiene_url = factor(tiene_url),
    
    tiene_media = factor(tiene_media),
    
    cuenta_verificada = factor(cuenta_verificada)
  ) |>
  filter(
    !is.na(tweet_relevante),
    !is.na(ancho_texto),
    !is.na(antiguedad_cuenta_anios)
  )

modelo_logistico <- glm(
  tweet_relevante ~
    log_seguidores +
    cuenta_verificada +
    antiguedad_cuenta_anios +
    tipo_mensaje +
    ancho_texto +
    cantidad_hashtags +
    cantidad_menciones +
    tiene_url +
    tiene_media +
    polaridad +
    hora_publicacion +
    fuente_modelo,
  
  family = binomial(link = "logit"),
  
  data = modelo_tweets
)

summary(modelo_logistico)
anova(modelo_logistico)

modelo_logistico$xlevels

exp(coef(modelo_logistico))

odds_ratios <- exp(
  cbind(
    OR = coef(modelo_logistico),
    confint.default(modelo_logistico)
  )
)

round(odds_ratios, 3)


modelo_logistico_v2 <- glm(
  tweet_relevante ~
    log_seguidores +
    cuenta_verificada +
    antiguedad_cuenta_anios +
    tipo_mensaje +
    cantidad_menciones +
    tiene_url +
    polaridad ,
  
  family = binomial(link = "logit"),
  
  data = modelo_tweets
)

summary(modelo_logistico_v2)
anova(modelo_logistico_v2)










