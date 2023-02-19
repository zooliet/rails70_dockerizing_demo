class Todo < ApplicationRecord
  # broadcasts_to :itself
  after_update_commit -> (todo) { broadcast_replace_later_to(todo) }
end
