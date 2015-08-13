require 'rails_helper'

RSpec.describe CommentsController, type: :controller do
  describe '#methods_comments' do
    describe '#create'do
     it 'redirect to lists of article' do
      end
    end
  end

  describe '#destroy' do
    context 'when find the comment' do
      it 'destroy the comment of databases' do
      end
    end
    context 'when not find the comment' do
      it 'back show action for the article' do
      end
    end
  end
end
