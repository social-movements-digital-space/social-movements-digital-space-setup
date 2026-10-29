# ============================================================
# Session 3b: Halloween Special -- R Crash Course
# STUDENT STARTER SCRIPT
# Social Movements in the Digital Space, WS 2026/27
# ============================================================

# Goal:
# By the end of this script you should be able to:
# 1. run R code;
# 2. work with simple objects and functions;
# 3. load and inspect a dataset;
# 4. filter and count observations;
# 5. calculate simple descriptive statistics;
# 6. create one basic plot;
# 7. interpret results carefully.

# ------------------------------------------------------------
# Locate teaching data set
# ------------------------------------------------------------

# You need to install those first, only one time. 
# Remove the # of the two lines below and run them. 
# install.packages("here")
# install.packages("tidyverse")


library(tidyverse)
library(here)

here()
# This should end in:
# social_movements_digital_space

posts <- read_csv(
  here(
    "03b_r_crash_course",
    "data",
    "bluesky_climate_sample.csv"
  )
)


# ------------------------------------------------------------
# 0. Before we start
# ------------------------------------------------------------

# We use the tidyverse for reading, manipulating, and plotting data.
library(tidyverse)

# IMPORTANT:
# Open the course repository / project first.
#
# The teaching dataset should live in:
#
# 03b_r_crash_course/data/bluesky_climate_sample.csv


# ------------------------------------------------------------
# 1. R as a calculator
# ------------------------------------------------------------

1 + 1
10 / 2
7 * 6

# TASK:
# Try your own calculation below.




# ------------------------------------------------------------
# 2. Objects
# ------------------------------------------------------------

# <- assigns a value to an object.

pumpkins <- 13
ghosts <- 4

pumpkins
ghosts

# What happens here?

pumpkins + ghosts


# TASK:
# Create an object called participants and give it any number.




# ------------------------------------------------------------
# 3. Vectors and functions
# ------------------------------------------------------------

# A vector stores several values.

engagement <- c(3, 8, 2, 15, 5)

engagement


# Functions do something with an object.

mean(engagement)

median(engagement)

max(engagement)


# TASK:
# Find the minimum value in engagement.




# ------------------------------------------------------------
# 4. Load our first digital-trace dataset
# ------------------------------------------------------------

# loaded dataset above

# Look at the data.

View(posts)

head(posts)


# What variables do we have?

names(posts)


# How many rows / observations?

nrow(posts)


# A compact overview.

glimpse(posts)




# ------------------------------------------------------------
# 5. What does the dataset actually represent?
# ------------------------------------------------------------

# BEFORE analysing the data, ask:
#
# - What does one row represent?
# - What is the unit of analysis?
# - Which variables contain text?
# - Which variables contain numbers?
# - Which variables are TRUE / FALSE?
# - What information is NOT visible in these data?
#
#
# In this dataset:
#
# one row = one climate-related Bluesky post
#
#
# IMPORTANT:
#
# The posts were selected using climate-related keywords.
# This is a teaching sample, not a representative sample
# of all climate communication on Bluesky.




# ------------------------------------------------------------
# 6. Count categories
# ------------------------------------------------------------

# Example:
# How many posts are replies?

posts |>
  count(is_reply)


# TASK:
# Count posts with and without images.




# TASK:
# Count posts with and without links.




# TASK:
# Count posts with and without hashtags.




# ------------------------------------------------------------
# 7. Filter observations
# ------------------------------------------------------------

# Example:
# Keep only posts that are replies.

reply_posts <- posts |>
  filter(is_reply == TRUE)

head(reply_posts)


# TASK:
# Create an object called image_posts containing
# only posts that have an image.




# TASK:
# Create an object called link_posts containing
# only posts that contain a link.




# ------------------------------------------------------------
# 8. A first descriptive statistic
# ------------------------------------------------------------

# How long are the posts?

mean(posts$text_length)

median(posts$text_length)


# TASK:
# Find the minimum text length.




# TASK:
# Find the maximum text length.




# QUESTION:
#
# Is the mean text length very different from the median?
#
# What does this statistic describe?
#
# What does it NOT tell us?




# ------------------------------------------------------------
# 9. Summarise by group
# ------------------------------------------------------------

# Compare reply posts and non-reply posts.

posts |>
  group_by(is_reply) |>
  summarise(
    n_posts = n(),
    mean_length = mean(text_length),
    median_length = median(text_length)
  )


# QUESTION:
#
# Are reply posts longer or shorter on average
# in this teaching sample?




# ------------------------------------------------------------
# 10. Your first plot
# ------------------------------------------------------------

# Bar plot:
# How many posts contain hashtags?

posts |>
  count(has_hashtag) |>
  ggplot(
    aes(
      x = has_hashtag,
      y = n
    )
  ) +
  geom_col() +
  labs(
    title = "Posts with and without hashtags",
    x = "Contains hashtag",
    y = "Number of posts"
  )


# TASK:
# Create a histogram of text_length.
#
# Start with:

# ggplot(
#   posts,
#   aes(x = text_length)
# ) +
#   geom_histogram()




# ------------------------------------------------------------
# 11. Halloween challenge: Enter the Data Crypt
# ------------------------------------------------------------

# Work first alone, then compare with a partner / breakout group.
#
#
# 1. How many observations are in the dataset?
#
# 2. How many posts are replies?
#
# 3. How many posts contain an image?
#
# 4. How many posts contain a link?
#
# 5. What is the median text length?
#
# 6. Are reply posts longer or shorter on average
#    than non-reply posts?
#
# 7. Produce ONE plot that communicates something
#    about the teaching sample.
#
#
# Then write ONE careful substantive sentence:
#
# "In this teaching sample, we observe ..."
#
#
# Do NOT write:
#
# "This proves that ..."




# ------------------------------------------------------------
# 12. Survival checklist
# ------------------------------------------------------------

# I can:
#
# [ ] run a line of R code
#
# [ ] create an object
#
# [ ] use a function
#
# [ ] load a CSV
#
# [ ] inspect rows and variables
#
# [ ] filter observations
#
# [ ] count categories
#
# [ ] calculate a mean / median
#
# [ ] summarise groups
#
# [ ] create a basic plot
#
# [ ] distinguish a descriptive result from a causal claim




# ------------------------------------------------------------
# Session information
# ------------------------------------------------------------

sessionInfo()

