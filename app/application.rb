class Application
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
      
    else
      resp.status = 404
      resp.write "Path Not Found"
    end
 
    resp.finish
  end
end