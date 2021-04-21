class UpdateUserTable < ActiveRecord::Migration[6.1]
  def change
    change_table :users do |t|
      t.rename :first_name, :uid
      t.rename :last_name, :name
      t.rename :photo, :photo_url
      t.remove :username
    end
  end
end
