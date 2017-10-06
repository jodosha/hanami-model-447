# Backend

Reproduce hanami/model#447

## Setup

### Clone and bundle

```shell
git clone https://github.com/jodosha/hanami-model-447.git backend
cd backend
bundle
```

### Prepare the databases

```shell
% bundle exec hanami db prepare
% HANAMI_ENV=test bundle exec hanami db prepare
```

### Run the tests

```shell
% bundle exec rake
```
