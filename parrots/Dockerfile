FROM boris/golang
MAINTAINER Boris Quiroz <boris@insert-coin.org>

RUN go get -u github.com/nsf/termbox-go \
  && cd \
  && git clone https://github.com/jmhobbs/terminal-parrot.git ; cd terminal-parrot \
  && go build -o parrot parrot.go draw.go data.go

ENTRYPOINT ["/root/terminal-parrot/parrot"]
