module Obserberos

    require 'net/http'
    require 'json'

    require_relative 'support/chronos'

    class Fetcher
        
        public
        def main
            
            chronos = Chronos::Capturador.new         
            hoy = chronos.cadena(chronos.scream)

            uri_uno = "https://api.exchange.cryptomkt.com/api/3/public/currency"
            uri_uno = URI(uri_uno)
            currency = Net::HTTP.get(uri_uno)
            currency = JSON.parse(currency)
            currency = JSON.pretty_generate(currency)

            File.write("data/currency/currency.#{hoy}.json", currency)
        end
    end
end
