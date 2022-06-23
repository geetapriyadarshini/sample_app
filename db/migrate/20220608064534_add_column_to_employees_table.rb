class AddColumnToEmployeesTable < ActiveRecord::Migration[7.0]
  def change
    add_column :employees, :company_id, :string 
  end
end
