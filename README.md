
### Instructions

1. Global Dependencies
    * Install [Ruby](https://www.ruby-lang.org/en/documentation/installation/)
    * Or Install Ruby with [Homebrew](http://brew.sh/)
    ```
    $ brew install ruby
    ```
    * Install bundler (Sudo may be necessary)
    ```
    $ gem install bundler
    ```

2. brew cask install chromediver
	
	
4. Project Dependencies
	* Install packages (Use sudo if necessary)
	```
	$ sudo bundle install
	$ sudo bundle update
	```

5. In the features folder there are feature files 

6. Run the cucumber tests from the base of the test folder 
	```
	cucumber features -t @UIAutomation etc



API Part

run file APICALL.rb in command and it will give you the json string with the weather information


Question 3:
The integration of tests into CI/CD is a must to keep delivering new features to the production environment. The way it works from a QA standpoint is as follows:
First, we create tests, such as UI tests, API tests, Performance tests, and unit tests. The tests get merged into repositories and get to be available every time new features get merged into live environments (could be also not local envs such as PRs or containers) then once that takes place the pipeline should perform a set of tasks that are sequential to allow the testing for quality of newly promoted developer's code. This system allows the reassurance of quality and no regressions being introduced into the envs and ultimately PROD. The ultimate goal is to do artifact or package tagging to make sure if something goes wrong there is a mechanism that can roll back to the last working version.