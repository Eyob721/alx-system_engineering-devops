# 0x06. Regular expression

In this project, we have to build a regular expression using `Oniguruma`, a regular
expression library which is used by Ruby (by default).

Because the focus of this exercise is to play with regular expressions (regex),
a template Ruby code is used.

```ruby
#!/usr/bin/env ruby
puts ARGV[0].scan(/127.0.0.[0-9]/).join
```

So all we have to do is just replace the regexp part, meaning the code in
between the `//`, with our own regex pattern.

## Mandatory

[0-simply_match_school.rb](./0-simply_match_school.rb)

- A regular expression that matches `School`.

[1-repetition_token_0.rb](./1-repetition_token_0.rb)

- A regular expression that matches the following case:
  ![task 1](./imgs/task1.png)

[2-repetition_token_1](./2-repetition_token_1.rb)

- A regular expression that matches the following case:
  ![task 2](./imgs/task2.png)

[3-repetition_token_1](./3-repetition_token_2.rb)

- A regular expression that matches the following case:
  ![task 3](./imgs/task3.png)

[4-repetition_token_1](./4-repetition_token_3.rb)

- A regular expression that matches the following case:
  ![task 4](./imgs/task4.png)
- Use of square brackets is not allowed.

[5-beginning_and_end.rb](./5-beginning_and_end.rb)

- A regular expression that matches a string that starts with `h` ends with `n`
  and can have any single character in between.

[6-phone_number.rb](./6-phone_number.rb)

- A regular that matches a 10 digit phone number.

[7-OMG_WHY_ARE_YOU_SHOUTING.rb](./7-OMG_WHY_ARE_YOU_SHOUTING.rb)

- A regular expression that matches uppercase letters only.

## Advanced

[100-textme.rb](./100-textme.rb)

- A regular expression that parses a log file of a TextMe app text message
  transactions and outputs: `[SENDER],[RECEIVER],[FLAGS]`
  - The sender phone number or name (including country code if present)
  - The receiver phone number or name (including country code if present)
  - The flags that were used
- e.g

```sh
$ ./100-textme.rb 'Feb 1 11:00:00 ip-10-0-0-11 mdr: 2016-02-01 11:00:00 Receive SMS [SMSC:SYBASE1] [SVC:] [ACT:] [BINF:] [FID:] [from:Google] [to:+16474951758] [flags:-1:0:-1:0:-1] [msg:127:This planet has - or rather had - a problem, which was this: most of the people on it were unhappy for pretty much of the time.] [udh:0:]'
Google,+16474951758,-1:0:-1:0:-1
```
