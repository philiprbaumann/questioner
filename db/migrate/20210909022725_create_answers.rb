class CreateAnswers < ActiveRecord::Migration[6.0]
  def change
    create_table :answers do |t|
      t.references :survey, index: true, foreign_key: true
      t.boolean :response

      t.timestamps
    end
  end
end