class Task < ActiveRecord::Base
    attr_accessible :priority, :date, :description
end
