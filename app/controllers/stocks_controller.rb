class StocksController < ApplicationController
  before_action :set_stock, only: [:show, :edit, :update, :destroy]

  def index
    @stocks_query = @active_event.stocks.joins(:product).order(:location, 'products.name')
    @stocks = @active_event.stocks.joins(:product).order('products.name')
    @locations = @active_event.stocks.order(location: :desc).group(:location)
    if params[:location]
      @stocks_query = @stocks_query.where(location: params[:location])
    # elsif params[:all]
    #   # use default
    # elsif @locations.any?
    #   redirect_to stocks_path(location: @locations.first.location)
    end

    if params['date(1i)']
      @date = Date.new params['date(1i)'].to_i,params['date(2i)'].to_i, params['date(3i)'].to_i
      @stocks_query = @stocks_query.where("stocks.date <= ?", @date)
    end

    @stocks_hash = @stocks_query.group(:product_id).sum(:quantity)
    @locations = @active_event.stocks.order(location: :desc).group(:location)
  end

  def show
  end

  def new
    @stock = Stock.new
    @products = @active_event.products.order(:name)
  end

  def edit
    @products = @active_event.products.order(:name)
  end

  def stock_movement
    @products = @active_event.products.physical.order(:name)
  end

  def ledger
    @stocks = @active_event.stocks.order(date: :desc, id: :desc).page(params[:page]).per(50)
    @stocks = @stocks.where(location: params[:location]) if params[:location]
    @stocks = @stocks.where(product_id: params[:product_id]) if params[:product_id]
    @stocks = @stocks.where(take_order_id: params[:take_order_id]) if params[:take_order_id]
    @locations = @active_event.stocks.group(:location)
  end

  def inventory_returns
    @products = @active_event.products.is_sourced_from_bsa.physical.order(:name)
  end

  def create
    if stock_params[:movement_with_warehouse] == true && stock_params[:location] == 'warehouse'
      redirect_to stocks_ledger_path, notice: "Location needs to be different than -warehouse-"
    else
      if stock_params[:movement_with_warehouse] == "1"
        movement_with_warehouse = true
        stock_params.delete :movement_with_warehouse
        @corresponding_stock = @active_event.stocks.build(stock_params)
        @corresponding_stock.quantity = -@corresponding_stock.quantity
        @corresponding_stock.location = 'warehouse'
        @corresponding_stock.created_by = current_scout.id
        @corresponding_stock.save
      end

      @stock = @active_event.stocks.build(stock_params)
      @stock.created_by = current_scout.id

      if @stock.save
        redirect_to stocks_ledger_path, notice: 'Stock was successfully created.'
      else
        @products = @active_event.products.order(:name)
        render :new
      end
    end
  end 

  def update
    respond_to do |format|
      if @stock.update(stock_params)
        format.html { redirect_to stocks_ledger_path, notice: 'Stock was successfully updated.' }
        format.json { render :show, status: :ok, location: @stock }
      else
        format.html { render :edit }
        format.json { render json: @stock.errors, status: :unprocessable_entity }
      end
    end
  end

  def destroy
    @stock.destroy
    respond_to do |format|
      format.html { redirect_to stocks_ledger_path, notice: 'Stock was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    def set_stock
      @stock = Stock.find(params[:id])
    end

    def stock_params
      params.require(:stock).permit(:unit_id, :product_id, :quantity, :location, :description, :movement_with_warehouse, :is_transfer_from_bsa, :date)
    end
end
