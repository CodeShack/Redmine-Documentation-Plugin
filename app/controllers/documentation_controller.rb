class DocumentationController < ApplicationController
  unloadable

  def index
    @project = Project.find(params[:id])
  end

  #
  # In my limited testing it doesn't seem like any directory traversal
  # is possible from the use of route globbing here, but I'm still not
  # convinced.
  #
  def serve
    @repository = Project.find(params[:id]).repositories.first

    repoName = File.basename(@repository.root_url, File.extname(@repository.root_url))
    path = "/srv/documentation/#{ repoName }/#{ params[:file] }"

    send_file path, :disposition => 'inline'
  end
end
