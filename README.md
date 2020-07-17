SCILLA DEVELOPMENT ENVIRONMENT LINUX SCRIPT

This script installs the Scilla Smart Contract Programming Language Development Environment On A Linux VPS or OS.

Requirements:

1. Ubuntu v18.04 or later

Instructions:

1. DO NOT INSTALL THIS SCRIPT AS ROOT! Once you complete the primary installation, RUN THE SCRIPT AS ROOT ANYTIME YOU NEED TO USE THE DEVELOPER ENVIRONMENT. 

2. CHANGE DIRECTORY TO USER:
cd /home/~USER

3. CLONE THE REPOSITORY:
git clone https://github.com/pavondunbar/linux-scilla

4. GRANT EXECUTE PERMISSIONS:
chmod +x scilla.sh

5. RUN THE SHELL SCRIPT:
./scilla.sh

Let the script run. It may ask you one or two yes or no questions or ask you to press enter. This is normal.

After the script runs it will test the auction.scilla smart contract. 

If the output is JSON data and you see "Installation complete. Enjoy Scilla!" then you're good to go.

If you wish to write your own Scilla smart contracts in the command line, you can do so by:

a. GOING TO THE CONTRACTS FOLDER:
cd scilla/tests/contracts

b. STARTING A NEW SCILLA CONTRACT FILE:
nano [filename].scilla

To test your contract once it's done:

a. GO TO THE SCILLA DIRECTORY:
cd scilla

b. INITIALIZE EASYRUN:
./easyrun.sh [scilla filename] 0-5 (pick a number between 0 and 5).

For example, if your Scilla smart contract filename is escrow.scilla, you would run:  
./easyrun.sh escrow 2

If you have any questions, comments, or recommendations, let me know by email at pavondunbar@gmail.com.

Finally, if you enjoy the script and you'd like to make a donation, I'd appreciate it. My ZIL address is zil12wpl057g0vue93nsqpvvkrxhsy4aqf7cqtu6px . Thank you in advance.
