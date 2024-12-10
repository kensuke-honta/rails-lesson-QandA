class QuestionsController < ApplicationController
  # 質問の一覧表示
  def index
    @questions = Question.all
    # p @questions?
  end

  # 質問の詳細ページ表示
  def show
    # p params
    @question = Question.find(params[:id])
    # p @question
  end

  # 質問の作成
  def new
    @question = Question.new
  end

  # 質問の登録
  def create
    #questionモデルを初期化(引数でquestion_paramsを置くことで値をセットできる)
    @question = Question.new(question_params)
    #questionモデルをDBに保存
    if @question.save
    #showへリダイレクト
    redirect_to @question
    else
      render 'new', status: :unprocessable_entity
    end

  end

  # 質問の編集
  def edit
    @question = Question.find(params[:id])
  end

  # 質問の更新
  def update
    @question = Question.find(params[:id])
    if @question.update(question_params)
      redirect_to @question
    else
      render 'edit', status: :unprocessable_entity
    end
  end

  # 質問の削除
  def destroy
    @question = Question.find(params[:id])
    @question.destroy
    redirect_to question_path
  end

  private
  # メソッド名は慣習としてmodel名_paramsとする
  def question_params
    params.require(:question).permit(:title, :name, :content)
  end
  
end
