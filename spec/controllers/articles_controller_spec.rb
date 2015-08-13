require 'spec_helper'

RSpec.describe ArticlesController, type: :controller do
  describe '#index' do
    describe 'show the list to articles saved' do
    end
  end

  describe '#show' do
    it 'show the articles' do
    end
  end

  describe '#new'do
    it 'create new post' do
    end
  end

    describe ' #create' do
        context 'when invalid an article' do
          it 'return article false ' do
          end
        end
        context 'when valid an article' do
          it 'return for create new article' do
          end
        end
    end

    describe '#update' do
      describe 'update a record that already exists,'do
        context 'when it finds Article' do
          it 'redirect to article' do
          end
        end
        context 'when not it find article' do
          it 'redirect to new article page' do
          end
        end
      end
    end

    describe '#destroy' do
      it 'destroy the articles' do
      end
    end
end
