# MH Aid Instructions

## Storyboard Breakdown
![image](https://user-images.githubusercontent.com/100817191/176329187-da498cf5-f223-4a60-a1a8-d6a1cd1cba1a.png)

To understand how MH Aid works, it is important to understand the different view controllers that are used in the storyboard. On the top, there is the Tab Bar Controller. This creates a tab bar with several clickable items; each will eventually display a unique page. The tab bar controller splits the app into six different sections: home, schedule, activities, lunch, contact, and calendar.

Below the tab bar controller lie a row of navigation controllers; each serve as a root view controller to the initial tab bar controller. When each of the aforementioned items/buttons are pressed, the application loads the respective navigation controller. These navigation controllers allow users to return back to a view using the navigation bar on the top of the screen by simply pressing the "back" button. The exception to this is the lunch view controller, which does not use a navigation controller but instead relies on action show segues and unwind segues.

Embedded within each of these navigation controller lies at least one other view controller which pertains specifically to the item chosen on the tab bar. What exactly these view controllers display and how they function will be elaborated in further depth below.

## Home View Controller
![image](https://user-images.githubusercontent.com/100817191/176461599-b8f4b93e-cf72-4371-ad2b-75c5c0809c1d.png)
![image](https://user-images.githubusercontent.com/100817191/176461655-38a2a120-7c2c-4cba-a021-99706ade5a65.png)
![image](https://user-images.githubusercontent.com/100817191/176461656-26c17c70-4fa6-489e-880b-3893791eef1b.png)

The home view controller serves as the landing page for MH Aid. A segmented control lies on this view controller, and upon changing tabs, a different view is displayed. Coding-wise, if the tab tag is 1, Twitter is displayed; if the tab tag is 2, Instagram is displayed; if the tab tag is 3, Facebook is displayed. The goal is for users to be able to remain up-to-date on Morris Hills current events.

## Schedule View Controller
![image](https://user-images.githubusercontent.com/100817191/176461965-ed0dd36e-eb7f-4f08-86d6-7016f25b3cfc.png)

This is the initial page that users see when they press the schedule item on the tab bar. It is a blank schedule with all eight blocks listed.

![image](https://user-images.githubusercontent.com/100817191/176462061-6e116ee7-ac57-4a2d-bc46-68838cefb8a6.png)

Once the user presses the edit button on the top left, a new page is loaded where users can first enter their current grade level. Upon that input, the following scroll pickers are edited based off of the entered grade level, as each grade has different classes that are available.

![image](https://user-images.githubusercontent.com/100817191/176462081-b3345501-d74d-40e5-9d1e-80e00fa49f1b.png)

After users select all of their classes, their inputs are transported onto the originial view. This data is saved until the next time the edit button is pressed.
