os.execute("doskey winfetch=pwsh -Command pwshfetch-test-1")
load(io.popen('oh-my-posh init cmd --config "~/AppData/Local/Programs/oh-my-posh/themes/powerlevel10k_rainbow.omp.json"'):read("*a"))()
