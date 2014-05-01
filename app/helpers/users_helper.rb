module UsersHelper

  # 与えられたユーザーのGravatar (http://gravatar.com/) を返す。
  def gravatar_for(user, options = { size: 50 })
    p user.email
    gravatar_id = Digest::MD5::hexdigest(user.email.to_s.downcase)
    size = options[:size]
    p gravatar_id
    gravatar_url = "https://secure.gravatar.com/avatar/#{gravatar_id}?s=#{size}"
    image_tag(gravatar_url, alt: user.name, class: "gravatar")
  end
end