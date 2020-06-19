# Amplify Lambda Python Build

This project illustrates building a Python based Lambda function  on a Mac with operating system specific dependencies.

When you install such dependencies on your Mac to be bundled with your Lambda function, PIP will build the Mac specific version of the package.  When you upload the function to Lambda it will not run, as Lambda runs on Linux and your function will require the Linux version of that dependency.

_Note - this is not the case for all (or even most) Python packages.  Many are platform independent and will run on any OS.  There are some, though, that are built with C bindings that are compiled for the target operating system on which the Python app will run._

## Making This Work

The key to making this work is **Docker**.  By running a Docker container (which is a virtual Linux environment) on your Mac, you can execute the PIP command "inside" a Linux Operating System container and export the built dependencies to the Lambda function folder in your project.




