# Fillit

A Hive Helsinki project completed together with my fellow student @jhallama.

The purpose of fillit is to fit a given list of tetriminos into the smallest possible square. It will fill the square like below, where each letter represents one tertimino.

```
AABBCCC.
A.BB.CDD
AEEII.DD
HHEEI.JJ
H.KKILLJ
HFFKMMLJ
FFGK.ML.
.GGG.M..
```

## Compiling and usage

Clone the repo and run make, an executable called `fillit` should compile.

```
git clone https://github.com/bbehm/Fillit.git | cd Fillit
make re
```

To run the program: `./fillit [file]`

For example:

```
./fillit tests/test3
```

