# spring-4-security-session-management

A project that shows an example of custom 'Concurrent Session Control' in Spring security. 

Spring security allows you to define the max nr of sessions allowed per login.
Add the following lines to your application context :

<session-management>
	<concurrency-control max-sessions="1" />
</session-management>

You can define your own session strategy and that's what's done in this project. 

Usefull links :
http://stackoverflow.com/questions/4181861/src-refspec-master-does-not-match-any-when-pushing-commits-in-git
http://stackoverflow.com/questions/16951207/git-commit-error-pathspec-commit-did-not-match-any-files-known-to-git
