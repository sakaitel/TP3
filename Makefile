ASM = nasm
LD = ld

# Flags para NASM em modo x86-64 no Linux
ASMFLAGS = -f elf64
LDFLAGS = -m elf_x86_64

TARGET = tarefa3
SRC = tarefa3-GrupoX.asm
OBJ = $(SRC:.asm=.o)

all: $(TARGET)

$(TARGET): $(OBJ)
	$(LD) $(LDFLAGS) -o $@ $^

%.o: %.asm
	$(ASM) $(ASMFLAGS) $< -o $@

clean:
	rm -f $(OBJ) $(TARGET)