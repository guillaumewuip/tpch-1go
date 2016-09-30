
cd /load_files
for f in /load_files/*; do
    case "$f" in
        *.ctl)
            echo $f
            sqlldr system/oracle control="$f" direct=y errors=0 log="$f.log"
            cat "$f.log"
    esac
    echo
done
