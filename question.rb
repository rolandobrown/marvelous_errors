@last_night_as_i_was_sleeping = 
"Last night as I was sleeping,
I dreamt—marvelous error!—
that a spring was breaking
out in my heart.
I said: Along which secret aqueduct,
Oh water, are you coming to me,
water of a new life
that I have never drunk?

Last night as I was sleeping,
I dreamt—marvelous error!—
that I had a beehive
here inside my heart.
And the golden bees
were making white combs
and sweet honey
from my old failures.

Last night as I was sleeping,
I dreamt—marvelous error!—
that a fiery sun was giving
light inside my heart.
It was fiery because I felt
warmth as from a hearth,
and sun because it gave light
and brought tears to my eyes.

Last night as I slept,
I dreamt—marvelous error!—
that it was God I had
here inside my heart."

def count_strings(poem, string)
  poem.scan(/(?=#{string})/).count
end

def which_wins(first_string, second_string)
  @first_string_count = count_strings(@last_night_as_i_was_sleeping, "#{first_string}")
  @second_string_count = count_strings(@last_night_as_i_was_sleeping, "#{second_string}")
  @first_string_count > @second_string_count
end

def check(question)
  which_wins("heart", "marvelous errors")
end

def question(question)
  check(question)  
  if check = true
    "TRUE"
  else
    "lost to marvelous errors!"
  end
end

question("Are hearts greater than marvelous errors?")
