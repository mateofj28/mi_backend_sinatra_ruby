require 'sinatra'
require 'json'

# Ruta raíz
get '/' do
  "¡Bienvenido a mi backend en Sinatra!"
end

# Ruta para obtener información
get '/info' do
  "Esta es una API básica construida en Ruby usando Sinatra."
end


get '/saludo/:nombre' do
    content_type :json
    { saludo: "¡Hola, #{params[:nombre]}!" }.to_json
  end

# Ruta POST
post '/datos' do
  "Recibí los datos: #{params[:dato]}"
end
