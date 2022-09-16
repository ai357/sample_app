class ListsController < ApplicationController

  def new
    @list = List.new
  end

  def create
    #1&2 データ受け取りと新規登録のためのインスタンス作成
    list = List.new(list_params)
    #3 データをDBに保存するsaveメソッド実行
    list.save
    #4 トップ画面へリダイレクト
    redirect_to '/top'
  end

  def index
  end

  def show
  end

  def edit
  end

  private
  #ストロングパラメータ
  def list_params
    params.require(:list).permit(:title, :body)
  end

end
