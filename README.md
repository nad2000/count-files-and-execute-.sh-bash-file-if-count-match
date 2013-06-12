# Update set validation

The script vaifies if all update sets have all necessary files.

#### Count files

The script scans all files located here: `/opt/lampp/htdocs/execute-update/send-this`
That folder contains "updates" each update contains of three files, eg,

    2013-01-01-20-00-00.id
    2013-01-01-20-00-00.rar
    2013-01-01-20-00-00.mvg

And another:

    2013-01-03-21-00-00.id
    2013-01-03-21-00-00.rar
    2013-01-03-21-00-00.mvg

Sometimes a bug occurs that misses to create either one of the three files above.
So the script needs to check that there is actually three files for each update – like above.

#### If an update is found witch say only has

    2013-01-03-21-00-00.id
    2013-01-03-21-00-00.mvg

Then oviously the "2013-01-03-21-00-00.rar" file is missing – from above example.

Then the script should abort.

#### However if all is fine and there is 3 files (`*rar *id *mvg`)
For each update - script should proceed and run my bash script: /DMDS/sync-it.sh

