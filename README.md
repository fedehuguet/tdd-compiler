# TDD Compiler

A simple fun compiler written using antlr and Swift.

## Running instructions

First install antlr by running the following;

```bash
cd /usr/local/lib
sudo curl -O https://www.antlr.org/download/antlr-4.7.2-complete.jar
```

To easily run the project add the following aliases to your `~/.bash_profile`:

```bash
export CLASSPATH=".:/usr/local/lib/antlr-4.7.2-complete.jar:$CLASSPATH"
alias antlr4='java -jar /usr/local/lib/antlr-4.7.2-complete.jar'
alias grun='java org.antlr.v4.gui.TestRig'
alias run-tdd='antlr4 tdd.g4 && javac tdd*.java && grun tdd program -gui'
```

Remember to restart your terminal so the changes apply.

After installing everything and creating the aliases you can run:

`run-tdd`

Followed by the code you want to test. And press Ctrl+D to see the constructed tree.

**An example for input text can be seen on input.txt.**

Symbol table is implemented as a hashing table with separate chaining to handle collisions