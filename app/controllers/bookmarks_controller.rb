class BookmarksController < ApplicationController
  def destroy
    @bookmark.find(params[:id])
    @bookmark.destroy
    redirect_to list_path(bookmark.list), noticenotice: "Bookmark was successfully deleted."
  end
end
