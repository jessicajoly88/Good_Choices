class CreateOptions < ActiveRecord::Migration
  def change
    create_table :options do |t|
      t.column :choice, :string
      t.column :vote, :integer
      t.column :question_id, :integer

      t.timestamp
    end
  end
end
