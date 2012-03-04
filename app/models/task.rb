class Task < ActiveRecord::Base
    attr_accessible :priority, :date, :description, :title, :user_id
end
