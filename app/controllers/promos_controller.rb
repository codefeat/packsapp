class PromosController < InheritedResources::Base

  private

    def promo_params
      params.require(:promo).permit(:code, :name)
    end
end

