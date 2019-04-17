# frozen_string_literal: true

if Speaker.count.zero?
  Speaker.create(name: 'Rodrigo', twitter_handle: 'rodrigovdb', bio: 'This is Rodrigo\'s bio', talk_title: 'How to get it running!')

  Speaker.create(name: 'John', twitter_handle: 'johnruby', bio: 'This is John\'s bio', talk_title: 'How to bootstrap a sinatra application')

  Speaker.create(name: 'Jacob', twitter_handle: 'jacob-ruby', bio: 'This is Jacob\'s bio', talk_title: 'Introduction to graphql')
end
