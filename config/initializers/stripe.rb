Rails.configuration.stripe = {
  publishable_key: ENV['pk_test_GBs34tAOBeMNP6CWo2sb4jPy00ic4JubD6'],
  secret_key:      ENV['sk_test_jZrLU4ebOgDzYqlVxovpY07400t2c0E8Rx']
}

Stripe.api_key = Rails.configuration.stripe[:secret_key]
