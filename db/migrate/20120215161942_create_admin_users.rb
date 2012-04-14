class CreateAdminUsers < ActiveRecord::Migration
  def up
		 create_table :admin_users do |t|
		t.string "first_name", :limit => 25
		t.string "last_name", :limit => 50
		t.string "user_name", :limit => 50
		t.string "email", :default => '', :null => false
		t.string "password", :limit => 40	
		# :limit => :default => :null => :precision => :scale =>
     		t.timestamps
	end
	
  end

  def down
  end
end
