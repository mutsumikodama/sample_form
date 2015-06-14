class RemoveNameFromInquiries < ActiveRecord::Migration
  def change
    remove_column :inquiries, :name, :stringr
    remove_column :inquiries, :email, :stringr
  end
end
