class Application

  def call(env)
    resp = Rack::Response.new

    num_1 = Kernel.rand(1..20)
    num_2 = Kernel.rand(1..20)
    num_3 = Kernel.rand(1..20)

    resp.write "#{num_1}\n"
    resp.write "#{num_2}\n"
    resp.write "#{num_3}\n"

    if num_1==num_2 && num_2==num_3
      resp.write "You Win"
    else
      resp.write "You Lose"
    end

    resp.finish
  end

end

#visit http://localhost:9292/ to see the web app. The 9292 is generated after running:
# rackup config.ru in the command line. It represents the port number which may change with your location/device etc. 


## BASIC RACK APP: 
# class Application

#   def call(env)
#     resp = Rack::Response.new
#     resp.write "Hello, World"
#     resp.finish
#   end

# end
