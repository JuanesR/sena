class Post <Wrapper::Base

  attr_accessor :text, :user_id

  def save
    HTTParty.post(HOST + '/posts.json', body: to_json,
                  headers: {'Content-Type' => 'application/json'})
  end

  def delete
  	HTTParty.delete(HOST + "/posts/#{self.id}.json")
  end

  def to_json
    {post: {
    	text: self.text,
    	user_id: self.user
    }}.to_json
  end 

  #def self.all
  #	get('posts.json').map do |item|
  #    new(item)
  #  end
  #end

  #def self.find(id)
  #	new(get("/posts/#{id}.json"))
  #end


end