# -*- coding: utf-8 -*-
class AgancyTicket < ApplicationRecord
  has_many :agancy_ticket_comments
  accepts_nested_attributes_for :agancy_ticket_comments


end
