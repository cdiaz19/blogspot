require 'spec_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'GET #index' do
    it 'lists all the articles' do
    end
  end

  describe 'GET #show' do
    it 'show the article' do
    end
  end

  describe 'GET #new'do
    it 'shot the  new post' do
    end
  end

  describe 'POST #create' do
    it 'article is valid' do
      expect(subject).to redirect_to(@article)
    end
    it 'article is invalid' do
      expect(subject).to render_template(:new)
    end
  end

  describe 'PUT #update' do
    it 'finds the requested article' do
      expect(subject).to redirect_to(@article)
      end
    it 'dont finds the requested article' do
      expect(subject).to render_template(:edit)
      end
  end

  describe 'DELETE #destroy' do
    it 'destroy the article' do
    end
  end
end
