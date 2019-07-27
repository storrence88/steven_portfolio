# frozen_string_literal: true

class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: %i[show edit update destroy]
  helper_method :portfolio_items, :portfolio_item

  # Renders the index view for portfolios
  def index
    @portfolio_items = Portfolio.all
  end

  # Renders the new view for portfolios
  def new
    @portfolio_item = Portfolio.new
  end

  def show; end

  # Creates a new Portfolio record
  def create

    respond_to do |format|
      if Portfolio.create(portfolio_params)
        flash[:success] = 'Portfolio Item successfully created!'
        format.html { redirect_to portfolios_path, notice: 'Portfolio Item was successfully created!' }
      else
        flash[:error] = portfolio_item.errors.full_messages
        format.html { render :new }
      end
    end
  end

  # Renders the edit view for portfolios
  def edit; end

  def update
    respond_to do |format|
      if @portfolio_item.update(portfolio_params)
        format.html { redirect_to portfolio_item, notice: 'Portfolio Item was successfully created!' }
      else
        flash[:error] = portfolio_item.errors.full_messages
        format.html { render :edit }
      end
    end
  end
  

  private

  attr_reader :portfolio_items, :portfolio_item

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end

  def set_portfolio
    @portfolio_item = Portfolio.friendly.find(params[:id])
  end
end
