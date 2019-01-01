#!/usr/bin/env bats

@test "test with tomorrow" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/1.json);
  [ "$?" -eq 0 ]
}

@test "test with midnight" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/2.json);
  [ "$?" -eq 0 ]
}

@test "test with teatime" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/3.json);
  [ "$?" -eq 0 ]
}

@test "test with noon tomorrow" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/4.json);
  [ "$?" -eq 0 ]
}

#@test "test with next saturday" {
#  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/5.json);
#  [ "$?" -eq 0 ]
#}

@test "test with mon" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/6.json);
  [ "$?" -eq 0 ]
}

#@test "test with jan" {
#  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/7.json);
#  [ "$?" -eq 0 ]
#}

@test "test with 12:30 PM" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/8.json);
  [ "$?" -eq 0 ]
}

@test "test with 12:30 AM" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/9.json);
  [ "$?" -eq 0 ]
}

@test "test with 12:30 AM Thu" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/10.json);
  [ "$?" -eq 0 ]
}

@test "test with now + 1 minute" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/11.json);
  [ "$?" -eq 0 ]
}

@test "test with now + 3 minutes" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/12.json);
  [ "$?" -eq 0 ]
}

#@test "test with invalid format" {
#  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/13.json);
#  [ "$?" -eq 1 ]
#}

@test "Validate number of at jobs in queue 1" {
  result=$(atq | wc -l);
  [ "$result" -eq 10 ]
}

@test "test with count & minutes" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/14.json);
  [ "$?" -eq 0 ]
}

@test "test with count & hours" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/15.json);
  [ "$?" -eq 0 ]
}

@test "test with count & days" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/16.json);
  [ "$?" -eq 0 ]
}

@test "test with count & weeks" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/17.json);
  [ "$?" -eq 0 ]
}

@test "Validate number of at jobs in queue 2" {
  result=$(atq | wc -l);
  [ "$result" -eq 14 ]
}

@test "test with new command" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/18.json);
  [ "$?" -eq 0 ]
}

@test "Validate number of at jobs in queue 3" {
  result=$(atq | wc -l);
  [ "$result" -eq 15 ]
}

@test "test removal of at job with new command" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/19.json);
  [ "$?" -eq 0 ]
}

@test "Validate number of at jobs in queue 4" {
  result=$(atq | wc -l);
  [ "$result" -eq 14 ]
}

@test "test HH:MM format" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/20.json);
  [ "$?" -eq 0 ]
}

@test "Validate number of at jobs in queue 5" {
  result=$(atq | wc -l);
  [ "$result" -eq 15 ]
}

@test "test 2:30 PM Sep 17 format" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/21.json);
  [ "$?" -eq 0 ]
}

@test "Validate number of at jobs in queue 6" {
  result=$(atq | wc -l);
  [ "$result" -eq 16 ]
}

@test "test 2:30 PM 17.09.2099 format" {
  result=$(python /Users/rhyscampbell/Documents/git/ansible/lib/ansible/modules/system/at.py /Users/rhyscampbell/Documents/git/at_module_tests/json/22.json);
  [ "$?" -eq 0 ]
}

@test "Validate number of at jobs in queue 7" {
  result=$(atq | wc -l);
  [ "$result" -eq 17 ]
}

# Remove all jobs from at queue
# for i in $(atq | cut -f 1); do atrm $i; done
