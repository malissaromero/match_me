OmniAuth.config.logger = Rails.logger

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :facebook, '1699548810274228', '432d3bd73d82d74676ae9dd60bc4b6a0'
end
