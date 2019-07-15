require_relative "config/environment"

class App < Sinatra::Base
  # Write your code here!

  get "/reversename/:name" do
    "#{params[:name].reverse}"
  end

  get "/square/:number" do
    "#{params[:number].to_i * params[:number].to_i}"
  end

  get "/say/:number/:phrase" do
    total = ""
    params[:number].to_i.times do
      total += "#{params[:phrase]}\n"
    end
    "#{total}"
  end

  get "/say/:word1/:word2/:word3/:word4/:word5" do
    "#{params[:word1]} #{params[:word2]} #{params[:word3]} #{params[:word4]} #{params[:word5]}."
  end

  get "/multiply/:number1/:number2" do
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    "#{n1 * n2}"
  end
  get "/divide/:number1/:number2" do
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    "#{n1 / n2}"
  end
  get "/add/:number1/:number2" do
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    "#{n1 + n2}"
  end
  get "/subtract/:number1/:number2" do
    n1 = params[:number1].to_i
    n2 = params[:number2].to_i
    "#{n1 - n2}"
  end
end
