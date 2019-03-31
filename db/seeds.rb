# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

User.create(email: 'vovo@juju.com', password: '123123', name: 'Vovó Juju')
User.create(email: 'irmao_do@jorel.com', password: '123123', name: 'Irmão do Jorel')
User.create(email: 'steve@magal.com', password: '123123', name: 'Steve Magal')

Video.create(name: 'Astronauta da Vovó', url: 'https://content.jwplatform.com/manifests/yp34SRmf.m3u8', user: User.find(1))
Video.create(name: 'Gesonel Mestre dos disfarces', url: 'https://content.jwplatform.com/manifests/yp34SRmf.m3u8', user: User.find(2))
Video.create(name: 'Lambada Brutal', url: 'https://content.jwplatform.com/manifests/yp34SRmf.m3u8', user: User.find(3))
Video.create(name: 'Escolinha Brutal do Barulho II', url: 'https://content.jwplatform.com/manifests/yp34SRmf.m3u8', user: User.find(3))
Video.create(name: 'Um drama do barulho', url: 'https://content.jwplatform.com/manifests/yp34SRmf.m3u8', user: User.find(3))
Video.create(name: 'Um colega de quarto da pesada', url: 'https://content.jwplatform.com/manifests/yp34SRmf.m3u8', user: User.find(3))
Video.create(name: 'Vingança Brutal', url: 'https://content.jwplatform.com/manifests/yp34SRmf.m3u8', user: User.find(3))
Video.create(name: 'Desejo de uma vingança brutal II - A vingança', url: 'https://content.jwplatform.com/manifests/yp34SRmf.m3u8', user: User.find(3))
Video.create(name: 'Desejo de uma vingança ainda mais brutal III - O retorno da vingança', url: 'https://content.jwplatform.com/manifests/yp34SRmf.m3u8', user: User.find(3))
Video.create(name: 'O vingador brutal da vingança IV - Uma vingança do barulho', url: 'https://content.jwplatform.com/manifests/yp34SRmf.m3u8', user: User.find(3))
Video.create(name: 'Dois tiras da pesada 2 - parceria brutal', url: 'https://content.jwplatform.com/manifests/yp34SRmf.m3u8', user: User.find(3))
