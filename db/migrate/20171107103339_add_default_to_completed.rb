class AddDefaultToCompleted < ActiveRecord::Migration[5.0]
  def change
    change_column_default :tasks, :completed, false
  end
end
