# kaprekar_R
Calculating and visualizing Kaprekar constant (6174) using R
Reference to blog: (https://tomaztsql.wordpress.com/2019/02/20/number-6174-or-kaprekar-constant-in-r/).

Kaprekar number is one of those gems, that makes Mathematics fun. Indian recreational mathematician D.R.Kaprekar, found number 6174 – also known as Kaprekar constant – that will return the subtraction result when following this rules:

1. Take any four-digit number, with minimum of two different numbers (1122 or 5151 or 1001 or 4375 and so on.)
1. Sort the taken number and sort it descending order and ascending order.
1. Subtract the descending number from ascending number.
1. Repeat step 2. and 3. until you get the result 6174

In practice, e.g.: number 5462, the steps would be:

6542 - 2456 = 4086   
8640 -  468 = 8172   
8721 - 1278 = 7443   
7443 - 3447 = 3996   
9963 - 3699 = 6264   
6642 - 2466 = 4176   
7641 - 1467 = **6174**    

## Structure

1. Kaprekar Function
1. Walking through all the four-digit numbers and calculating Kaprekar steps to converge to solution
1. Most frequent solutions

## Clone the repository

Basic git steps:
```
git clone https://github.com/tomaztk/kaprekar_R

```

If you already cloned the code, update the code with:

```
git pull remote https://github.com/tomaztk/kaprekar_R

```

Once you created your part, add, commit and push with following:

```
git add .
git commit -m 'your comment'
git push
```

## License

[![ForTheBadge makes-people-smile](http://ForTheBadge.com/images/badges/makes-people-smile.svg)](http://ForTheBadge.com)
