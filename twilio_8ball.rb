# User asks question and is texted the answer from an 8-Ball 

require 'rubygems'
require 'twilio-ruby'

account_sid = 'AC28d1dbddf655296c0dbf63b6c872a44e'
auth_token = '282eeccb74b50fc3da0be546e24db030'

@client = Twilio::REST::Client.new(account_sid, auth_token)

def ball_answer2
  case rand(1..20)
  when 1 then "It is certain"
  when 2 then "It is decidedly so"
  when 3 then "Without a doubt"
  when 4 then "Yes definitely"
  when 5 then "You may rely on it"
  when 6 then "As I see it, yes"
  when 7 then "Most likely"
  when 8 then "Outlook good"
  when 9 then "Yes"
  when 10 then "Signs point to yes"
  when 11 then "Reply hazy try again"
  when 12 then "Ask again later"
  when 13 then "Better not tell you now"
  when 14 then "Cannot predict now"
  when 15 then "Concentrate and ask again"
  when 16 then "Don't count on it"
  when 17 then "My reply is no"
  when 18 then "My sources say no"
  when 19 then "Outlook not so good"
  when 20 then "Very doubtful"
  end
end

print "Ask the Magic 8-Ball Anything: "
question = gets.chomp

message = @client.account.messages.create(
  from: "+1 #{twilio_number}",
  to: "+1 #{my_number}",
  body: "You asked '#{question}'\nThe answer is: #{ball_answer2}"
)

puts message.to