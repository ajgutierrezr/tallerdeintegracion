class NoticiasController < ApplicationController
  before_action :set_noticia, only: [:show, :update, :destroy]

  # GET
  def index
    @noticias = Noticia.all
    @noticias.each do |noticia|
      if noticia.body.length > 500
        $n = 499
        until noticia.body[$n] == " " do
          $n = $n-1
        end
        noticia.body = noticia.body[0..$n] + "..."
      end
    end
    json_response(@noticias)
  end

  # POST
  def create
    @noticia = Noticia.create!(noticia_params)
    json_response(@noticia, :created)
  end

  # GET
  def show
    json_response(@noticia)
  end

  # PUT
  def update
    @noticia.update(noticia_params)
    json_response(@noticia)
  end

  def update2
    @noticia.update(noticia_params2)
    json_response(@noticia)
  end

  # DELETE
  def destroy
    @noticia.destroy
    @noticias = Noticia.all
    json_response(@noticias)
  end

  private

  def noticia_params
    params.permit(:title, :body, :subtitle)
  end

  def noticia_params2
    params.require(:title, :body, :subtitle)
  end

  def set_noticia
    @noticia = Noticia.find(params[:id])
  end
end
