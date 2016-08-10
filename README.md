# README
* Ruby version: 2.3.1
* Rails Version: 5.0

Major Modules are:
* Controllers:

  Contains controllers which accepts the REST API calls and provides JSON response.
* Models:

  Contains two models which are `Url` and `UrlContent`.
* Services:

   Responsible to wite the custom logic before saving any url or its content
* Parsers:

  Responsible to read the target url contet. Uses the `nokogiri` gem to parse the html content. It removes the spaces before and after the content and encodes to `utf-8`
  It also responsible for checking the duplicate content and categorizing content based on its type i..e(h1, h2, a etc.)
* Parser Client:

   Client contains a html and respected javascript file where we can configre the url.
   On load it shows the all the url content. We can also check the url specific content by clicking on the url.
   
