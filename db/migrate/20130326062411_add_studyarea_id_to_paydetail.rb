class AddStudyareaIdToPaydetail < ActiveRecord::Migration
  def change
    add_column :paydetails, :studyarea_id, :string
  end
end
