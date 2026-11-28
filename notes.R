
separate by trial number

helpful labs: 
  3. linear regression, models, tables, graphs
  1. general analysis
  2. tables
  
not as helpful:
  4. binary logistic regression (probability of 2 choices)
  5. count regression models (suitable for integer counts)
  6. ordinal logistic regression models (ordered categories; low/high/etc, not assuming equal spacing)
  
keep the same complete case sample for every model
pull n
**create descriptive statistics table gt
**create distribution tables ggplot
**create relationships between factors plots (1 per variable)
fit models
model summary
compare models
conduct nested model comparisons
prepare nested tests
extract overall performance
combine 
**model comparison table
**model comparison visual
select model
evaluate diagnostics
**report model performance
interpret results





















```{r, }
#| output: FALSE
#| warning: FALSE
#| message: FALSE

# Stats per TYPE

# Stats per TRIAL
## SPLM
### Num Error


### Num Sec
stat.trial.sec.splm.df <- splm.df |>
  group_by(TrialNumTot) |>
  summarize(
    N = n(), 
    Mean = mean(NumSec), 
    Min = min(NumSec),
    Q1 = quantile(NumSec, 0.25),
    Median = median(NumSec),
    Q3 = quantile(NumSec, 0.75),
    Max = max(NumSec),
    Range = Max - Min,
    SD = sd(NumSec),
    SE = SD / sqrt(N)) |>
  rename(`Trial #` = TrialNumTot) |>
  mutate(across(c(Mean, SD, SE), ~ round(.x, 2))) |>
  mutate(across(c(Q1, Q3), ~ round(.x, 1)))

## RL
### Num error
### Num sec

# Stats per INDIVIDUAL

stat.ind.error.splm.df <- splm.df |>
  group_by(ID) |>
  summarize(
    N = n(), 
    Mean = mean(NumError), 
    Min = min(NumError),
    Q1 = quantile(NumError, 0.25),
    Median = median(NumError),
    Q3 = quantile(NumError, 0.75),
    Max = max(NumError),
    Range = Max - Min,
    SD = sd(NumError),
    SE = SD / sqrt(N)) |>
  mutate(across(c(Mean, SD, SE), ~ round(.x, 2))) |>
  mutate(across(c(Q1, Q3), ~ round(.x, 1)))

stat.ind.sec.splm.df <- splm.df |>
  group_by(ID) |>
  summarize(
    N = n(), 
    Mean = mean(NumSec), 
    Min = min(NumSec),
    Q1 = quantile(NumSec, 0.25),
    Median = median(NumSec),
    Q3 = quantile(NumSec, 0.75),
    Max = max(NumSec),
    Range = Max - Min,
    SD = sd(NumSec),
    SE = SD / sqrt(N)) |>
  mutate(across(c(Mean, SD, SE), ~ round(.x, 2))) |>
  mutate(across(c(Q1, Q3), ~ round(.x, 1)))

## RL
### Num error
### Num sec
```









```{r, total summary statistics}
#| output: FALSE
#| warning: FALSE
#| message: FALSE

splm
rl
```

```{r, average scatterplot}
#| output: FALSE
#| warning: FALSE
#| message: FALSE

splm
rl
```

```{r, average per day}
#| output: FALSE
#| warning: FALSE
#| message: FALSE

splm
rl
```

```{r, average per trial #}
  #| output: FALSE
  #| warning: FALSE
  #| message: FALSE
  
  splm
  rl
  ```
  
  ```{r, relationship btwn # error and #sec}
    #| output: FALSE
    #| warning: FALSE
    #| message: FALSE
    
    splm
    rl
    ```
    
    
    MAYBE JUNK DATA?
      ```{r, separate data sets}
    #| output: FALSE
    #| warning: FALSE
    #| message: FALSE
    
    # Separate trial days 
    d1.splm.df <- splm.df |>
      filter(TrialDay == 1)
    d2.splm.df <- splm.df |>
      filter(TrialDay == 2)
    d3.splm.df <- splm.df |>
      filter(TrialDay == 3)
    
    # Separate by trial number
    t1.splm.df <- splm.df |>
      filter(TrialNumTot == 1)
    t2.splm.df <- splm.df |>
      filter(TrialNumTot == 2)
    t3.splm.df <- splm.df |>
      filter(TrialNumTot == 3)
    t4.splm.df <- splm.df |>
      filter(TrialNumTot == 4)
    t5.splm.df <- splm.df |>
      filter(TrialNumTot == 5)
    t6.splm.df <- splm.df |>
      filter(TrialNumTot == 6)
    t7.splm.df <- splm.df |>
      filter(TrialNumTot == 7)
    t8.splm.df <- splm.df |>
      filter(TrialNumTot == 8)
    t9.splm.df <- splm.df |>
      filter(TrialNumTot == 9)
    t10.splm.df <- splm.df |>
      filter(TrialNumTot == 10)
    t11.splm.df <- splm.df |>
      filter(TrialNumTot == 11)
    t12.splm.df <- splm.df |>
      filter(TrialNumTot == 12)
    t13.splm.df <- splm.df |>
      filter(TrialNumTot == 13)
    t14.splm.df <- splm.df |>
      filter(TrialNumTot == 14)
    t15.splm.df <- splm.df |>
      filter(TrialNumTot == 15)
    
    # Separate trial days
    d1.rl.df <- rl.df |>
      filter(TrialDay == 1)
    d2.rl.df <- rl.df |>
      filter(TrialDay == 2)
    d3.rl.df <- rl.df |>
      filter(TrialDay == 3)
    
    # Separate by trial num
    t1.rl.df <- rl.df |>
      filter(TrialNumTot == 1)
    t2.rl.df <- rl.df |>
      filter(TrialNumTot == 2)
    t3.rl.df <- rl.df |>
      filter(TrialNumTot == 3)
    t4.rl.df <- rl.df |>
      filter(TrialNumTot == 4)
    t5.rl.df <- rl.df |>
      filter(TrialNumTot == 5)
    t6.rl.df <- rl.df |>
      filter(TrialNumTot == 6)
    t7.rl.df <- rl.df |>
      filter(TrialNumTot == 7)
    t8.rl.df <- rl.df |>
      filter(TrialNumTot == 8)
    t9.rl.df <- rl.df |>
      filter(TrialNumTot == 9)
    t10.rl.df <- rl.df |>
      filter(TrialNumTot == 10)
    t11.rl.df <- rl.df |>
      filter(TrialNumTot == 11)
    t12.rl.df <- rl.df |>
      filter(TrialNumTot == 12)
    t13.rl.df <- rl.df |>
      filter(TrialNumTot == 13)
    t14.rl.df <- rl.df |>
      filter(TrialNumTot == 14)
    t15.rl.df <- rl.df |>
      filter(TrialNumTot == 15)
    ```