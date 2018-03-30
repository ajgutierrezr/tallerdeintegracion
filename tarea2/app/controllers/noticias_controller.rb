class NoticiasController < ApplicationController
  before_action :set_noticia, only: [:show, :update, :destroy]

  # GET
  def index
    @noticias = Noticia.all
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
    head :no_content
  end

  # DELETE
  def destroy
    @noticia.destroy
    head :no_content
  end

  private

  def noticia_params
    params.permit(:title, :body, :subtitle)
  end

  def set_noticia
    @noticia = Noticia.find(params[:id])
  end
end
