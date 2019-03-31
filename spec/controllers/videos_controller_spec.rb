require 'rails_helper'

RSpec.describe Video, type: :model do
  describe VideosController do
    let(:video1) { create(:video) }

    describe '#add_view' do
      describe 'on success' do
        it 'should add one more view one'
      end

      describe 'on error' do
        it 'should do nothing?'
      end
    end
  end
end