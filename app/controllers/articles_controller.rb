class ArticlesController < ApplicationController
  def index
    @articles = Article.all # com arroba fica publica
  end

  def show
    @article = Article.find(params[:id])
  end

  def new
    @article = Article.new # (**)ESSA ACTION
  end

  def create
    @article = Article.new(article_params) # quando clicar no create da tela, ira jogar os parametros e verificar se retornou true // (com o render os parametros do article aqui continuarao na new (nao serao perdidos) )

    if @article.save # se retornou true redireciona para @article <- eh um article que foi criado
      redirect_to @article
    else
      render :new # new eh a action de cima (ver (**)) (o render eh utilizado pq se for utilizado o redirect, tudo que foi digitado sera perdido)
    end
  end

  private

  def article_params
    params.require(:article).permit(:title, :body) # da um request em todos os parametros de article e permite apenas title e body
  end
end
