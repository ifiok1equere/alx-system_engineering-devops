Background Context
CMD CHALLENGE is a pretty cool game challenging you on Bash skills. Everything is done via the command line and the questions are becoming increasingly complicated. It’s a good training to improve your command line skills!

This project is NOT mandatory at all. It is 100% optional. Doing any part of this project will add a project grade of over 100% to your average. Your score won’t get hurt if you don’t do it, but if your current average is greater than your score on this project, your average might go down. Have fun!

~~~~
Requirements
	General
		A README.md file, at the root of the folder of the project, is mandatory
		This project will be manually reviewed.
		As each task is completed, the name of that task will turn green
		Create a screenshot, showing that you completed the required levels
		Push this screenshot with the right name to GitHub, in either the PNG or JPEG format
	Specific
		In addition to completing the project tasks and submitting the required screenshots to GitHub, you are also required to demonstrate the use of the SFTP (Secure File Transfer Protocol) command-line tool to move your local screenshots to the sandbox environment.

Here are the steps to follow:

	Take the screenshots of the completed levels as mentioned in the general requirements.
	Open a terminal or command prompt on your local machine.
	Use the SFTP command-line tool to establish a connection to the sandbox environment. You will need the hostname, username, and password provided to you for the sandbox environment.
	Once connected, navigate to the directory where you want to upload the screenshots.
	Use the SFTP put command to upload the screenshots from your local machine to the sandbox environment.
	Confirm that the screenshots have been successfully transferred by checking the sandbox directory.
	Once the screenshots are transferred, you can proceed to push the screenshots to GitHub as mentioned in the initial requirements.
	Make sure to include the steps you followed to use the SFTP command-line tool in your project’s README.md file. This will help the reviewers understand how you performed the file transfer using SFTP.
NOTE :
	The screenshoots of completed level should be inside the dir /root/alx-system_engineering-devops/command_line_for_the_win/
~~~~

The following steps were taken to carry out this project:

1. Opened my WSL terminal on my local machine.
2. Used the following command to establish an SFTP connection to the sandbox environment: sftp 'sftp ea2ae8ffaad8@ea2ae8ffaad8.f9a0f4a4.alx-cod.online'
3. I was prompted to enter my password for the sandbox environment.
4. I changed directory to the root directory.
5. I created a new directory called: 'alx-system_engineering-devops'
6. I changed directory into the newly created directory in step 5
7. I uploaded the screenshots from my local machine to the sandbox with the sftp put command: 'put /home/iwequer/alx-system_engineering-devops/command_line_for_the_win/*'.
8. Confirm that the screenshots have been successfully transferred by checking the sandbox directory with the command: ls.
