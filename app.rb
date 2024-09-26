require_relative 'config/environment'

class App < Sinatra::Base
  get '/reversename/:name' do
    @name = params[:name]
    "Hello #{@name.reverse}!"

  end

  get '/square/:number' do
    num = params[:number]
    (num.to_i * num.to_i).to_s
  end

  get '/say/:number/:phrase' do
    repeater = ""
    (params[:number].to_i).times{repeater += "#{params[:phrase]}\n"}
    repeater
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    words = "#{[params[:word1], params[:word2], params[:word3], params[:word4], params[:word5]].join(" ")}."
  end


  get '/:operation/:number1/:number2' do
    num1 = params[:number1].to_i
    num2 = params[:number2].to_i
    operation = params[:operation]

    if operation == 'add'
      answer = (num1 + num2)
    elsif operation == 'subtract'
      answer = (num1 - num2)
    elsif operation == 'multiply'
      answer = (num1 * num2)
    elsif operation == 'divide'
      answer = (num1 / num2)
    else 
      "unable to perform this operation"
    end
    answer.to_s
  end

end