require 'rails_helper'

RSpec.describe Video, type: :model do
  describe 'Video' do
    let(:user) { create(:user) }

    it 'Should have a name' do
      video1 = Video.new(
        url: 'https://teste.com/mingau.m3u8',
        user: user
      )
      video2 = Video.new(
        url: 'https://teste.com/mingau.m3u8',
        name: 'Meu video de gatinho',
        user: user
      )

      expect(video1).to_not be_valid
      expect(video2).to be_valid
    end

    it 'Should have a name with more than 6 characters' do
      video1 = Video.new(
        url: 'https://teste.com/mingau.m3u8',
        name: 'a' * 5,
        user: user
      )
      video2 = Video.new(
        url: 'https://teste.com/mingau.m3u8',
        name: 'a' * 6,
        user: user
      )

      expect(video1).to_not be_valid
      expect(video2).to be_valid
    end

    it 'Should have a name with less than 51 characters' do
      video1 = Video.new(
        url: 'https://teste.com/mingau.m3u8',
        name: 'a' * 51,
        user: user
      )
      video2 = Video.new(
        url: 'https://teste.com/mingau.m3u8',
        name: 'a' * 50,
        user: user
      )

      expect(video1).to_not be_valid
      expect(video2).to be_valid
    end

    it 'Should have a url' do
      video1 = Video.new(
        name: 'Meu video de gatinho',
        user: user
      )
      video2 = Video.new(
        url: 'https://teste.com/mingau.m3u8',
        name: 'Meu video de gatinho',
        user: user
      )

      expect(video1).to_not be_valid
      expect(video2).to be_valid
    end

    it 'Should only accept url that has "m3u8" extention' do
      video1 = Video.new(
        name: 'Meu video de gatinho',
        url: 'https://teste.com/mingau.wav',
        user: user
      )
      video2 = Video.new(
        url: 'https://teste.com/mingau.m3u8',
        name: 'Meu video de gatinho',
        user: user
      )

      expect(video1).to_not be_valid
      expect(video2).to be_valid
    end

    it 'Should only ba a valid url' do
      video1 = Video.new(
        name: 'Meu video de gatinho',
        url: 'hxyz:/teste.com/mingau.m3u8',
        user: user
      )
      video2 = Video.new(
        url: 'https://teste.com/mingau.m3u8',
        name: 'Meu video de gatinho',
        user: user
      )

      expect(video1).to_not be_valid
      expect(video2).to be_valid
    end

    it 'Should have 0 views when created' do
      video = Video.new(
        url: 'https://teste.com/mingau.m3u8',
        name: 'Meu video de gatinho',
        user: user
      )

      expect(video.view).to eq(0)
    end
  end
end
