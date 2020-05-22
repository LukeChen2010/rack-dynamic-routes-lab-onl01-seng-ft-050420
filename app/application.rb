class Application
  
  @@items = []
 
  def call(env)
    resp = Rack::Response.new
    req = Rack::Request.new(env)
 
    if req.path.match(/items/)
      item_name = req.path.split("/items/").last
      item = @@items.find {|x| x.name == item_name}
      
      if item != nil
        resp.write item.price
      else
      end
      
    else
      resp.status = 404
      resp.write "Route not found"
    end
 
    resp.finish
  end
end