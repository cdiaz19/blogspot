require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe 'POST #create'do
    let!(:article) { FactoryGirl.build(:article) }

    it 'redirects the comment to article_path ' do
       post :create, id: article.id, comment: { commenter: 'My new comment' }
       expect(response).to redirect_to(article)
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

