To install Docker in Windows 10, download the Docker Desktop installer from the official Docker website, run the executable, follow the installation wizard, ensuring WSL 2 and the necessary Windows features are enabled, and then restart your computer to complete the process. After restarting, you can sign in to Docker Desktop to start using Docker.

Before you begin:

Check System Requirements: Ensure your system has a 64-bit processor, at least 4GB of RAM, and 25GB of disk space.

Enable Virtualization: Make sure virtualization is enabled in your computer's BIOS settings.

Enable Windows Features: Go to "Turn Windows features on or off" and make sure "Virtual Machine Platform," "Windows Hypervisor Platform," and "Windows Subsystem for Linux" are checked.

Step-by-step installation:

Download the installer: Go to the official Docker website and download Docker Desktop for Windows. 
Run the installer: Double-click the downloaded Docker Desktop Installer.exe file to begin the installation process.

Configure the installation:
During the setup wizard, make sure the option to enable WSL 2 features is selected. 
If prompted, authorize the installer to make changes to your device.

Complete the installation: Follow the on-screen instructions in the wizard and click "Close" when the installation is complete.

Restart your computer: A system restart is required to finish the installation. 

Sign in to Docker Desktop: After restarting, open Docker Desktop and sign in with your Docker ID or skip this step.
Open Docker Desktop using the Apps Menu.
Login using your Docker user and password.

Update wsl in the CMD:

> wsl --update

Verify the installation: Open a terminal or command prompt and type docker version to confirm Docker is installed and running correctly.

> docker --version

docker run hello-world

You can now use Docker Desktop to build, run, and manage your containers.
