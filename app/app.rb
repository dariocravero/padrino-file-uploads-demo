module AdminFile
  class App < Padrino::Application
    register Padrino::Helpers

    enable :sessions

    get :index do
      render :index
    end

    post :submit, params: [:my_file] do
      logger.info "Here's your file"
      logger.info params[:my_file].inspect

      params[:my_file].inspect
    end
  end
end
