CFLAGS=-Wall -Wmissing-prototypes -Wstrict-prototypes -Wold-style-definition -Werror -O2
LDFLAGS=-lresolv -lcrypto

all: wsproxy

clean:
	rm -f wsproxy

wsproxy: wsproxy.c
	$(CC) -o wsproxy wsproxy.c $(CFLAGS) $(LDFLAGS)
