Rails.configuration.stripe = {
  #:publishable_key => Rails.application.secrets.publishable_key,
  #:secret_key      => Rails.application.secrets.secret_key
  #:publishable_key => 'pk_test_87LayhWLhTKpfeY88G6tdHAb',
  #:secret_key      => 'sk_test_hhnZgxUzpid4PweuND5kNXXE'

  :publishable_key => ENV['PUBLISHABLE_KEY'],
  :secret_key => ENV['SECRET_KEY']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
#Stripe.api_key = Rails.application.secrets.stripe_secret_key