module Chronos
  
  class Capturador
   
    public 
    def scream
      @momento = Hash.new
    
      @momento["anho"] = Time.now.year.to_s
      @momento["mes"] = Time.now.month.to_s
      @momento["dia"] = Time.now.day.to_s
    
      @momento["hora"] = Time.now.hour.to_s
      @momento["minuto"] = Time.now.min.to_s
      @momento["segundo"] = Time.now.sec.to_s
      @momento["microsegundo"] = Time.now.usec.to_s
      
      @momento 
    end

    public
    def cadena(momento)
      @fecha = momento["dia"] + "." + momento["mes"] + "." + momento["anho"] + "_"
      @tiempo = momento["hora"] + ":" + momento["minuto"] + ":" + momento["segundo"] + ":" + momento["microsegundo"]
      
      @cadena = @fecha + @tiempo 
      @cadena
    end


  end

end
