# Codebook: Bluesky Climate Teaching Sample

**Course:** Social Movements in the Digital Space — WS 2026/27  
**Session:** 3b — Halloween Special: R Crash Course  
**Dataset:** `bluesky_climate_sample.csv`

## 1. Dataset overview

This dataset contains **1,000 English-language, climate-related Bluesky posts**.

- **Unit of analysis:** One post per row
- **Number of observations:** 1,000
- **Number of variables:** 9
- **Purpose:** Teaching basic data manipulation, descriptive statistics, and visualization in R

Posts were selected using climate-related keywords.

**Important:** This is a teaching sample, not a representative sample of all Bluesky posts, climate communication, or social movement activity.

## 2. Variable descriptions

| Variable | Type in R | Description |
|---|---|---|
| `post_id` | Numeric (`dbl`) | Sequential identifier for each observation in the teaching dataset |
| `created_at` | Date-time (`dttm`) | Date and time associated with the post |
| `text` | Character (`chr`) | Text content of the post |
| `language` | Character (`chr`) | Language label; the teaching sample uses English (`en`) |
| `has_images` | Logical (`lgl`) | `TRUE` if the post is flagged as containing an image; otherwise `FALSE` |
| `is_reply` | Logical (`lgl`) | `TRUE` if the post is classified as a reply; otherwise `FALSE` |
| `text_length` | Numeric (`dbl`) | Length of the post text, measured in characters |
| `has_hashtag` | Logical (`lgl`) | `TRUE` if the post is flagged as containing a hashtag; otherwise `FALSE` |
| `has_link` | Logical (`lgl`) | `TRUE` if the post is flagged as containing a link; otherwise `FALSE` |

## 3. Understanding the values

**Logical variables**

Logical variables contain `TRUE` or `FALSE`.

For example, `has_images = TRUE` means an image was identified for that post.

**Numeric variables**

Numeric variables contain numbers. For example, `text_length` can be used to calculate a mean or median.

**Character variables**

Character variables contain text, such as the post itself or its language label.

**Date-time variables**

Date-time variables represent a date and time.

## 4. Loading the dataset

Open the course RStudio project first.

```r
library(tidyverse)
library(here)

posts <- read_csv(
  here(
    "03b_r_crash_course",
    "data",
    "bluesky_climate_sample.csv"
  )
)
```

Inspect the dataset:

```r
head(posts)
names(posts)
nrow(posts)
glimpse(posts)
```

## 5. What can we analyse?

Examples include:

- How many posts are replies?
- How many posts contain hashtags, links, or images?
- What is the mean or median post length?
- Does post length differ between replies and non-replies?
- How can we visualize these descriptive results?

## 6. Limitations

These data cannot establish:

- whether the sample represents all Bluesky posts;
- whether authors are members of a social movement;
- why someone posted;
- how many people actually saw a post;
- whether online communication caused offline participation.

**Remember:** Descriptive statistics describe the observations in our teaching sample. They do not automatically establish causal relationships.
