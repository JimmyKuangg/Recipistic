json.extract! @review, :id, :body
json.user @review.user.username