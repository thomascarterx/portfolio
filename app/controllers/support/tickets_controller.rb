class Support::TicketsController < ApplicationController
  before_action :set_support_ticket, only: [:show, :edit, :update, :destroy]

  # GET /support/tickets
  # GET /support/tickets.json
  def index
    @support_tickets = Support::Ticket.all
  end

  # GET /support/tickets/1
  # GET /support/tickets/1.json
  def show
  end

  # GET /support/tickets/new
  def new
    @support_ticket = Support::Ticket.new
  end

  # GET /support/tickets/1/edit
  def edit
  end

  # POST /support/tickets
  # POST /support/tickets.json
  def create
    @support_ticket = Support::Ticket.new(support_ticket_params)

    respond_to do |format|
      if @support_ticket.save
        format.html { redirect_to @support_ticket, notice: 'Ticket was successfully created.' }
        format.json { render :show, status: :created, location: @support_ticket }
      else
        format.html { render :new }
        format.json { render json: @support_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # PATCH/PUT /support/tickets/1
  # PATCH/PUT /support/tickets/1.json
  def update
    respond_to do |format|
      if @support_ticket.update(support_ticket_params)
        format.html { redirect_to @support_ticket, notice: 'Ticket was successfully updated.' }
        format.json { render :show, status: :ok, location: @support_ticket }
      else
        format.html { render :edit }
        format.json { render json: @support_ticket.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /support/tickets/1
  # DELETE /support/tickets/1.json
  def destroy
    @support_ticket.destroy
    respond_to do |format|
      format.html { redirect_to support_tickets_url, notice: 'Ticket was successfully destroyed.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_support_ticket
      @support_ticket = Support::Ticket.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def support_ticket_params
      params.require(:support_ticket).permit(:customer_id, :problem, :urgency, :closed)
    end
end
