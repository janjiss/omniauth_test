BODYMEDIA_CONSUMER_KEY    = 'myvwf5hwtsvm8yc55rwcm43xcheje94f'
BODYMEDIA_CONSUMER_SECRET = 'Q6AtWGPFNTZV8jS8tx95Uk4fWNWzR4vM43uKKNjpHdz2jS6drPXwcg2ScBShfUdS'
FITBIT_CONSUMER_KEY = '8b90bb9b88a94ea283644e6dccd99431'
FITBIT_CONSUMER_SECRET = 'ac673e658fdd4d76b27a5ba1e65c345f'

OpenSSL::SSL::VERIFY_PEER = OpenSSL::SSL::VERIFY_NONE

Rails.application.config.middleware.use OmniAuth::Builder do
  provider :bodymedia, BODYMEDIA_CONSUMER_KEY, BODYMEDIA_CONSUMER_SECRET
  provider :fitbit, FITBIT_CONSUMER_KEY, FITBIT_CONSUMER_SECRET
  provider :mapmyfitness, "1c2ed6c708521c50fe22eca5d3be5a1c", "835873495fa396feb1f383cc1deb947e0x50x938f1"
  provider :mhealth, "testproduct","UBqfL5Nw2Pq86PeYMHXMuTpuDEOlCwj78ArqvVmT"
end