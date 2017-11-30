# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)


User.destroy_all
Source.destroy_all
Category.destroy_all

UserSource.destroy_all
UserCategory.destroy_all
SourceCategory.destroy_all

gene = User.create(username:'gene', password:'abc')
becky = User.create(username:'becky', password:'def')

general = Category.create(name: 'general')
business = Category.create(name: 'business')
entertainment = Category.create(name: 'entertainment')
technology = Category.create(name: 'technology')

preferred_sources = [
  {
  "name": "Business Insider",
  'slug': 'business-insider',
  "description": "Business Insider is a fast-growing business site with deep financial, media, tech, and other industry verticals. Launched in 2007, the site is now the largest business news site on the web.",
  "source_url": "http://www.businessinsider.com",
  "language": "en",
  "country": "us"
  },
  {
  "name": "Buzzfeed",
  'slug': 'buzzfeed',
  "description": "BuzzFeed is a cross-platform, global network for news and entertainment that generates seven billion views each month.",
  "source_url": "https://www.buzzfeed.com",
  "language": "en",
  "country": "us"
  },
  {
  "name": "Reddit /r/all",
  'slug': 'reddit-r-all',
  "description": "Reddit is an entertainment, social news networking service, and news website. Reddit's registered community members can submit content, such as text posts or direct links.",
  "source_url": "https://www.reddit.com/r/all",
  "language": "en",
  "country": "us"
  },
  {
  "name": "Vice News",
  'slug': 'vice-news',
  "description": "Vice News is Vice Media, Inc.'s current affairs channel, producing daily documentary essays and video through its website and YouTube channel. It promotes itself on its coverage of \"under - reported stories\".",
  "source_url": "https://news.vice.com",
  "language": "en",
  "country": "us"
  },
  {
  "name": "Wired",
  'slug': 'wired',
  "description": "Wired is a monthly American magazine, published in print and online editions, that focuses on how emerging technologies affect culture, the economy, and politics.",
  "source_url": "https://www.wired.com",
  "language": "en",
  "country": "us"
  }
]

preferred_sources.each do |src|
  gene.sources << Source.create(src)
end

becky.sources << Source.find_by(id: 1)

gene.source_ids = [1,2,3]
becky.source_ids = [4,5]

general.source_ids = [3,4]
business.source_ids = [1]
entertainment.source_ids = [2]
technology.source_ids = [5]
