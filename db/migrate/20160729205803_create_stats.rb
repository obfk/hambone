class CreateStats < ActiveRecord::Migration[5.0]
  def change
    create_table :stats do |t|
      t.date :date
      t.integer :logins_within_thirty_days
      t.integer :logins_within_sixty_days
      t.integer :logins_within_ninety_days

      t.timestamps
    end
  end
end
