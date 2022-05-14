SRC1 = encoder.c 
SRC2 = decoder.c

OBJ1 = $(SRC1:.c=.o)
OBJ2 = $(SRC2:.c=.o)

CCOMP = gcc

CFLAGS = -Wall -O3 -fstrict-aliasing

LDFLAGS = -O3 -lm -L/usr/lib -lfftw3 -lm

TARGET1 = encoder 
TARGET2 = decoder

# actions
all: $(OBJ1) $(OBJ2)
	$(CCOMP) -o $(TARGET1) $(OBJ1) $(LDFLAGS)
	$(CCOMP) -o $(TARGET2) $(OBJ2) $(LDFLAGS)

%.o: %.c
	$(CCOMP) -c -o $@ $< $(CFLAGS)

clean:
	rm -f $(OBJS1) $(TARGET1)
	rm -f $(OBJS2) $(TARGET2)



