import * as functions from "firebase-functions";
import axios from "axios";

const SYNCHROWISE_BACKEND = "https://www.synchrowise-app.com";
const USER_DELETE_ENDPOINT = `${SYNCHROWISE_BACKEND}/api/User/firebase/`;

export const deleteUser = functions.auth.user().onDelete(async (user) => {
  const userId = user.uid;

  const response = await axios.delete(`${USER_DELETE_ENDPOINT}${userId}`);

  if (response.status !== 200) {
    //* Delay 2 second and try deleting user again
    await new Promise((resolve) => setTimeout(resolve, 2000));
    const response = await axios.delete(`${USER_DELETE_ENDPOINT}${userId}`);

    if (response.status !== 200) {
      throw new Error(
        `Failed to delete user ${userId}. Please delete the user manually.`
      );
    }
  }
});
