class PortfoliosController < ApplicationController

  # Renders the index view
  def index
    @portfolio_items = Portfolio.all
  end
end
