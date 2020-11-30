class ApplicationController < ActionController::Base

    def simulation
        if params[:velocidad_entrada]
            @velocidad_entrada = params[:velocidad_entrada]
        else
            @velocidad_entrada = 0
        end
        if params[:velocidad_salida]
            @velocidad_salida = params[:velocidad_salida]
        else
            @velocidad_salida = 0
        end
        if params[:presion_entrada]
            @presion_entrada = params[:presion_entrada]
        else
            @presion_entrada = 0
        end
        if params[:presion_salida]
            @presion_salida = params[:presion_salida]
        else
            @presion_salida = 0
        end

        @coeficientes = [@velocidad_entrada, @velocidad_salida, @presion_entrada, @presion_salida]
        respond_to do |format|
            format.html
            format.js
        end
    end
end
