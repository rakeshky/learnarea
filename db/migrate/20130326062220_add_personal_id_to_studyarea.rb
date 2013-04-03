class AddPersonalIdToStudyarea < ActiveRecord::Migration
  def change
    add_column :studyareas, :personal_id, :string
  end
end
