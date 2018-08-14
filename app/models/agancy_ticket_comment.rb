class AgancyTicketComment < ApplicationRecord
  belongs_to :agancy_ticket, optional: true
  has_many :comment_files
end
