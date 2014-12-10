class AddActivationCodeAndActivatedToUser < ActiveRecord::Migration
  def change
    add_column :users, :activation_code, :string
    add_column :users, :activated, :boolean
  end
end
