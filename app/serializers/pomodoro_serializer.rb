class PomodoroSerializer < ActiveModel::Serializer
  attributes :id, :work_time, :break_time, :work_percent_complete, :break_percent_complete, :active_theme
end
