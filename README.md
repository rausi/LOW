# _LowFeeStake
Cardano staking pool information
Please see https://github.com/rausi/_LowFeeStake/wiki

---
# jstart.sh script guide
*Restart jormungundr after defined wait time*
1. copy jstart.sh file to same directory than your jcli and jormungandr
2. edit file<br>
  2.1 define wait time (row 9) before jormungandr shutdwon. Example 6h --> sleep 6h<br>
  2.2 define how many times (row 4) node is stopped and restarted. Example 96 times --> -gt 96
3. run command: chmod +x jstart.sh
4. start script: ./jstart.sh

If you need to stop script press ctrl+c

---
# jstart_stuck.sh script guide *to be added soone*
*Restart jormungundr if stuck_notifier exists in log file*
1. mkdir logs to same directory than your jcli and jormungandr
2. Make sure you have line --> output": { "file": "./logs/test.log" } --> in your itn_rewards_v1-config.yaml file
3. copy jstart_stuck.sh file to same directory than your jcli and jormungandr
4. Edit file. Check port number and define sleep time etc.
5. Run command: chmod +x jstart.sh
6. Start script: ./jstart.sh
