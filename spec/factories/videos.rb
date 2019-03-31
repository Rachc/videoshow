FactoryBot.define do
  factory :video do
    name { 'Astronauta da Vovó' }
    url { 'https://content.jwplatform.com/manifests/yp34SRmf.m3u8' }
    view { 1 }
    User { nil }
  end
end
