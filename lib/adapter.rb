require 'rest-client'
require 'json'
require 'pry'

class Adapter
  URL_EVERYTHING = 'https://newsapi.org/v2/everything?'
  URL_TOP = 'https://newsapi.org/v2/top-headlines?'
  API_KEY = 'f81e8769f1f54c9bb23ec6970887cae5'

  def get_articles(link)
    results = []
    binding.pry

    json = RestClient.get(link)
    res = JSON.parse(all_raw)
  end

  def get_search_results(link, search_term)

  end
end
