FactoryBot.define do
  factory :video do
    name { 'Astronauta da Vovó' }
    url { 'https://d2zihajmogu5jn.cloudfront.net/bipbop-advanced/bipbop_16x9_variant.m3u8' }
    user { create(:user) }
  end
end
