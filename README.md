# _LowFeeStake
Cardano staking pool information
Please see https://github.com/rausi/_LowFeeStake/wiki

# jstart.sh script guide
1. copy jstart.sh file to same directory than your jli and jormungandr
2. edit file
  2.1 define wait time (row 9) before jormungandr shutdwon. Example 6h --> sleep 6h
  2.2 define how many times (row 4) node is stopped and restarted. Example 96 times --> -gt 96
3. run commend: chmod +x jstart.sh
4. start script: ./jstart.sh
