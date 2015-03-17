class AddEnabledToSpreeProducts < ActiveRecord::Migration
  def change
    add_column :spree_products, :enabled, :boolean, default: true
  end
end
