CC        = clang-15
CFLAGS    = -fPIC -Wall
LDFLAGS   = -shared

TARGET    = libdisagg.so
SOURCE    = disagg.c
OBJS      = $(SOURCE:.c=.o)

all: $(TARGET)

$(TARGET) : $(OBJS)
	$(CC) $(CFLAGS) $(OBJS) -o $@ $(LDFLAGS)

clean:
	rm -f $(OBJS) $(TARGET)

