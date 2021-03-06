\name{iteratelist}
\alias{iteratelist}
\title{Create an iteration list from a R object}
\usage{
  iteratelist(x, name = "name", value = "value")
}
\arguments{
  \item{x}{\code{list} or other object that will be coerced
  to \code{list}}

  \item{name}{\code{character} name for resulting name
  member.}

  \item{value}{\code{character} name for resulting value
  member.}
}
\value{
  unnamed \code{list} with name value lists
}
\description{
  In some case it is useful to iterate over a named
  \code{list} or \code{vector} \code{iteratelist} will
  create a new unnamed \code{list} with name value members:
  each item will be a list where 'name' is the
  corresponding name and 'value' is the original value in
  list \code{x}.
}
\examples{
# create an iteration list from a named vector
x <- c(a=1, b=2)
iteratelist(x)

# iterate over the members of a list
x <- list(name="John", age="30", gender="male")
iteratelist(x, name="variable") 

# iterate over an unnamed vector
values <- c(1,2,3,4)

template <- 
'{{#values}}
* Value: {{.}}
{{/values}}'

whisker.render(template)

#or 

values <- iteratelist(values, value="count")

template <- 
'{{#values}}
* Value: {{count}}
{{/values}}'

whisker.render(template)
}

