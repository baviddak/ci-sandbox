# CI Sandbox

This is a sandbox project created to try out GitHub Actions. 

## Basic Workflow

When a commit is triggered on this project, the following actions will happen 
in the CI pipeline:

1. The necessary dependecies will get installed. 
2. The test application will get compiled.
3. The `pytest` test will get invoked, which runs the client / server 
   communication and verifies that the correct data is recieved. 
