class Post < Wrapper::Base

<<<<<<< HEAD
	attr_accessor :id, :text, :user_id ,:url, :created_at, :update_at

	def to_json
		{post: {
			id: self.id,
			text: self.text,
			user_id: self.user_id,
		}}.json 
	end
end
=======
  attr_accessor :id, :text, :user_id, :url, :created_at, :updated_at

  def to_json
    {post: {
        id: self.id,
        text: self.text,
        user_id: self.user_id,
    }}.to_json
  end

end
>>>>>>> 2579b836ee454178cffbc724e848f592dc3732ad
