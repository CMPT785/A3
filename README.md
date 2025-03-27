In this assignment, you will practice topics related to DevOps security. You are given the required source ([Download assignment3.zip](https://canvas.sfu.ca/courses/88624/files/25345194?wrap=1) - Download the first commit if not accessible) for the assignment and the docker image (registry.gitlab.com/sl0wc0der/private-packages/assignment2:v1). Follow the instructions below to complete the assignment:

**Docker**
1. Use dive (https://github.com/wagoodman/dive) or any other method to find the file that was added and later removed from the image. Provide screenshots of the steps/results to complete the task.
2. Is it possible to get the contents of the deleted file? If yes, explain why and show the steps to do it with screenshots and elaborate how. If not, why not? Explain in detail how docker images work internally to support your answer.
3. Assume that we want to be able to clone the repo inside the docker image with the restriction that we can only build the image with `docker build . -t <image_name>:<version>`. How would you modify the Dockerfile to improve its security (not limited to the git clone operation)? Submit the final contents of the Dockerfile and explain the changes/choices made.
Hint: It may be helpful to familiarize yourself with [Docker's image structure](https://github.com/moby/docker-image-spec/blob/main/spec.md).

**Git**

4. There's a git repo being cloned into the docker image. How can you use git commands to make sure that no secrets exist in the repo? Submit the steps taken to make sure the repo is safe from any secrets. You can also use external tools for this task if needed.
5. If you find any secret contents/files, also provide the commands to fix the existing git repo to eliminate the secrets.

**Python/Pip**

6. Identify the security issues with the requirements.txt file and explain the issues you find in detail.
7. Provide proof-of-concept exploits for all the issues identified along with screenshots of the exploits. You are not required to perform the exploit inside a Docker container.
8. Fix the requirements files and the Dockerfile if required by your fix along with an explanation of the fixes.
In order to upload packages without polluting the PyPi environment, we will use [devpi](https://devpi.net/docs/devpi/devpi/latest/+d/quickstart-releaseprocess.html) as a substitute to the Python package index. You may want to  temporarily point your [global index url](https://pip.pypa.io/en/stable/cli/pip_config/) to the devpi server to use pip as you normally would.
 
**Grading**
Along with task completeness, the submissions will also be evaluated based on the following aspects:

- Exploit severity
- Quality of the suggested fixes