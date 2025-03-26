SPACESHIP_PROMPT_ORDER=(
  time
  user
  dir
  git
  exec_time
  line_sep
  jobs
  exit_code
  char
)

SPACESHIP_CHAR_SYMBOL="❯ "
SPACESHIP_EXEC_TIME_COLOR="243"
SPACESHIP_EXEC_TIME_PREFIX="%F{243}∆t=%f"
SPACESHIP_GIT_PREFIX=""
SPACESHIP_GIT_STATUS_PREFIX=" ("
SPACESHIP_GIT_STATUS_SUFFIX=")"

# Spaceship async breaks on Warp
if [[ $TERM_PROGRAM == "WarpTerminal" ]]; then
  SPACESHIP_PROMPT_ASYNC=false
fi
