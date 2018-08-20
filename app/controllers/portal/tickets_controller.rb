class Portal::TicketsController < ApplicationController

  def index
    @agancy_tickets = AgancyTicket.all
    @agancy_tickets = @agancy_tickets.where(status: params[:status]) if params[:status].present?
    @agancy_tickets = @agancy_tickets.where(agency_id: params[:agency_id]) if params[:agency_id].present?

  end

  def new
    @agancy_ticket = AgancyTicket.new
    @agancy_ticket.agancy_ticket_comments.build
  end

  def create
    @agancy_ticket = AgancyTicket.new(ticket_params)
    @agancy_ticket.save!
    redirect_to root_path
  end

  def show
    @agancy_ticket = AgancyTicket.find(params[:id])
  end

  def edit
  end

  def update
  end

  def destroy
  end

  private

    def ticket_params
      params.require(:agancy_ticket).permit(:subject, :request, :due_date, :agency_id, :agency_staff_id, :category, :importance, :status, :tabelog_staff_id, :registrant_id, :topic_update_at, agancy_ticket_comments_attributes: [:id, :comment, :user_account_id, :comment_update_at])
    end
end
