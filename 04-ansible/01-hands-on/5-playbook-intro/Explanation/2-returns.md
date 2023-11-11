* Return values of ansible modules

- Changed      : A Boolean indicating if the task had to make changes.

- Failed       : A Boolean that indicates if the task was failed or not.

- Msg          : A string with a generic message relayed to the user.

- Skipped      : A Module that indicated if the task is skipped or not.

- backup_file  : For those modules that implement backup = no|yes.

- rc           : This field contains ‘return code’ of cmd line utilities (shell & command) 

- Stderr       : Capture error output from modules like (shell & command )

- Stderr_lines : Capture the error & display it in one item per line, for modules (shell & command )

- Stdout       : Capture the normal output of utilities like (shell & command)

- Stdout_lines : Capture the normal output & display it in one item per line, for modules (shell & command )
