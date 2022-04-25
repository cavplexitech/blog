module CommentsHelper
  def nested_comments(comments)
    comments.map do |comment, sub_comments|
      #content_tag(:div, render(comment), class: "media", style: "margin-left: 40px" )
      content_tag(:p, "#{comment.commenter}".html_safe + tag(:br) + "#{comment.body}".html_safe, class: "media", style: "margin-left: 40px" )
    end.join.html_safe
  end
end
