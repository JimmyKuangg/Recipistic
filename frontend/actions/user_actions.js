import { getUser } from "../util/user_api_util";
export const FETCH_USER = 'FETCH_USER';

const fetchUser = user => ({
  type: FETCH_USER,
  user
})

export const findUser = userId => dispatch => (
  getUser(userId)
  .then(user => dispatch(fetchUser(user)))
)