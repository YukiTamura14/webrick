require 'webrick'

server = WEBrick::HTTPServer.new({
  DocumentRoot:   'https://yuki-tamura-yukitamura14.c9users.io',
  BindAddress:    "0.0.0.0",
  Port:           8080,
  CGIInterpreter: '/usr/local/rvm/rubies/ruby-2.4.0/bin/ruby'
})


server.mount('/test', WEBrick::HTTPServlet::ERBHandler, 'test.html.erb')

server.mount('//', WEBrick::HTTPServlet::ERBHandler, 'test_achieve.html.erb')

server.mount('/indicate.cgi', WEBrick::HTTPServlet::CGIHandler, 'indicate.rb')

server.mount('/goya.cgi', WEBrick::HTTPServlet::CGIHandler, 'goya.rb')

server.start