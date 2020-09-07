# LOW - Stakepool
LOW Cardano staking pool information
Mainnet --> [LOW Mainnet](https://rausipool.fi/low)
----------------------------
Please see https://github.com/rausi/LOW/wiki

---
ITN testnet versio!!! Below are guide for some script files to help maintain stakepool. Note! You have to modify files to be compatible with your own settings e.g. port number. **Use at your own risk.**

Cardano/Ada Donation address: _DdzFFzCqrht2jaj8hErzXYir6SMKeAmQKXzmVpoXnahCoJwC3ZmqkznvJ2gyBVVaH1q2PFkixm9JEBRFiprE2oC8pWiaccyxDWTg3Q31_

---
# jstart.sh script guide (Ubuntu 18.04.3 LTS)
**Restart jormungundr after defined wait time**
1. copy jstart.sh file to same directory than your jcli and jormungandr
2. edit file<br>
  2.1 define wait time (row 9) before jormungandr shutdwon. Example 6h --> sleep 6h<br>
  2.2 define how many times (row 4) node is stopped and restarted. Example 96 times --> -gt 96
3. run command: chmod +x jstart.sh
4. start script: ./jstart.sh

If you need to stop script press ctrl+c

---
# jstart_stuck.sh script guide (Ubuntu 18.04.3 LTS)
**Restart jormungundr if stuck_notifier exists in log file**
1. mkdir logs to same directory than your jcli and jormungandr
2. Make sure you have line --> "output": { "file": "./logs/test.log" } --> in your itn_rewards_v1-config.yaml file
3. copy jstart_stuck.sh file to same directory than your jcli and jormungandr
4. Edit file. Check port number and define sleep time etc.
5. Run command: chmod +x jstart_stuck.sh
6. Start script: ./jstart_stuck.sh (Note! second terminal window is opened. Do not close windows)
7. check log file status if needed: cat ./logs/test.log (!Note open new terminal window)

![Distribution](https://github.com/rausi/_LowFeeStake/blob/master/stuck_notifier.PNG)

---
