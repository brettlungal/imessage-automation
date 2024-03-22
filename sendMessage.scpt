on run{targetBuddyPhone,targetMessage,messageCount}
    tell application "Messages"
        
        set targetService to 1st service whose service type = iMessage
        set loopcount to 0
        set msgCountNum to messageCount as number
        repeat

            
            set targetBuddy to buddy targetBuddyPhone of targetService

            send targetMessage to targetBuddy
            set loopcount to loopcount + 1
            log loopcount
            -- delay (random number from 10 to 20)
            if msgCountNum does not equal 0 then
                if loopcount is equal to msgCountNum then
                    exit repeat
                end if
            end if
        end repeat

    end tell
        
end run
    
