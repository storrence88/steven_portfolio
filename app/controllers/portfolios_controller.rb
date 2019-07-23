# frozen_string_literal: true

class PortfoliosController < ApplicationController
  before_action :set_portfolio, only: %i[show edit destroy]
  helper_method :portfolio_items, :portfolio_item

  # Renders the index view
  def index
    @portfolio_items = Portfolio.all
  end

  # Renders the new view
  def new
    @portfolio_item = Portfolio.new
  end

  def show; end

  # Creates a new Portfolio record
  def create
    @portfolio_item = Portfolio.new(portfolio_params)

    respond_to do |format|
      if @portfolio_item.save
        format.html { redirect_to @portfolio_item, notice: 'Portfolio Item was successfully created!' }
      else
        format.html { render :new }
      end
    end
  end

  def edit; end

  private

  attr_reader :portfolio_items, :portfolio_item

  def portfolio_params
    params.require(:portfolio).permit(:title, :subtitle, :body)
  end

  def set_portfolio
    @portfolio_item = Portfolio.find(params[:id])
  end
end
