class PortfoliosController < ApplicationController
  helper_method :portfolio_items

  # Renders the index view
  def index
    @portfolio_items = Portfolio.all
  end

  # Renders the new view
  def new
  end

  # Creates a new Portfolio record
  def create
  end

  private

  attr_reader :portfolio_items
end
