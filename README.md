# README for HEADLINES (API Backend)

# Table of Contents
- About
- API Endpoints

## About
This README is for the API backend that supports the `HEADLINES` website (http://head-lines.herokuapp.com)

`HEADLINES` was brought to you by Becky Newborn and Gene Yoo. Its intent is to provide aggregated news headlines based on a user's preferences for news sources. All news headlines were sourced from News API (https://newsapi.org/), a HTTP REST API for searching and retrieving live articles from all over the web.  We hope you enjoy!

## API Endpoints

Responses from accessing the API endpoints mentioned below are presented in JSON format. At this time, most API endpoints for the `HEADLINES` website are not accessible to the public as they are used for internal data processing. Public endpoints have been provided below.

1. Articles ('/api/v1/articles')
  - Developers may access any articles pulled into the `HEADLINES` network by accessing the endpoint above.
  - These include any articles saved to profile or shared to the `HEADLINES` network feed by a user.
  - Response includes article attributes such as id, title, publishedAt (date), description, url, etc.
  - Each article object in the JSON response is tied a specific user (i.e. user who shared the article to the network)

Sample JSON Response:
  [
    {
      "id": 1,
      "title": "Jordan Peele to executive produce CBS 'The Twilight Zone' reboot",
      "publishedAt": "2017-12-06T21:39:00.000Z",
      "description": "'The Twilight Zone' will join 'Star Trek: Discovery' on the CBS All Access streaming platform.",
      "url": "https://www.engadget.com/2017/12/06/jordan-peele-executive-produce-cbs-the-twilight-zone-reboot/",
      "image_url": "https://o.aolcdn.com/images/dims?thumbnail=1200%2C630&quality=80&image_uri=https%3A%2F%2Fo.aolcdn.com%2Fimages%2Fdims%3Fcrop%3D3100%252C2151%252C0%252C0%26quality%3D85%26format%3Djpg%26resize%3D1600%252C1110%26image_uri%3Dhttp%253A%252F%252Fo.aolcdn.com%252Fhss%252Fstorage%252Fmidas%252F4677dbe0ff68aa751ae0b7b9fc388797%252F205184138%252FRTR4MUZT.jpeg%26client%3Da1acac3e1b3290917d92%26signature%3D8905e570c7345ca6ead169125ccb0033b8bcb6da&client=cbc79c14efcebee57402&signature=f6b0d08ea091c150e3475ffadc1e0ac65829a9bc",
      "author": "Rob LeFebvre",
      "user_id": 1,
      "username": "gene",
      "created_at": "2017-12-06T22:11:08.882Z",
      "updated_at": "2017-12-06T22:11:30.680Z"
    },
    {
      "id": 7,
      "title": "This glow in the dark phone case lasts for up to 12 hours",
      "publishedAt": "2017-12-06T21:25:50.000Z",
      "description": "Never dig through your purse again.",
      "url": "http://mashable.com/2017/12/06/glowing-iphone-case/",
      "image_url": "https://i.amz.mshcdn.com/AFykrTPTi_0LIWUEIqfnpFmhjgg=/1200x630/2017%2F12%2F06%2F89%2F3d09418a5471404b8f9a0062e5ee76e9.e384f.jpg",
      "author": "Studios Editor8",
      "user_id": 2,
      "username": "becky",
      "created_at": "2017-12-06T22:20:10.866Z",
      "updated_at": "2017-12-06T22:20:10.866Z"
    }
  ]
