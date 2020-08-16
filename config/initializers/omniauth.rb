#Lucas Todo o arquivo
#Twitter
# => Rails.application.config.middleware.use OmniAuth::Builder do
# =>   provider :twitter, 'API_KEY', 'API_SECRET'
# => end

#Google
Rails.application.config.middleware.use OmniAuth::Builder do
  provider :google_oauth2, 
  '88624058322-36b5n3ji808n7rqhticb8dt2pqoq4utc.apps.googleusercontent.com', 
  'HPDzN9_xiWSDKFAiEahylbWP',

#  ENV['88624058322-36b5n3ji808n7rqhticb8dt2pqoq4utc.apps.googleusercontent.com'], 
#  ENV['HPDzN9_xiWSDKFAiEahylbWP'],
    {
#Lucas Pode ser uma solucao Dotenv.load 
      scope: 'userinfo.email, userinfo.profile, http://gdata.youtube.com',
      prompt: 'select_account',
      image_aspect_ratio: 'square',
      image_size: 50
    }

end

#Lucas TENTAR INICIAR RAILS COM ESSE COMANDO: GOOGLE_KEY=88624058322-36b5n3ji808n7rqhticb8dt2pqoq4utc.apps.googleusercontent.com GOOGLE_SECRET=HPDzN9_xiWSDKFAiEahylbWP bundle exec rails s
