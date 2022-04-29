import * as functions from "firebase-functions";
import axios from "axios";

const SYNCHROWISE_BACKEND = "https://www.synchrowise-app.com";
const USER_DELETE_ENDPOINT = `${SYNCHROWISE_BACKEND}/api/User/firebase/delete`;

export const deleteUser = functions.auth.user().onDelete((user) => {
  const userId = user.uid;

  axios
    .delete(`${USER_DELETE_ENDPOINT}?firebase_ID=${userId}`)
    .then((response) => {
      if (response.status === 200) {
        console.log("User deleted successfully");
      }
      return;
    })
    .catch(() => {
      new Promise((resolve) => setTimeout(resolve, 2000)).then(() => {
        axios
          .delete(`${USER_DELETE_ENDPOINT}?firebase_ID=${userId}`)
          .then((response) => {
            if (response.status === 200) {
              console.log("User deleted successfully");
            }
          })
          .catch((error) => {
            console.log(error.response.status);
            console.log(JSON.stringify(error.response.data));

            console.log(
              `Error deleting user from backend.\nUser ID: ${userId}`
            );
          });
      });
    });
});
