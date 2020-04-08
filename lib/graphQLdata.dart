String incrementCounterMutation(id, counter) {
  return ("""mutation updateCounter{
              updateCounter(
                filter: { id: ["$id"] },
                set: { counter: "${counter+1})" }
               ) {
                counter{
                  id
                  counter
                }
              }
            }""");
}

String addCounterMutation(task) {
  return ("""mutation AddCounter{
              addCounter(input: {counter: 0) {
                counter {
                  id
                  counter
                }
              }
            }""");
}

String fetchQuery() {
  return ("""query getCounter {
               getCounter(id: "0x2") {
                  id
                  counter
               }
             }""");
}