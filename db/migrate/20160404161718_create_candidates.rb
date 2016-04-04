class CreateCandidates < ActiveRecord::Migration[5.0]
  def change
    create_table :candidates do |t|
      t.string :first_name
      t.string :last_name
      t.string :party
      t.integer :delegate_count
      t.integer :popular_vote_count
      t.string :status

      t.timestamps
    end
  end
end
