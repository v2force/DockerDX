FROM library/ubuntu
RUN apt-get update && \
    apt-get -y install wget && \
    apt-get -y install xz-utils && \
    cd ~ && \
    wget https://developer.salesforce.com/media/salesforce-cli/sfdx-v5.6.22-f9533ba-linux-amd64.tar.xz -O sfdx.tar.xz && \
    apt-get update && \
    tar -xvJf ~/sfdx.tar.xz && \
    cd heroku && \
    ./install && \
    apt-get -y install git && \
    sfdx update && \
    sfdx force --help
    
