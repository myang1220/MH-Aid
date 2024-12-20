# MH Aid Instructions

Instructions and descriptions for each of the different functions of MH Aid are written in great detail below. They are supported with images, and should be very simple to understand. If there are any questions, please feel free to email myang1220@gmail.com

## Storyboard Breakdown

![image](https://user-images.githubusercontent.com/100817191/176329187-da498cf5-f223-4a60-a1a8-d6a1cd1cba1a.png)

To understand how MH Aid works, it is important to understand the different view controllers that are used in the storyboard. On the top, there is the Tab Bar Controller. This creates a tab bar with several clickable items; each will eventually display a unique page. The tab bar controller splits the app into six different sections: home, schedule, activities, lunch, contact, and calendar.

Below the tab bar controller lie a row of navigation controllers; each serve as a root view controller to the initial tab bar controller. When each of the aforementioned items/buttons are pressed, the application loads the respective navigation controller. These navigation controllers allow users to return back to a view using the navigation bar on the top of the screen by simply pressing the "back" button. The exception to this is the lunch view controller, which does not use a navigation controller but instead relies on action show segues and unwind segues.

Embedded within each of these navigation controller lies at least one other view controller which pertains specifically to the item chosen on the tab bar. What exactly these view controllers display and how they function will be elaborated in further depth below.

## Home View Controller

![image](https://user-images.githubusercontent.com/100817191/176469428-73cf2ade-c6e9-4128-8fde-304ff24b4632.png)
![image](https://user-images.githubusercontent.com/100817191/176469456-98545f25-0392-4cb8-abae-0898891e8faf.png)
![image](https://user-images.githubusercontent.com/100817191/176469495-ddaad01d-f600-4344-91d1-ab0e38a7b617.png)

The home view controller serves as the landing page for MH Aid. A segmented control lies on this view controller, and upon changing tabs, a different view is displayed. Coding-wise, if the tab tag is 1, Twitter is displayed; if the tab tag is 2, Instagram is displayed; if the tab tag is 3, Facebook is displayed. The goal is for users to be able to remain up-to-date on Morris Hills current events.

## Schedule View Controller

![image](https://user-images.githubusercontent.com/100817191/176461965-ed0dd36e-eb7f-4f08-86d6-7016f25b3cfc.png)

This is the initial page that users see when they press the schedule item on the tab bar. It is a blank schedule with all eight blocks listed.

![image](https://user-images.githubusercontent.com/100817191/176462061-6e116ee7-ac57-4a2d-bc46-68838cefb8a6.png)

Once the user presses the edit button on the top left, a new page is loaded where users can first enter their current grade level. Upon that input, the following scroll pickers are edited based off of the entered grade level, as each grade has different classes that are available.

![image](https://user-images.githubusercontent.com/100817191/176462081-b3345501-d74d-40e5-9d1e-80e00fa49f1b.png)

After users select all of their classes, their inputs are transported onto the originial view. This data is saved until the next time the edit button is pressed.

## Activities View Controller

![image](https://user-images.githubusercontent.com/100817191/176471740-a6877465-3cc7-4c9b-8e17-be91fa702244.png)
![image](https://user-images.githubusercontent.com/100817191/176472940-7d293ddd-95d1-452a-b8c4-31b8886aa6e7.png)
![image](https://user-images.githubusercontent.com/100817191/176472967-74e3021b-b316-4c93-92d6-bf1238e0c1f0.png)


The third page links directly to a Google Site detailing relevant information regarding Morris Hills' extracurriculars activities. On the side bar, users can choose which topic of activity they want to explore, as well as the specific club that they might be interested in. 

## Lunch View Controller

![image](https://user-images.githubusercontent.com/100817191/176478309-b0105276-725c-4eaf-b80d-6a9fd9cce01c.png)

Upon pressing the lunch item, the user is greeeted with the above screen. The daily dishes remain constant and are always visible, as they are never changed from day-to-day.

![image](https://user-images.githubusercontent.com/100817191/176478329-279762ab-818d-4f5d-97bd-a679e33a23ec.png)

If the user is an administrator, they have the option to choose "Sign-in" in the top right corner. A new screen (shown above) is displayed.

![image](https://user-images.githubusercontent.com/100817191/176478412-7849b95b-3c15-42a6-a88d-9bcd815fab86.png)

Upon entering the correct authentication pin, the administrator is led to a new page where they can add the day's new menus. The text fields code for: today's two specials, today's vegetables, and whether or not fries are served for the day.

![image](https://user-images.githubusercontent.com/100817191/176478461-60676872-f887-4bce-8f6e-8a83a39b3708.png)

![image](https://user-images.githubusercontent.com/100817191/176478495-6f2caa08-eb9b-4b7a-8d03-0c97bd6df095.png)

Above are two very similar images. Depending on whether the administrator chooses if fries will be served or not, a different result is shown at the bottom of the screen. If yes (which is an answer students love), a smiley face is shown. If no (which, conversely, is an answer students hate), a thumbs down is shown. This data is saved for future users to see.

## Contact View Controller

If users have questions for their teachers or for the developer, they have the option to press the "contact" tab (note: for certain users, the screen may be too small and so the "contact" tab can be found by pressing the "more" tab). This is the screen that will appear:

![image](https://user-images.githubusercontent.com/100817191/176520650-f3788ce6-3868-403f-aaef-b96f2aeff3b4.png)

Upon entering the required information in the text fields, the user can then press submit. This will bring up an pre-made email draft containing the question that the user wants to ask with the recipient as the email of the teacher chosen. In order to sign off the email, the code takes the "sender name" text field and places it after "Sincerely,".

![image](https://user-images.githubusercontent.com/100817191/176520923-ecaeb57e-fab9-4254-a236-bf5a2688e339.png)
![image](https://user-images.githubusercontent.com/100817191/176520944-db45efc8-0901-487e-b0f1-e860bda90fc6.png)

If the user decides to contact the developer if they have any questions or if they found a bug, they have the option to do so by pressing the "contact us" button. Similar to the function above, a pre-made email draft is displayed with the pre-set recipient as myang1220@gmail.com. 

![image](https://user-images.githubusercontent.com/100817191/176521151-f8f30530-1e1e-45c2-b222-6626090aa575.png)

The last thing that can be found on the contact view controller is the privacy policy and terms and conditions. This is hyperlinked through the button labeled with the same name. The linked Google Sites contains the privacy policy and terms and conditions under separate tabs.

![image](https://user-images.githubusercontent.com/100817191/176522229-c589f08b-1989-40e3-b124-b4e0a5f25506.png)
![image](https://user-images.githubusercontent.com/100817191/176522268-c6132dc6-5f24-4094-937f-f93a500e7413.png)

## Calendar View Controller

The final view controller is the calendar view controller. Here, a Google Calendar with all of Morris Hills' events are integrated directly into the app. Users can move backward or forward through the months to view the different events.

![image](https://user-images.githubusercontent.com/100817191/176523732-4edf7b0f-c12b-4708-a41e-5ca8f2368de2.png)
