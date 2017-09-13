class SnackAPI
  include HTTParty
  base_uri 'https://api-snacks.nerderylabs.com/v1/'
  format :json


  def initialize(*opts)
    @options = opts.reverse_merge({
      ApiKey: ENV['SNACK_API_KEY']
      })
  end

  def get_snacks
    response = self.class.get('/snacks', @options)
  end
end
