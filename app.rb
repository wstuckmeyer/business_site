require 'sinatra'
require 'sendgrid-ruby'
include SendGrid

get'/'do
	erb :home
end

get '/about' do
	erb :about
end

get '/contact' do
	erb :contact
end

post '/contact' do

	email = params[:email]
	puts email + "LOOK AT MY EMAIL"

	from = Email.new(email: 'wstuckmeyer@gmail.com')
	to = Email.new(email: email)
	subject = 'Sending with SendGrid is Fun'
	content = Content.new(type: 'text/plain', value: 'and easy to do anywhere, even with Ruby')
	mail = Mail.new(from, subject, to, content)

	sg = SendGrid::API.new(api_key: ENV['SENDGRID_API_KEY'])
	response = sg.client.mail._('send').post(request_body: mail.to_json)

	puts response.status_code
	puts response.body
	puts response.headers

	erb :contact
end

get '/testimonials' do
	erb :testimonials
end





