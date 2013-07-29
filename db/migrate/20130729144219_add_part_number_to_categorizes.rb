class AddPartNumberToCategorizes < ActiveRecord::Migration
  def change
  	 add_column :categorizes, :location_id, :integer
  	 add_column :categorizes, :type_id, :integer
  	 remove_column :categorizes, :location
  	 remove_column :categorizes, :type
  end
end
