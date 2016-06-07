class AddLanguageIdColumnToLanguages < ActiveRecord::Migration
  def change
    add_column :languages, :language_id, :integer
  end
end
