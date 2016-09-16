class QuotesController < ApplicationController
  def new
    @quote = Quote.new
  end

  def create
    @quote = Quote.new(params[:quote])
    @quote.request = request
    if @quote.deliver
      flash.now[:notice] = 'Thank you for your message. I will contact you soon!'
    else
      flash.now[:error] = 'Cannot send message.'
      render :new
    end
  end
end