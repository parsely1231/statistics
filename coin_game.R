coin_toss = function(){
  res = rbinom(1, 1, 0.5)
  return (res)
}

# 10回連続で表か裏が出るかどうか判定
check_straight10 = function() {
  count_1 = 0
  count_0 = 0
  for (i in (1:100)){
    if (coin_toss() == 1) {
      count_1 = count_1 + 1
      count_0 = 0
    }
    else {
      count_1 = 0
      count_0 = count_0 + 1
    }
    
    if (count_1 == 10){
      return (1)
    } 
    if (count_0 == 10){
      return (1)
    } 
  }
  return (0)
}

gamestart = function(x){
  result = numeric(x)
  for (i in (1:x)){
    result[i] = check_straight10()
  }
return (result)
}