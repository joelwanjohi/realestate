// Take a look at the database below and then answer the following questions:

// {  
//    "questions": {  
//       "ABCDakarandomkey": {  
//          "question": "Who was the 13th president of the United States?",
//          "choice_1": "Millard Fillmore",
//          "choice_2": "Zachary Taylor",
//          "choice_3": "Franklin Pierce",
//          "choice_4" :"James K. Polk",
//          "answer" :"choice_1"
//       },
//       "EFGHakarandomkey": {  
//          "question": "In what year was the first gasoline combustion engine invented?",
//          "choice_1": "1769",
//          "choice_2": "1886",
//          "choice_3": "1807",
//          "choice_4": "1864",
//          "answer": "choice_4"
//       }
//    },
//    "players": {  
//       "user_key_1": {  
//          "name": "Person",
//          "opponents": {  
//             "IJKLakarandomkey": "user_key_2",
//             "MNOPakarandomkey": "user_key_6"
//          },
//          "questions": {  
//             "ABCDakarandomkey": "Correct",
//             "EFGHakarandomkey": "Incorrect"
//          }
//       },
//       "user_key_2": {  
//          "name": "Mai",
//          "opponents": {  
//             "QRAAakarandomkey": "user_key_1",
//             "SQUEakarandomkey": "user_key_6"
//          },
//          "questions": {  
//             "ABCDakarandomkey": "Incorrect",
//             "EFGHakarandomkey": "Incorrect"
//          }
//       }
//    },
//    "opponents": {  
//       "couple_Key_1": "user_key_1_user_key_2",
//       "user_1": "user_key_1",
//       "user_2": "user_key_2",
//       "winner": "user_key_1"
//    }
// }

// 1. Select the direct children of the "players" node:
// "user_key_1": Represents information about the first player, including their name, opponents, and questions they answered.
// "user_key_2": Represents information about the second player, including their name, opponents, and questions they answered.
// These are the direct children of the "players" node, as they are nested directly under it.

// 2. Path referring to 'choice_4: "1864" ':
// /questions/EFGHakarandomkey/choice_4: This is the path to the value "1864" in the database, specifically for the question with the key "EFGHakarandomkey" and its choice_4.
// 3. Value of the key at the path /questions/ABCDakarandomkey/answer:
// "choice_1": This is the value associated with the key "answer" in the question with the key "ABCDakarandomkey" under the "questions" node.
// 4. What kind of app could this database belong to?
// The structure of the database suggests that it could belong to a quiz or trivia app. Here's why:
// The "questions" node contains information about quiz questions, choices, and correct answers.
// The "players" node stores details about players, including their names, opponents, and the questions they have answered.
// The "opponents" node seems to track the winners of quizzes between players.
// In summary, the database is structured to manage quiz-related data and player interactions, which is typical of a quiz or trivia app.



//json { "chat": { "messages": { "-KS3PV-iwUZp5wkNq70s": { "name": "person1", "text": "hey!" }, "-KS3PXhIhs8J_inrExy4": { "name": "person2", "text": "what’s up?" } } }, "special_chat": { "messages": { "-KR-DwqtKzlWGxSn9P0y": { "name": "person1", "text": "Want to go to the movies?" }, "-KR4tIpWmNn-EYxquSrw": { "name": "person3", "text": "Yeah! Let’s meet at 7." } } }, "users": { "uid1": { "paid": true }, "uid2": { "paid": false }, "uid3": { "paid": true } } }


// image picker
// mPhotoPickerButton.setOnClickListener(new View.OnClickListener() {
//    @Override
//    public void onClick(View view) {
//        Intent intent = new Intent(Intent.ACTION_GET_CONTENT);
//        intent.setType("image/jpeg");
//        intent.putExtra(Intent.EXTRA_LOCAL_ONLY, true);
//        startActivityForResult(Intent.createChooser(intent, "Complete action using"), RC_PHOTO_PICKER);
//    }
// });


// Here is an example rule that allows you to write to storage if the data is less than 3 MB.

// service firebase.storage {
//   match /b/<firebase-bucket> /o {
//     match /{imageId} {
//         allow write: if request.resource.size < 3  *1024*  1024
//     }
//   }
// }