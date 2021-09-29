export const signup = user => (
  $.ajax({
    method: 'POST',
    url: '/api/users',
    data: { user }
  })
)

export const getUser = userId => (
  $.ajax({
    method: 'GET',
    url: `/api/users/${userId}`
  })
)