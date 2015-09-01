require 'spec_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'GET #index' do
    it 'renders the index template' do
      get :index
      expect(response).to render_template(:index)
    end
  end

  describe 'GET #show' do
    let(:article) { FactoryGirl.create(:article) }

    it 'assigns the article with a given id' do
      get :show, id: article.id
      expect(assigns(:article)).to eq(article)
    end

    it 'renders the article view' do
      get :show, id: article.id
      expect(response).to render_template(:show)
    end
  end

  describe 'GET #new'do
    let(:article) { FactoryGirl.build(:article) }

    before { get :new }

    it 'assigns the new article' do
      expect(assigns(:article)).to be_a_new(Article)
    end
  end

  describe 'POST #create' do
    let(:article_params) { FactoryGirl.attributes_for(:article) }
    let!(:article) { FactoryGirl.build(:article) }

    context 'when the article params are valid' do
      it 'persist the new article to database' do
        expect {
          post :create, article: article_params
        }.to change(Article, :count).by(1)
      end

      it 'redirects to the article :show view' do
        post :create, article: article_params
        expect(response).to redirect_to(article_path(@article))
      end
    end

    context 'when the article params are not valid' do
      it 'renders the :new template' do
        post :create, id: article.id,  article: { title: 'Try' }
        expect(response).to render_template(:new)
      end
    end
  end

  describe 'PUT #update' do
    let(:article) { FactoryGirl.create(:article) }

    context 'when founds an article with a given :id' do
      it 'change params of the article' do
        put :update, id: article.id, article: { title: 'My new title' }
        expect(article.reload.title).to eq('My new title')
      end

      it 'redirect to article show view' do
        put :update, id: article.id, article: { title: 'My new title' }
        expect(response).to redirect_to(article)
      end
    end

    context 'when don\'t founds an article with a given :id' do
      it 'renders the :edit template' do
        put :update, id: article.id, article: { title: 'Try' }
        expect(response).to render_template(:edit)
      end
    end
  end

  describe 'DELETE #destroy' do
    let!(:article) { FactoryGirl.create(:article) }

    it 'delete the selected article with a given id' do
      expect {
        delete :destroy, id: article.id
      }.to change(Article, :count).by(-1)
    end

    it 'redirect to articles_path' do
      delete :destroy, id: article.id
      expect(response).to redirect_to(articles_path)
    end
  end
end

