class AgancyTicketComment < ApplicationRecord
  belongs_to :agancy_ticket
  has_many :comment_files
end
