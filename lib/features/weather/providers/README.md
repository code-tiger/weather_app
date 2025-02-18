# Basic Weather data
- Current temperature (upper and lower bound)
- Current weather condition
- Current humidity (upper and lower bound)
- Current visibility (upper and lower bound)

# Forecast Weather data
- Forecast temperature (upper and lower bound)
    - for the next 7 hours
- Forecast weather basic data for the next 7 days
    - weather condition
    - humidity (upper and lower bound)
    - visibility (upper and lower bound)

# Extra weather data
- chance of precipitation
- wind speed
- wind direction
- pressure

# Detailed weather data
- RealFeel temperature
- visibility
- UV index

# Map pin of the city
- Google map API

# API example
- time zone should be Asia/Singapore for GTM+8
https://api.open-meteo.com/v1/forecast?latitude=25.0478&longitude=121.5319&daily=temperature_2m_max,temperature_2m_min,uv_index_max,precipitation_sum,rain_sum,wind_speed_10m_max,wind_gusts_10m_max&timezone=Asia%2FSingapore

