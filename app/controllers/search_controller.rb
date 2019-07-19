class SearchController < ApplicationController
  def index
      render locals: {
        facade: WesterosFacade.new,
      }
  end
end
