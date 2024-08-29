class AddMovieAndListToBookmarks < ActiveRecord::Migration[7.1]
  def change
    add_column :bookmarks, :movie_id, :integer
    add_column :bookmarks, :list_id, :integer

    add_foreign_key :bookmarks, :movies, column: :movie_id, on_delete: :restrict
    add_foreign_key :bookmarks, :lists, column: :list_id, on_delete: :cascade

    add_index :bookmarks, :movie_id
    add_index :bookmarks, :list_id
  end
end
