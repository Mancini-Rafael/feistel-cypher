# Description

- Implementation of a Feistel Cypher algorythm, including tests
- Learn more about Feistel Cypher [here](https://en.wikipedia.org/wiki/Feistel_cipher)
- You can update the bit key used on the .env file

- How to use
  - ```docker build . -t feistel-cypher:latest```
  - ```docker run --rm -it -v `pwd`:"/app/" feistel-cypher main```

- Testing
  - ```docker run --rm -it -v `pwd`:"/app/" feistel-cypher test```

- Inspecting / Debugging
  - ```docker run --rm -it -v `pwd`:"/app/" feistel-cypher bash```
