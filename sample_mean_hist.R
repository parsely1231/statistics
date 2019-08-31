sample_mean = numeric(10000)

for(i in 1:10000) {
  sample = rnorm(10, 50, 10)
  sample_mean[i] = mean(sample)
}

hist(sample_mean)