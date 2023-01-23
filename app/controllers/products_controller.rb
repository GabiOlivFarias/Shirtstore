class ProductsController < ApplicationController

  def index
    @todos = Product.order :price
    # @todos = Product.order(:price).limit 2  limitando a ordenação e mostrando só 2
  end

  def create
    value = params.require(:product).permit :name, :price, :description, :quantity
    # o permit! é inseguro assim acima eu delimito o que pode ser enviado pro meu banco
    # :  simbolo permit> permite os paremetros ! todos
    name = params["name"]
    description = params["description"]
    quantity = params["quantity"]
    price = params["price"]
    product = Product.create value
    # eu criei a rota do routes e vim aqui fazer meu metodo create para minha rota
  end

end
