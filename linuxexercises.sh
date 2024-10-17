#!/bin/bash
#how many people are there in the data set:
awk 'BEGIN{FS="\t";}

{
if (NF == 7 && $1 != " " && $1 != "name")

{print $0;}

}' example_people_data.tsv | wc -l

#How many people are aged around 30:

awk 'BEGIN{FS="\t";}

{
if (NF == 7 && $1 != " ")
{
if ($6 <= 1994)
{print $0;}
}
}' example_people_data.tsv | wc -l

#How many people are called Jan:

awk 'BEGIN{FS="\t";}

{
if (NF == 7 && $1 != " ")
{
if ($1 == "Jan" && length($1) == 3)
{print $0;}
}
}' example_people_data.tsv | wc -l


#updating to merge with branch in git.
