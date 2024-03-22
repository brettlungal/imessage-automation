on run {targetBuddyPhone, targetMessage}
tell application "Messages"
set targetService to 1st service whose service type = iMessage
set targetBuddy to buddy targetBuddyPhone of targetService
send targetMessage to targetBuddy
end tell
end run


tell application "Messages"

        set targetBuddy to "12048065398"
        set targetService to id of 1st service whose service type = iMessage
        

        repeat

            set textMessage to "Hello there!"

            set theBuddy to buddy targetBuddy of service id targetService
            send textMessage to theBuddy

            delay (random number from 1 to 2)

        end repeat

    end tell