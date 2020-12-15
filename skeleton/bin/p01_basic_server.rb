require 'rack'
require 'json'

app = Proc.new do |env|
  req = Rack::Request.new(env)
  res = Rack::Response.new
  res['Content-Type'] = 'text/html'
  res.write("/i/love/app/academy")
  res.finish
end

Rack::Server.start(
    app: app,
    Port: 3000
)

# class RackApplication
#     def self.call(env)
#         ['200', {'Content-Type' => 'text/html'}, ['hello there']]
#     end
# end

# class SimpleApp
#     def self.call(env)
#         req = Rack::Request.new(env)
#         res = Rack::Response.new
#         name = req.params['name']

#         res.write("Hello #{name}")
#         res.finish
#     end
# end

# class CookieApp
#     def self.call(env)
#         req = Rack::Request.new(env)
#         res = Rack::Response.new

#         food = req.params['food']
#         if food
#             res.set_cookie(
#             '_my_cookie_app', 
#             {
#             path: '/', 
#             value: {food: food}.to_json
#             }
#         )
#         else 
#             cookie = req.cookies['_my_cookie_app']
#             cookie_val = JSON.parse(cookie)
#             food = cookie_val['food']
#             res.write("your favorite food is #{food}")
#         end
#         res.finish
#     end
# end

# app = Proc.new do |env|
#     req = Rack::Request.new(env)
#     res = Rack::Response.new

#     if req.path.start_with?('/puppy')
#         res.status = 302
#         res['Location'] = 'https://hips.hearstapps.com/ghk.h-cdn.co/assets/16/08/gettyimages-462376265.jpg?crop=1.0xw:1xh;center,top&resize=980:*'
#     else
#         res.write('Nothing to see here')
#     end
#     res.finish
# end

# Rack::Server.start({
#     app: app, 
#     Port: 3000
# })
   