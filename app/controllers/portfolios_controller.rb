class PortfoliosController < ApplicationController
  helper_method :portfolio_items, :portfolio_item

  # Renders the index view
  def index
    @portfolio_items = Portfolio.all
  end

  # Renders the new view
  def new
    @portfolio_item = Portfolio.new
  end

  # Creates a new Portfolio record
  def create
  end

  private

  attr_reader :portfolio_items, :portfolio_item
end
