# PATH Configuration
export PATH=$HOME/bin:/usr/local/bin:$HOME/.local/bin:$PATH
export PATH=$HOME/.cargo/bin:$PATH
export PATH=$HOME/.opencode/bin:$PATH

# Perl Environment Variables
PATH="$HOME/perl5/bin${PATH:+:${PATH}}"; export PATH;
PERL5LIB="$HOME/perl5/lib/perl5${PERL5LIB:+:${PERL5LIB}}"; export PERL5LIB;
PERL_LOCAL_LIB_ROOT="$HOME/perl5${PERL_LOCAL_LIB_ROOT:+:${PERL_LOCAL_LIB_ROOT}}"; export PERL_LOCAL_LIB_ROOT;
PERL_MB_OPT="--install_base \"$HOME/perl5\""; export PERL_MB_OPT;
PERL_MM_OPT="INSTALL_BASE=$HOME/perl5"; export PERL_MM_OPT;

# Locale Configuration
export LC_CTYPE=en_US.UTF-8
export LC_ALL=en_US.UTF-8

# Development Environment
export RUST_BACKTRACE=1
export EDITOR="micro"

# Application Settings
export MICRO_TRUECOLOR=1
export MANPAGER="bat -f --wrap=never --style=plain --language=md --italic-text=always --tabs=2"
