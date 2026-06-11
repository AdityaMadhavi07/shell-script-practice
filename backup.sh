
#!/bin/bash
set -euo pipefail

if [[  ! $# -eq 2 ]]; then
    echo "Enter the source directory and backup destination as arguments "
    exit 1
fi

# .tar.gz = compression and archive
#/home/ubuntu/90DaysOfDevOps/week2/     bkp_dest    source_dir

source_directory="$1"
backup_destination="$2"

echo "creating the backup of the directory in $backup_destination...."
sleep 2

if [[ ! -d "$source_directory" ]]; then
    echo "source directory not present"
    exit 1
fi

if [[ ! -d "$backup_destination" ]]; then
    echo "backup destination does not exist, creating destination path.."
    sleep 1
    mkdir -p "$backup_destination" $-p creates the parent directories also if not present
fi

timestamp=$(date +"%y-%m-%d")  # tells date how to format the output

archive_name="backup-${timestamp}.tar.gz"
archive_path="${backup_destination}/${archive_name}"

# concept of var expansion = {} and cmd substitution = ()

echo "creating backup...."
sleep 2

tar -czvf "$archive_path" "$source_directory"

if [[ ! -f "$archive_path" ]]; then
    echo "backup failed"
    exit 1
fi

size=$(du -h "$archive_path" | cut -f1)

echo "backup created successfully! Size: "$size""

echo "cleaning old backups...."
sleep 1

find "$backup_destination" -name "backup-*.tar.gz" -mtime +14 -delete
echo "old backups deleted"
