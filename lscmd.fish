function lscmd
    history | \
        awk '{print $1}' | \
        sort | \
        uniq -c | \
        sort -nr | \
        grep -v "ls" | \
        grep -v "cd" | \
        head -10
end
