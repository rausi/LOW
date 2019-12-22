# _LowFeeStake
Cardano staking pool information
Please see https://github.com/rausi/_LowFeeStake/wiki

# jstart.sh script guide
1. copy jstart.sh file to same directory than your jcli and jormungandr
2. edit file<br>
  2.1 define wait time (row 9) before jormungandr shutdwon. Example 6h --> sleep 6h<br>
  2.2 define how many times (row 4) node is stopped and restarted. Example 96 times --> -gt 96
3. run commend: chmod +x jstart.sh
4. start script: ./jstart.sh

If you need to stop script press ctrl+c
