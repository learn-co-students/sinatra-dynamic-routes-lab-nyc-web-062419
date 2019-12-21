require_relative 'config/environment'
require 'pry'

class App < Sinatra::Base
  # Write your code here!

  get '/reversename/:name' do
    @name = params[:name]
    @reversed = @name.reverse
    @reversed
    "#{@reversed}"
  end

  get '/square/:number' do
    @num = params[:number]
    @num = @num.to_i
    @squared = @num * @num
    @squared
    "#{@squared}"
  end

  get '/say/:number/:phrase' do
    ## issue right here, overthinking might be the issue
    @num = params[:number]
    @phrase = params[:phrase]
    @number = @num.to_i
    @new_phrase = @phrase.tr("%", " ")
    @result = @new_phrase * @number
    @final_result = @result.to_s
    "#{@final_result}"
  end

  get '/say/:word1/:word2/:word3/:word4/:word5' do
    @word1 = params[:word1]
    @word2 = params[:word2]
    @word3 = params[:word3]
    @word4 = params[:word4]
    @word5 = params[:word5]
    @result = "#{@word1} "+"#{@word2} "+"#{@word3} "+"#{@word4} "+"#{@word5}."
    "#{@result}"
  end

  get '/:operation/:number1/:number2' do
    @number1 = params[:number1].to_i
    @number2 = params[:number2].to_i
    @operation = params[:operation]
    
    if @operation == "add"
      @added = @number1 + @number2
      @added.to_s
    elsif @operation == "subtract"
      @sub = @number1 - @number2
      @sub.to_s
    elsif @operation == "multiply"
      @mult = @number1 * @number2
      @mult.to_s
    elsif @operation == "divide"
      @div = @number1 / @number2
      @div.to_s
    end

  end

  # binding.pry
  # 0
  
end