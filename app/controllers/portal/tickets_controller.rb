class Portal::TicketsController < ApplicationController

  def index
    @agancy_tickets = AgancyTicket.all
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
