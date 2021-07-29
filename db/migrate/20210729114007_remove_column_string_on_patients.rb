class RemoveColumnStringOnPatients < ActiveRecord::Migration[5.2]
  def change
    remove_column :patients, :string
  end
end
