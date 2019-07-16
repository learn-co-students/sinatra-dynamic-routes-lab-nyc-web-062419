require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    user_name = params[:name]
    user_name.reverse!
  end

  get "/square/:number" do
    number= params[:number]
    (number.to_i**2).to_s
  end

  get '/say/:number/:phrase' do
    phrase_line = ''
      params[:number].to_i.times do
        phrase_line += params[:phrase]
      end
    phrase_line
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get '/:operation/:number1/:number2' do
    number1 = params[:number1].to_i
    number2 = params[:number2].to_i
    solution = 'Unable to perform this operation'
    case params[:operation]
    when 'add'
      solution = (number1 + number2).to_s
    when 'subtract'
      solution = (number1 - number2).to_s
    when 'multiply'
      solution = (number1 * number2).to_s
    when 'divide'
      solution = (number1 / number2).to_s
    end
  end





end