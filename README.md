# README
* Ruby version: 2.3.1
* Rails Version: 5.0

Major Modules are:
* Controllers:

  Contains the controllers which accepts the REST API calls
* Models:

  Contains two models which are `Url` and `UrlContent`.
* Services:

   Responsible to wite the custom logic before saving any url or its content
* Parsers:

  Responsible to read the target url contet. Uses the `nokogiri` gem to parse the hrml content.
  It also responsible for checking the duplicate content and categorizing content based on it type i..e(h1, h2, a etc.)
* Parser Client:

   Client contains a html and respected javascript file where we can configre the url.
   On load it shows the all the url content. We can also check the url specific content by clicking on the url.
   
