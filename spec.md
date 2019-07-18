## Questions to ask
For each question in each category, evaluate if you should increase, decrease, 
or maintain spending for optimum fulfillment

- Did I receive fulfillment, satisfaction, and value in proportion to life 
energy spent?
- Is this expenditure of life energy in alignment with my values and life purpose
- How might this expenditure change if I didn’t have to work for money?  
- What would the world look like if everyone spent this much on this category

## User Stories

### Version 1
- As a user, I would like to ask answer the main three questions posed above for
each category for each month, so that I can track my progress and stay with the 
YMOYL program.
- As a user, I would like to import my spending categories for each month from 
YNAB, so that I don’t have to input spending manually
- As a user, I would like to be able to add my own questions, so that I can 
tailor the application to fit my needs better.

### Version 2
- As a user, I would like to input my Real Hourly Wage, so that I can see how 
much of my life was traded for each category expenditure
- As a user, I would like to input the amounts within each spending category 
manually, so that if I’m not a YNAB customer, I can still use the program.
- As a user, I would like to know which spending category answer trends so I can 
see how well I’m sticking with the YMOYL program.

### Version 3
- As a user, I would like to import/input the categories each month without the 
dollar amounts, since I consider that information private.

## Tables

### `users`
`id`

### `questions`
`id`
`text`: `string`

### `reflections`
`id`
`timescale`: `ENUM` --> `"MONTH"` or `"YEAR"` (will start with "MONTH")
`reflected_on`: `Date`
`begin_date`: `Date` the first day of which the timescale applies to. 

### `categories`
`id`
`ynab_id`
`user_id`
`name`
`parent_category`: can be null if it's the root

### `reflections_categories`
`reflection_id`
`category_id`
consider placing amount in here

### `amounts` 
`id`
`category_id`
`reflection_id`
`amount`

### `answers`
`id`
`amount_id`
`questions_id`
`answer`: ENUM --> `"INCREASE"`, `"DECREASE"`, or `"STAY_THE_SAME"`
`note`: string
