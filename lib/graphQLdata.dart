String incrementCounterMutation() {
  return ("""mutation updateCounter(\$id: ID!, \$counter: Int){
              updateCounter(input: {
                filter: {
                  id: [\$id]
                },
                set: {
                  counter: \$counter
                }
              }) {
                counter{
                  id
                  counter 
                }
                numUids
              }
            }""");
}

String addCounterMutation() {
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
  return ("""query getCounter(\$id: ID!){
               getCounter(id: \$id) {
                  id
                  counter
               }
             }""");
}