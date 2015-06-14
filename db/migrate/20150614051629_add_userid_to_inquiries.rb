class AddUseridToInquiries < ActiveRecord::Migration
  def change
    add_column :inquiries, :user_id, :integer
  end
end
