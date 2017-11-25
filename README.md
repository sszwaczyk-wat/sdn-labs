# docker-sdn-labs

A Docker container for Software Defined Networks (SDN) labs in Military University of Technology.

## Usage

In order to facilitate the use of this image, scripts are provided to run, attach, and stop the container. The scripts are available through the github repository (https://github.com/sszwaczyk/docker-snd-labs.git) to get execute the command:

``` git clone https://github.com/sszwaczyk/docker-sdn-labs.git```

Image consists of:
1. Mininet SDN network emulator
2. OpenVSwitch
3. Floodlight SDN controller
4. Floodilght WEB GUI
5. Eclipse IDE


1. Run container:
```./run.sh```
or
```xhost +```
```docker run -tid --privileged --rm -e DISPLAY=$DISPLAY -v /tmp/.X11-unix:/tmp/.X11-unix --name=prc-labs sszwaczyk/prc-labs```

2. You can attach to running container using:
```./attach.sh```
or
```docker exec -t -i prc-labs bash -c 'su student'```

3. Also you can can connect via SSH protocol:
```./attach_ssh.sh```
or
```ssh -X -o UserKnownHostsFile=/dev/null -o StrictHostKeyChecking=no student@<container_ip>```

4. Run mininet:
```$ sudo mn```

5. Start wireshark when you are attached to container:
```$ wiershark```
or using script:
```./wiershark_student.sh```
or run as root user:
```./wireshark_root.sh```

6. Start eclipse when you are attached to conatiner:
```$ eclipse```
or using script:
```./eclipse_student.sh```
or run as root user:
```./eclipse_root.sh```

The Floodlight project was selected as an SDN controller. This is a controller written using Java. Its source was downloaded to /home/student/floodlight. Using ant sources were transformed to Eclipse project. To import a Floodlight project into Eclipse, follow these steps:

1. Run Eclipse with eclipse command
2. Leave the default workspace location default
3. Choose File → Import → General → Existing Projects into Workspace
4. Select the /home/student/floodlight directory
5. Import the project

To be able to run the controller, you must add a startup configuration. To do this, follow these steps:

1. From the top menu, select Run → Run Configurations ...
2. Double click on Java Application
3. Rename to Floodlight
4. Select floodlight project
5. As main class select: net.floodlightcontroller.core.Main
6. Select Apply and Close
