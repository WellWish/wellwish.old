class AddUserRefToWishes < ActiveRecord::Migration[5.0]
  def change
    add_reference :wishes, :user, foreign_key: true
  end
end
