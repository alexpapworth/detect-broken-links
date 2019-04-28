require 'resolv-replace'
require 'open-uri'

file = File.open( File.join(File.dirname(__FILE__), 'README.md'), 'r').read

lines = file.split("\n")
urls = lines.map {
	|l| l.match(/(?<url>http.+?)\)/)[:url] unless l.match(/(?<url>http.+?)\)/).nil?
}.compact

# Ignore project specific urls
urls = urls[6..-1]

errors = []
urls.each do |url|
	begin
		puts "testing #{url}"
		open(url)
	rescue Exception => e
		errors << "failed on #{url} from #{e}"
		puts "failed on #{url} from #{e}"
	end
end

puts
puts
puts "Saw #{urls.count - errors.count} successful URLs."
puts "Saw #{errors.count} errors, which are these:"
errors.each do |error|
	puts error
end