Rails.application.middleware.use OmniAuth::Builder do
  provider :instagram, 'CLIENT_ID', 'CLIENT_SECRET'
end