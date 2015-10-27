class RefactorSchema < ActiveRecord::Migration
  def change
    remove_column :questions, :option1
    remove_column :questions, :option2
    remove_column :questions, :vote

  create_table :votes do |t|
    t.column :answer_id, :integer
    t.timestamp
  end

  create_table :answers do |t|
    t.column :body, :string
    t.column :question_id, :integer
    t.timestamp
  end

  end
end
