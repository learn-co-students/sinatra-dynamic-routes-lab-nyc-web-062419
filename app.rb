require_relative 'config/environment'

class App < Sinatra::Base
  # Write your code here!
  get '/reversename/:name' do
    name = params[:name]
    rev = name.reverse
    "#{rev}"
  end

  get '/square/:number' do
    num = params[:number].to_i
    sq = num * num
    "#{sq}"
  end

  get '/say/:number/:phrase' do
    num = params[:number].to_i
    ph = params[:phrase]
    array = []
    num.times do
      array << ph
    end
    str = array.join(" ")
    "#{str}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do

    array = params.values
    str = array.join(" ")
    str = str + "."
    "#{str}"
  end

  get '/:operation/:number1/:number2' do

    opp_hash = {"add"=> "+", "subtract"=> "-" , "multiply"=> "*", "divide"=> "/"}

    num1 = params[:number1]
    num2 = params[:number2]
    opp_str = params[:operation]
    num_str = num1 + opp_hash[opp_str] + num2
    num = eval(num_str)
    "#{num}"

  end

end