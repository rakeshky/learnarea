class CreateStudyareas < ActiveRecord::Migration
  def change
    create_table :studyareas do |t|
      t.string :lang
      t.string :exp
      t.string :training_type

      t.timestamps
    end
  end
end
