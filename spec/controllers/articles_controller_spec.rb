require 'spec_helper'

RSpec.describe ArticlesController, type: :controller do
  describe 'GET #index' do
    describe 'show the list to articles saved' do
    end
  end

  describe 'GET #show' do
    it 'show the articles' do
    end
  end

  describe 'GET #new'do
    it 'create new post' do
    end
  end

    describe 'GET #create' do
        context 'when invalid an article' do
          it 'return article false ' do
          end
        end
        context 'when valid an article' do
          it 'return for create new article' do
          end
        end
    end

    describe 'GET #update' do
      describe 'update a record that already exists'do
        context 'when it finds Article' do
          it 'redirect to article' do
            expect(subject).to redirect_to(@article)
          end
        end
        context 'when not it find article' do
          it 'create a new article' do
          end
        end
      end
    end

    describe 'GET #destroy' do
      it 'destroy the articles' do
      end
    end
end
