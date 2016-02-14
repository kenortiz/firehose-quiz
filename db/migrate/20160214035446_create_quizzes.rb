class CreateQuizzes < ActiveRecord::Migration
  def change
    create_table :quizzes do |t|

      t.string :name
      t.text :answer
      
      t.timestamps
    end
  end
end
