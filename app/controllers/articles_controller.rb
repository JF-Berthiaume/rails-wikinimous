class ArticlesController < ApplicationController
  before_action :set_article, only: [:show, :edit, :update, :destroy]

  # 1. Lister tous les articles
  def index
    @articles = Article.all
  end

  # 2. Afficher un article spécifique
  def show
  end

  # 3. Formulaire de création
  def new
    @article = Article.new
  end

  # 4. Sauvegarde d'un nouvel article
  def create
    @article = Article.new(article_params)
    if @article.save
      redirect_to article_path(@article)
    else
      render :new, status: :unprocessable_entity
    end
  end

  # 5. Formulaire d'édition
  def edit
  end

  # 6. Mise à jour de l'article
  def update
    if @article.update(article_params)
      redirect_to article_path(@article)
    else
      render :edit, status: :unprocessable_entity
    end
  end

  # 7. Suppression
  def destroy
    @article.destroy
    redirect_to articles_path, status: :see_other
  end

  private

  # Sécurité : On n'autorise que le titre et le contenu
  def article_params
    params.require(:article).permit(:title, :content)
  end

  # DRY (Don't Repeat Yourself) : On récupère l'article une seule fois
  def set_article
    @article = Article.find(params[:id])
  end
end
