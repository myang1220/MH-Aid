# MH Aid Instructions

## Storyboard Breakdown
![image](https://user-images.githubusercontent.com/100817191/176329187-da498cf5-f223-4a60-a1a8-d6a1cd1cba1a.png)

To understand how MH Aid works, it is important to understand the different view controllers that are used in the storyboard. On the top, there is the Tab Bar Controller. This creates a tab bar with several clickable items; each will eventually display a unique page. The tab bar controller splits the app into six different sections: home, schedule, activities, lunch, contact, and calendar.

Below the tab bar controller lie a row of navigation controllers; each serve as a root view controller to the initial tab bar controller. When each of the aforementioned items/buttons are pressed, the application loads the respective navigation controller. These navigation controllers allow users to return back to a view using the navigation bar on the top of the screen by simply pressing the "back" button. The exception to this is the lunch view controller, which does not use a navigation controller but instead relies on action show segues and unwind segues.

Embedded within each of these navigation controller lies at least one other view controller which pertains specifically to the item chosen on the tab bar. What exactly these view controllers display and how they function will be elaborated in further depth below.

## Home View Controller
The home view controller serves as the landing page for MH Aid. A segmented control lies on this view controller, and upon changing tabs, a different view is displayed. Coding-wise, if the tab tag is 1, Twitter is displayed; if the tab tag is 2, Instagram is displayed; if the tab tag is 3, Facebook is displayed.
