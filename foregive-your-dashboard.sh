# 生成过去 365 天的提交时间
# 利用 git commit --date=<date>，和上面生成的时间循环提交
# all green!

for dayOffset in {365..1}
do
  echo "Committed $dayOffset day ago!(1/2)" >> logs
  git add --all
  git commit --date="$dayOffset day aoge" -m "Committed $dayOffset day ago!(1/2)"
  echo "Committed $dayOffset day ago!(2/2)" >> logs
  git add --all
  git commit --date="$dayOffset day aoge" -m "Committed $dayOffset day ago!(2/2)"  
done