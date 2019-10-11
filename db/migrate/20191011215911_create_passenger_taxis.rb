class CreatePassengerTaxis < ActiveRecord::Migration[5.0]
  def change
    create_join_table :passenger, :taxis
    end
  end

