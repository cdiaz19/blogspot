require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe 'POST #create'do
    let!(:article) { FactoryGirl.create(:article) }

    it 'assigns @article as a new Article Object'do
      expect(assigns(:article)). to be_an_instance_of(Article)
    end
  end

  describe 'DELETE #destroy' do
    let!(:article) { FactoryGirl.create(:article) }

    it 'delete the seleted comment with a given id' do
      expect{
        delete :destroy, id: article.id
      }.to change(Comment, :count).by(-1)
    end

    it 'redirect to articles_path' do
      delete :destroy, if: article.id
      expect(response).to redirect_to(article_path)

    end
  end
end

