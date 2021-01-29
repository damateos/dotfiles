options(digits = 4)

prompt::set_prompt(function(...){
paste0(
  "[", prompt::git_branch(), prompt::git_dirty(), prompt::git_arrows(), "] ",
  prompt::prompt_memuse()
)
})
