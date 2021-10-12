clean %>% tabyl(employee_status) %>% adorn_pct_formatting(digits =2,affix_sign=TRUE)
employee_status    n    percent
                   5     29.41%
  Administration   1     5.88%
        Coach      2     11.76%
        acher      9     52.94%
clean %>% tabyl(employee_status, full_time) %>% adorn_totals()
employee_status   No Yes emptystring_
                  0   0            5
  Administration  0   1            0
           Coach  2   0            0
         Teacher  3   6            0
           Total  5   7            5
clean %>% tabyl(employee_status, full_time) %>% adorn_totals(where = "col")
employee_status No Yes emptystring_ Total
                0   0            5     5
Administration  0   1            0     1
         Coach  2   0            0     2
       Teacher  3   6            0     9
clean %>% tabyl(employee_status, full_time) %>% adorn_totals(where = c("row","col"))
employee_status No Yes emptystring_ Total
                  0   0            5     5
  Administration  0   1            0     1
           Coach  2   0            0     2
         Teacher  3   6            0     9
           Total  5   7            5    17
clean %>% tabyl(employee_status, full_time) %>%
adorn_totals("row") %>%
adorn_percentages("row") %>%
adorn_pct_formatting() %>%
adorn_ns()
employee_status       No        Yes    emptystring_ 
                   0.0% (0)   0.0% (0)   100.0% (5) 
  Administration   0.0% (0)  100.0% (1)    0.0% (0)
            Coach 100.0% (2)  0.0% (0)     0.0% (0) 
         Teacher  33.3% (3)   66.7% (6)    0.0% (0)  
          Total   29.4% (5)  41.2% (7)    29.4% (5) 
