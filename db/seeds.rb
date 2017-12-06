# This file should contain all the record creation needed to seed the database with its default values.
# The data can then be loaded with the rails db:seed command (or created alongside the database with db:setup).
#
# Examples:
#
#   movies = Movie.create([{ name: 'Star Wars' }, { name: 'Lord of the Rings' }])
#   Character.create(name: 'Luke', movie: movies.first)

UserSource.destroy_all
UserCategory.destroy_all
SourceCategory.destroy_all
Article.destroy_all
Source.destroy_all
Category.destroy_all
User.destroy_all




preferred_categories = [
  {name: 'general'}, {name: 'business'}, {name: 'entertainment'}, {name: 'technology'}, {name: 'gaming'}, {name: 'health-and-medical'}, {name: 'music'}, {name: 'politics'}, {name: 'science-and-nature'}, {name: "sport"}
]

preferred_sources = [
  {
  slug: "ars-technica",
  name: "Ars Technica",
  description: "The PC enthusiast's resource. Power users and the tools they love, without computing religion.",
  source_url: "http://arstechnica.com",
  language: "en",
  country: "us"
  },
  {
  slug: "axios",
  name: "Axios",
  description: "Axios are a new media company delivering vital, trustworthy news and analysis in the most efficient, illuminating and shareable ways possible.",
  source_url: "https://www.axios.com",
  language: "en",
  country: "us"
  },
  {
  slug: "bleacher-report",
  name: "Bleacher Report",
  description: "Sports journalists and bloggers covering NFL, MLB, NBA, NHL, MMA, college football and basketball, NASCAR, fantasy sports and more. News, photos, mock drafts, game scores, player profiles and more!",
  source_url: "http://www.bleacherreport.com",
  language: "en",
  country: "us"
  },
  {
  slug: "business-insider",
  name: "Business Insider",
  description: "Business Insider is a fast-growing business site with deep financial, media, tech, and other industry verticals. Launched in 2007, the site is now the largest business news site on the web.",
  source_url: "http://www.businessinsider.com",
  language: "en",
  country: "us"
  },
  {
  slug: "buzzfeed",
  name: "Buzzfeed",
  description: "BuzzFeed is a cross-platform, global network for news and entertainment that generates seven billion views each month.",
  source_url: "https://www.buzzfeed.com",
  language: "en",
  country: "us"
  },
  {
  slug: "crypto-coins-news",
  name: "Crypto Coins News",
  description: "Providing breaking cryptocurrency news - focusing on Bitcoin, Ethereum, ICOs, blockchain technology, and smart contracts.",
  source_url: "https://www.cryptocoinsnews.com",
  language: "en",
  country: "us"
  },
  {
  slug: "engadget",
  name: "Engadget",
  description: "Engadget is a web magazine with obsessive daily coverage of everything new in gadgets and consumer electronics.",
  source_url: "https://www.engadget.com",
  language: "en",
  country: "us"
  },
  {
  slug: "entertainment-weekly",
  name: "Entertainment Weekly",
  description: "Online version of the print magazine includes entertainment news, interviews, reviews of music, film, TV and books, and a special area for magazine subscribers.",
  source_url: "http://www.ew.com",
  language: "en",
  country: "us"
  },
  {
  slug: "espn",
  name: "ESPN",
  description: "ESPN has up-to-the-minute sports news coverage, scores, highlights and commentary for NFL, MLB, NBA, College Football, NCAA Basketball and more.",
  source_url: "http://espn.go.com",
  language: "en",
  country: "us"
  },
  {
  slug: "fortune",
  name: "Fortune",
  description: "Fortune 500 Daily and Breaking Business News",
  source_url: "http://fortune.com",
  language: "en",
  country: "us"
  },
  {
  slug: "fox-sports",
  name: "Fox Sports",
  description: "Find live scores, player and team news, videos, rumors, stats, standings, schedules and fantasy games on FOX Sports.",
  source_url: "http://www.foxsports.com",
  language: "en",
  country: "us"
  },
  {
  slug: "hacker-news",
  name: "Hacker News",
  description: "Hacker News is a social news website focusing on computer science and entrepreneurship. It is run by Paul Graham's investment fund and startup incubator, Y Combinator. In general, content that can be submitted is defined as \"anything that gratifies one's intellectual curiosity\".",
  source_url: "https://news.ycombinator.com",
  language: "en",
  country: "us"
  },
  {
  slug: "ign",
  name: "IGN",
  description: "IGN is your site for Xbox One, PS4, PC, Wii-U, Xbox 360, PS3, Wii, 3DS, PS Vita and iPhone games with expert reviews, news, previews, trailers, cheat codes, wiki guides and walkthroughs.",
  source_url: "http://www.ign.com",
  language: "en",
  country: "us"
  },
  {
  slug: "mashable",
  name: "Mashable",
  description: "Mashable is a global, multi-platform media and entertainment company.",
  source_url: "http://mashable.com",
  language: "en",
  country: "us"
  },
  {
  slug: "mtv-news",
  name: "MTV News",
  description: "The ultimate news source for music, celebrity, entertainment, movies, and current events on the web. It\'s pop culture on steroids.",
  source_url: "http://www.mtv.com/news",
  language: "en",
  country: "us"
  },
  {
  slug: "national-geographic",
  name: "National Geographic",
  description: "Reporting our world daily: original nature and science news from National Geographic.",
  source_url: "http://news.nationalgeographic.com",
  language: "en",
  country: "us"
  },
  {
  slug: "new-scientist",
  name: "New Scientist",
  description: "Breaking science and technology news from around the world. Exclusive stories and expert analysis on space, technology, health, physics, life and Earth.",
  source_url: "https://www.newscientist.com/section/news",
  language: "en",
  country: "us"
  },
  {
  slug: "new-york-magazine",
  name: "New York Magazine",
  description: "NYMAG and New York magazine cover the new, the undiscovered, the next in politics, culture, food, fashion, and behavior nationally, through a New York lens.",
  source_url: "http://nymag.com",
  language: "en",
  country: "us"
  },
  {
  slug: "next-big-future",
  name: "Next Big Future",
  description: "Coverage of science and technology that have the potential for disruption, and analysis of plans, policies, and technology that enable radical improvement.",
  source_url: "https://www.nextbigfuture.com",
  language: "en",
  country: "us"
  },
  {
  slug: "nfl-news",
  name: "NFL News",
  description: "The official source for NFL news, schedules, stats, scores and more.",
  source_url: "http://www.nfl.com/news",
  language: "en",
  country: "us"
  },
  {
  slug: "nhl-news",
  name: "NHL News",
  description: "The most up-to-date breaking hockey news from the official source including interviews, rumors, statistics and schedules.",
  source_url: "https://www.nhl.com/news",
  language: "en",
  country: "us"
  },
  {
  slug: "polygon",
  name: "Polygon",
  description: "Polygon is a gaming website in partnership with Vox Media. Our culture focused site covers games, their creators, the fans, trending stories and entertainment news.",
  source_url: "http://www.polygon.com",
  language: "en",
  country: "us"
  },
  {
  slug: "recode",
  name: "Recode",
  description: "Get the latest independent tech news, reviews and analysis from Recode with the most informed and respected journalists in technology and media.",
  source_url: "http://www.recode.net",
  language: "en",
  country: "us"
  },
  {
  slug: "reddit-r-all",
  name: "Reddit /r/all",
  description: "Reddit is an entertainment, social news networking service, and news website. Reddit\'s registered community members can submit content, such as text posts or direct links.",
  source_url: "https://www.reddit.com/r/all",
  language: "en",
  country: "us"
  },
  {
  slug: "techcrunch",
  name: "TechCrunch",
  description: "TechCrunch is a leading technology media property, dedicated to obsessively profiling startups, reviewing new Internet products, and breaking tech news.",
  source_url: "https://techcrunch.com",
  language: "en",
  country: "us"
  },
  {
  slug: "techradar",
  name: "TechRadar",
  description: "The latest technology news and reviews, covering computing, home entertainment systems, gadgets and more.",
  source_url: "http://www.techradar.com",
  language: "en",
  country: "us"
  },
  {
  slug: "the-next-web",
  name: "The Next Web",
  description: "The Next Web is one of the world’s largest online publications that delivers an international perspective on the latest news about Internet technology, business and culture.",
  source_url: "http://thenextweb.com",
  language: "en",
  country: "us"
  },
  {
  slug: "the-verge",
  name: "The Verge",
  description: "The Verge covers the intersection of technology, science, art, and culture.",
  source_url: "http://www.theverge.com",
  language: "en",
  country: "us"
  },
  {
  slug: "vice-news",
  name: "Vice News",
  description: "Vice News is Vice Media, Inc.\'s current affairs channel, producing daily documentary essays and video through its website and YouTube channel. It promotes itself on its coverage of \"under - reported stories\".",
  source_url: "https://news.vice.com",
  language: "en",
  country: "us"
  },
  {
  slug: "wired",
  name: "Wired",
  description: "Wired is a monthly American magazine, published in print and online editions, that focuses on how emerging technologies affect culture, the economy, and politics.",
  source_url: "https://www.wired.com",
  language: "en",
  country: "us"
  }
]

preferred_categories.each do |cat|
  Category.create(cat)
end

preferred_sources.each do |src|
  Source.create(src)
end
