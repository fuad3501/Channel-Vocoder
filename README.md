# Channel-Vocoder

To run the codec, type into your terminal: ```makefile```

encoding: ```./encoder M input_file.dat output_file.dat```
decoding: ```./decoder M input_file.dat output_file.dat```

where M - decimation/interpolation factor

If using without makfile, run in the terminal:
encoding: ```gcc -Wall -O3 -o encoder encoder.c -lfftw3 -lm ```
decoding: ```gcc -Wall -O3 -o decoder decoder.c -lfftw3 -lm ```
to compile the codec files. 

This was compiled on a Linux GNU OS using the GCC compiler with FFTW3 library.


