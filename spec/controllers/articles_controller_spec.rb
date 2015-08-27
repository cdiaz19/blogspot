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

    it 'assigns the new article' do
      get :new
      expect(assigns(:article)).to be_a_new(Article)
    end
  end

  describe 'POST #create' do
    let(:article) { FactoryGirl.create(:article)}

    it 'show the article view' do
      get :new, id: article.id
      expect(response).to render_template(:new)
    end
  end

  describe 'PUT #update' do
    let(:article), { FactoryGirl.build(:article) }

    it 'update the article with a given id' do
      put :update, id: article.id
      expect(response).to eq(article)
    end

    it 'finds the requested article' do
      put :update, title: article.title,
                   text: article.text
      expect(update(:article).to to eq(Article)
    end

    it 'dont finds the requested article' do
      get :edit, title: article.title,
                 text: article.text
      expect(response).to render temprate(:edit)
    end
  end

  describe 'DELETE #destroy' do
    let(:article), { FactoryGirl.create(:article) }
    
    it 'delete the selected article with a given id' do
      delete :article, id: article.id
      expect(destroy(:article)).to eq(article)
    end
  end
end
