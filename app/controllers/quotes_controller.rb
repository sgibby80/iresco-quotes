class QuotesController < ApplicationController
  http_basic_authenticate_with name: "iresco", password: "94iresc094$",
  except: [:index, :show]
  

  
    def new
  @quote = Quote.new
    
  end
  
  
    def create
  @quote = Quote.new(quote_params)
     
    if @quote.save
      redirect_to @quote
    else
      render 'form'
    end
  
  end
  
    def edit
   @quote = Quote.find(params[:id])
    end

    
  def update
    @quote = Quote.find(params[:id])
    
    if @quote.update(quote_params)
      redirect_to @quote
    else
      render 'edit'
    end
  end
  
  
    def show
   @quote = Quote.find(params[:id])
    end
  
    def index
     @quotes = Quote.all
  end
  
    def quote_params
      params.require(:quote).permit(:name, :client, :price, :date, :description, :estimate, :actualhrs, :awarded)
    end
  
  
  
end

