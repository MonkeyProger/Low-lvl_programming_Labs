# "Фиктивные" цели
.PHONY: all
# Файлы для сборки исполняемого файла
objs = main.c libFindCoeffs.a
CC =  riscv64-unknown-elf-gcc
# Параметры компиляции
CFLAGS = -march=rv64iac -mabi=lp64 -O1
# Включаемые файлы следует искать в текущем каталоге
INCLUDES+= -I .
# Утилита make должна искать файлы *.c и *.a в текущей директории
vpath %.c .
vpath %.a .
all: a.out
# Сборка исполняемого файла и удаление промежуточных файлов
a.out: $(objs)
	$(CC) $(CFLAGS) $(INCLUDES) $^
	del *.o *.i *.s