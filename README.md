# flutter-graphql-app

The sample Flutter application with [GraphQL-Flutter](https://github.com/zino-app/graphql-flutter) powered by Dgraph.

## Getting Started

### Installation

This project assumes that you have the flutter setup done in your machine.
In case you don't, follow the steps in [Flutter website](https://flutter.dev/docs/get-started/install) to install it.

#### Flutter Setup

Let's clone the repo:

```sh
git clone git@github.com:prashant-shahi/flutter-graphql-app.git
```

Now, open the repository using either VS Code or Android Studio.
Make sure that you have android SDK and flutter extension/plugin installed.

```sh
$ flutter doctor
Doctor summary (to see all details, run flutter doctor -v):
[✓] Flutter (Channel stable, v1.12.13+hotfix.9, on Mac OS X 10.15.3 19D76, locale en-IN)
[✓] Android toolchain - develop for Android devices (Android SDK version 29.0.3)
[✓] Android Studio (version 3.6)
[✓] VS Code (version 1.44.0)
```

#### Setup GraphQL API powered by Dgraph

Bring up the [Dgraph](https://dgraph.io) standalone instance.

```sh
docker run -it -p 8080:8080 dgraph/standalone:v2.0.0-beta
```

Let's create a schema file:

```graphql
type Counter {
  id: ID!
  counter: Int! @search
}
```

Now, let's generate query and mutation functions by passing the schema file to Dgraph:

```sh
curl -XPOST localhost:8080/admin/schema --data-binary '@schema.graphql'
```

### Run

Click on the run option in your editor. You can also use the shortcut `^R`/`F5`.

