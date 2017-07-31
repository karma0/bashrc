if [ -e "$(which fasd 2>/dev/null)" ]; then
  # Eval our friend into the shell.
  eval "$(fasd --init bash-hook)";

  case $PROMPT_COMMAND in
    *_fasd_prompt_func*)
      ;;
    *\;*)
      PROMPT_COMMAND="_fasd_prompt_func;$PROMPT_COMMAND"
      ;;
    "")
      PROMPT_COMMAND="_fasd_prompt_func"
      ;;
  esac
fi
