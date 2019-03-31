require 'rails_helper'

RSpec.describe User, type: :model do
  describe 'User' do
    it 'Should have name' do
      user = User.new(email: 'sailor@moon.com', password: 'SuChH4Ck3R')

      expect(user).to_not be_valid
    end

    it 'Should have a name with more than 1 character' do
      user1 = User.new(
        email: 'sailor@moon.com',
        password: 'SuChH4Ck3R',
        name: 'p'
      )

      user2 = User.new(
        email: 'sailor@venus.com',
        password: 'SuChH4Ck3R',
        name: 'jo'
      )

      expect(user1).to_not be_valid
      expect(user2).to be_valid
    end

    it 'Should have a name with less than 21 chacaters' do
      user1 = User.new(
        email: 'sailor@moon.com',
        password: 'SuChH4Ck3R',
        name: 'a' * 21
      )
      user2 = User.new(
        email: 'sailor@moon.com',
        password: 'SuChH4Ck3R',
        name: 'p' * 20
      )

      expect(user1).to_not be_valid
      expect(user2).to be_valid
    end
  end
end
