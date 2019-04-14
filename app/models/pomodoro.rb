# frozen_string_literal: true

class Pomodoro < ApplicationRecord
  belongs_to :user
  default_scope { order('created_at DESC') }
end
