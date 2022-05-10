# Feedback on your BMI coding challenge script

Overall, coding syntax and approach shows that you have understood what we have been discussing so far regarding the basics of R. Well done!

Following are more specific bullet points of what you have done well and some points on what you can consider doing next time as you progress with your work in R.

## 1. Great use of operators for calculating BMI across the dataset

Well done with the script to calculate BMI across 15 records. I made it seem in my note that the approach should be different compared to when calculating a single BMI value but the approach is the same and this shows that the operators in R are vectorised operators which means that they work on each elements of a vector individually. Great work!

## 2. Consider using intermediate objects for weight and height

This is more of a long term learning. In our example that is very simple and the operations we want to do is simple, we can calculate BMI using the vectors of values for weight and height directly from the `women` data as you have demonstrated.

But, once we get to bigger projects, it may be helpful to save these values as objects for use in other lines of code later. This is what I would call intermediate objects. So for height, you may have wanted to create an object named `height` as follows:


```R
height <- women$height * 0.0254
```

and then use that value (along with another object called `weight` for the weight value) to calculate BMI as follows:

```R
BMI <- weight / height ^ 2
```

## 3. Good exploration of relationships in statistics

Your line 137 is brilliant.

```R
BMI_all > median(BMI_all)
```

This shows me your engaging and thinking through the work. This also tells me the kinds of health questions and problems that you are interested in! This speaks volumes about you and your thinking process. Well done!

## 4. Great use of the `match` function

Well done again on this. You looked for a function that will give you the answer you are looking for. Well done. Another bonus points for this.

## 5. Try to use code to answer the questions completely

In line 141, you have code that is this:

```R
BMI_all > 23
```

which gives you:

```
[1]  TRUE  TRUE  TRUE  TRUE  TRUE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE FALSE
```

Now, this is part of the step to answer the question on how many records have BMI greater then 23. From here, you can just manually count how many TRUE values come out which is 5.

But a compelete code solution to this question would look something like this:

```R
length(BMI_all[BMI_all > 23])
```

which gives you:

```
[1] 5
```

In this code, I used all the basic operators, index methods and functions we learned last week. Nothing facny here but all basic code. But it answers the question directly.

## 6. Hash out lines of code that you experiment with and that errors

In lines 116, 117, 119, 124, you wrote the code I think when you were trying to learn the function but those lines were also wrong syntax so they were erroring.

I think it is good practice at the start of your R journey to write the code even when it is wrong but hash it out so that when someone reviews, they won't encounter the same issue. But the code is still there to read so when you look back at your script, you will remember even the mistakes you made.


