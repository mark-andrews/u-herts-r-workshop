library(readr)
library(dplyr)

male <- read_csv('data/ANSUR_II_MALE_Public.csv') %>% rename(SubjectId = subjectid)
female <- read_csv('data/ANSUR_II_FEMALE_Public.csv')

bind_rows(male, female) %>%
  mutate(height = stature/10,   # `stature` is in mm
         weight = weightkg/10,
         gender = recode(Gender, Male = 'male', Female = 'female'),
         race = case_when(
           DODRace == 1 ~ 'white',
           DODRace == 2 ~ 'black',
           DODRace == 3 ~ 'hispanic',
           DODRace == 4 ~ 'asian',
           DODRace == 5 ~ 'native_american',
           DODRace == 6 ~ 'pacific_islander',
           DODRace == 8 ~ 'other',
           TRUE ~ 'NA'),
         handedness = case_when(
           WritingPreference == 'Right hand' ~ 'right',
           WritingPreference == 'Left hand' ~ 'left',
           WritingPreference == 'Either hand (No preference)' ~ 'either'
         )
  ) %>%
  select(subjectid = SubjectId,
         gender,
         height,
         weight,
         handedness,
         age = Age,
         race) %>% 
  write_csv('data/weight.csv')
