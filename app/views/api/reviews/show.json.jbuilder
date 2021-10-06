json.extract! @review, :id, :body
json.user @review.user.username
json.reviewer_id @review.user.id