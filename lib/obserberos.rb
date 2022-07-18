module Obserberos

    require 'net/http'
    require 'json'

    require_relative './chronos'

    class Fetcher
        
        public
        def exe
            
            chronos = Chronos::Capturador.new         
            hoy = chronos.cadena(chronos.scream)

            uri_uno = "https://api.exchange.cryptomkt.com/api/3/public/currency"
            uri_uno = URI(uri_uno)
            catalogo = Net::HTTP.get(uri_uno)
            catalogo = JSON.parse(catalogo)
            catalogo = JSON.pretty_generate(catalogo)

            File.write("data/cl/catalogo.cl.#{hoy}.json", catalogo)
        end
    end
end
