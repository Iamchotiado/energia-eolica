class ApplicationController < ActionController::Base

    def simulation
        if params[:velocidad_entrada]
            @velocidad_entrada = params[:velocidad_entrada].to_f
        else
            @velocidad_entrada = 0
        end
        if params[:velocidad_salida]
            @velocidad_salida = params[:velocidad_salida].to_f
        else
            @velocidad_salida = 0
        end
        if params[:largo_aspa]
            @largo_aspa = params[:largo_aspa].to_i
        else
            @largo_aspa = 0
        end
        

        if @velocidad_entrada == 0 && @velocidad_salida == 0
            @factor_induccion = 0
        else
            @factor_induccion = (@velocidad_entrada - @velocidad_salida)/@velocidad_salida
        end

        if @velocidad_entrada < @velocidad_salida
            @potencia = 0
            @factor_induccion = 0
        else
            @potencia = 0.5 * 1.1839 * (3.141592653589793238462643313830947690870926 * @largo_aspa * @largo_aspa) * (@velocidad_entrada * @velocidad_entrada * @velocidad_entrada) * ((4 * @factor_induccion) * (1 - @factor_induccion) * (1 - @factor_induccion))
        end
        

        @coeficiente_potencia = (4 * @factor_induccion) * (1 - @factor_induccion)


        @coeficientes = [@factor_induccion, @potencia, @coeficiente_potencia]
        respond_to do |format|
            format.html
            format.js
        end
    end

    def componentes
        
    end

    def energia_renovable
        
    end
end
