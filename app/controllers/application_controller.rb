class ApplicationController < ActionController::Base

    def simulation
        if params[:velocidad]
            @velocidad = params[:velocidad]
        else
            @velocidad = 0
        end
        @coeficientes = [@velocidad]
        respond_to do |format|
            format.html
            format.js
        end
    end
end
