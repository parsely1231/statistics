# 様々な標本統計量を計算

# 標本分散と不偏分散
sample_var = numeric(10000)
unbi_var = numeric(10000)

for (i in 1:10000){
  sample = rnorm(10, 50, 10)
  sample_var[i] = mean((sample-mean(sample))^2) # /n
  unbi_var[i] = var(sample) # /(n-1)
}
mean(sample_var)
sd(sample_var)
mean(unbi_var)
sd(unbi_var)

sample_over200 = ifelse(sample_var>=200, 1, 0)
unbi_over200 = ifelse(unbi_var>=200, 1, 0)


# 標本中央値と標本平均
sample_median = numeric(10000)
sample_mean = numeric(10000)

for(i in 1:10000) {
  sample = rnorm(10, 50, 10)
  sample_median[i] = median(sample)
  sample_mean[i] = mean(sample)
}

mean(sample_mean)
mean(sample_median)
sd(sample_mean)
sd(sample_median)

get_sample = function(sample_size, try_count) {
sample_mean = numeric(try_count)
for(i in 1:try_count) {
  sample = rnorm(sample_size, 0, 1)
  sample_mean[i] = mean(sample)
}
hist(sample_mean)
sd(sample_mean)
}


