class Todo < ActiveRecord::Base
  def to_s
    self.to_s '.so many things todo!'
  end
end
