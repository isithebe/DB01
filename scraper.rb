require 'mechanize'
require 'date'
require 'scraperwiki'

agent = Mechanize.new
page = agent.get("http://www.premiereclasse.fr")

links = page.at('mail')
page.at('mail').each do |li|
  member = {
    em: li.at('@')
#    title: li.at('.title').inner_text.strip,
#    electorate: li.search('dd')[0].inner_text,
#    party: li.search('dd')[1].inner_text,
#    url: li.at('.title a').attr('href')
  }

  p member
end
