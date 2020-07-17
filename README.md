Scilla Development Environment Linux Script

This script installs the Scilla Smart Contract Programming Language Development Environment On A Linux VPS or OS.

Requirements:

1. Ubuntu v18.04 or later

Instructions:

1. DO NOT RUN THIS SCRIPT AS ROOT! 

2. Change directory to user:
cd /home/~USER

3. Clone this repository:
git clone https://github.com/pavondunbar/linux-scilla

4. Change file permission of scilla.sh by granting execute permissions:
chmod +x scilla.sh

5. Run the script:
./scilla.sh

Let the script run. It may ask you one or two yes or no questions or ask you to press enter. This is normal.

After the script runs it will test the auction.scilla smart contract. If the output is JSON data and you see "Installation complete. Enjoy Scilla!" then you're good to go.

If you wish to write your own Scilla smart contracts in the command line, you can do so by:

a. Going to the contracts folder
cd scilla/tests/contracts

b. Start a new Scilla Contract file:
nano [filename].scilla

To test your contract once it's done:

a. Go to the scilla directory:
cd scilla

b. Run easyrun:
./easyrun.sh [scilla filename] 0-5 # pick a number between 0 and 5
EX: If your Scilla smart contract filename is escrow.scilla, you would run
./easyrun.sh escrow 2

If you have any questions, comments, or recommendations, let me know by email at pavondunbar@gmail.com.

Finally, if you enjoy the script and yould like to make a donation, I'd appreciate it. My ZIL address is zil12wpl057g0vue93nsqpvvkrxhsy4aqf7cqtu6px
