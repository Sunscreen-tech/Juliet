# Prereqs
## Python3
```sh
sudo apt install python3
```

## Maven, JDK8, javacc:

```sh
sudo apt install openjdk-8-jdk maven javacc
```

TODO: command for `yum`.

## TFHE
In some path, run

```sh
https://github.com/tfhe/tfhe.git
cd tfhe
cmake ../src -DENABLE_FFTW=off -DENABLE_SPQLIOS_FMA=on && make -j16
```

## Juliet
```sh
make client_scripts_cpu
make encalu_cpu
```

# Compiling programs
## Build HEJava
* In some other directory, run 
```sh
git clone https://github.com/TrustworthyComputing/HEJava-compiler.git
cd HEJava-compiler
mvn initialize
mvn package
```

## Compile your program
```sh
java -jar --opt <path to .java>
```

This will produce a `.asm` file in the same directory as the `.java`

# Keygen
```sh
export LD_LIBRARY_PATH=<path_to_tfhe>/build/libtfhe
cd client
keygen
```

# Encrypt
Edit `client/preAux.txt` and put your plaintexts, one per line.
Edit `ppscript.sh` and change `wordsize` for the size you want to use for integers. Should be a power of 2 byte multiple. Anything greater than 32 seems to result in garbage answers after computation.

```sh
./ppscript
```

# Run
## Compile encala

Edit `cloud_enc/juliet_interpreter.py`. Edit the call to the `juliet_ee` function (second to last line in the file). The first argument is the path to the `.asm` file you generated during compilation. The second argument is the bit width of words and must match what you used during encryption.

Open a new terminal (remember to set LD_LIBRARY_PATH as in the TFHE step!) and run

```sh
cd cloud_enc
./encalu
```

In your existing terminal, run

```sh
cd cloud_enc
python3 juliet_interpreter.py
```

Next, say a prayer.

# Decrypt
```sh
cd client
./decrypt ../cloud_enc/output.data <bits>
```

where bits is the same wordsize you used during encryption and running.

# Troubleshooting
## Illegal instruction 'mux'
Edit the .asm file and change mux instructions to emux and try again.

## Seg fault when running encalu
You forgot to keygen

## Seg fault when decrypting
You didn't pass the path to the file to decrypt and the number of bits as 2 arguments.

## `error while loading shared libraries: libtfhe-spqlirunning` when doing anything
You forgot to `export LD_LIBRARY_PATH=<tfhe_path>/build/libtfhe`



