module UsersHelper
  def gravatar_url(user,options = {size:60})
    gravatar_id = Digest::MDS::hexdigest(user.email.downcase)
    size = options[:size]
    "https://secure.gravatar.com/avatar/
#{gravatar_id}
?s=
#{size}
"
  end
end
