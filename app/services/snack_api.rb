# class SnackAPI
#   include HTTParty
#   base_uri 'https://api-snacks.nerderylabs.com/v1/'
#   SNACK_ACCESS = "/snacks?ApiKey=#{ENV['SNACK_API_KEY']}"
#
#   def get_snacks
#     response = self.class.get(SNACK_ACCESS)
#     parsed = JSON.parse(response.body)
#   end
# end
