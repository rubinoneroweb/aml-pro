class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # GET /articles
  # GET /articles.json
  def index
    @customers = Customer.all
    if params[:customer].present?
        @customer = Customer.find  params[:customer]
        @articles = Article.where(customer_id: params[:customer]).order('code ASC').page(params[:page])
    else
      @articles = Article.all
      @articles = Article.order('code ASC').page(params[:page])
    end
  end

  # GET /articles/1
  # GET /articles/1.json
  def show
  end

  # GET /articles/new
  def new
    @article = Article.new
    @metalworks = Metalwork.order("machine_id ASC")
    @half =( @metalworks.size / 2) +1
  end

  # GET /articles/1/edit
  def edit
    @metalworks = Metalwork.order("machine_id ASC")
    @half = (@metalworks.size / 2) +1
  end

  # POST /articles
  # POST /articles.json
  def create
    @article = Article.new(article_params)

    respond_to do |format|
      if @article.save
        format.html { redirect_to articles_url, notice: 'Articolo salvato.' }
        format.json { render :show, status: :created, location: @article }
      else
        format.html { render :new }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end
  
  
  
  # PATCH/PUT /articles/1
  # PATCH/PUT /articles/1.json
  def update
    params[:article][:metalwork_ids] ||=[]

    respond_to do |format|
      if @article.update(article_params)
        format.html { redirect_to articles_url, notice: 'Dati articolo modificati.' }
        format.json { render :show, status: :ok, location: @article }
      else
        format.html { render :edit }
        format.json { render json: @article.errors, status: :unprocessable_entity }
      end
    end
  end

  # DELETE /articles/1
  # DELETE /articles/1.json
  def destroy
    @article.destroy
    respond_to do |format|
      format.html { redirect_to articles_url, notice: 'Articolo eliminato.' }
      format.json { head :no_content }
    end
  end

  private
    # Use callbacks to share common setup or constraints between actions.
    def set_article
      @article = Article.find(params[:id])
    end

    # Never trust parameters from the scary internet, only allow the white list through.
    def article_params
     # params.require(:article).permit(:code, :description, :picture, :drawing, :customer_id, :price, :spec, :metalwork_id)
      params.require(:article).permit!
    end
end
