       IDENTIFICATION division.
       program-id. fizzbuzz.
       author. daniel.
       data division.
       working-storage section.
       01 iteration pic 9(3) value 1.
       01 fizz pic 9(3) value 0.
       01 buzz pic 9(3) value 0.
       01 r pic s9(3) value -1.
       01 fb pic 9 value 0.
       01 out pic x(3).
       procedure division.
       main.
           perform fizzbuzz 100 times.
           stop run.
        fizzbuzz.
           perform fizz-print thru itr-print.
           add 1 to iteration.
           exit.

       fizz-print.
           divide iteration by 3 giving fizz remainder r.
           if r = 0 then
               display 'Fizz' with no advancing
               move 1 to fb
           end-if
           exit.

       buzz-print.
           divide iteration by 5 giving buzz remainder r.
           if r = 0 then
               display 'Buzz' with no advancing
               move 1 to fb
           end-if
           exit.

        itr-print.
           if fb equal 0 then
               move iteration to out
               unstring out delimited by space into out
               display out
           else
               display ''
               move 0 to fb
           end-if.
           exit.
