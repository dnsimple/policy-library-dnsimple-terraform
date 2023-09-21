# Contributing to DNSimple/policy-library-dnsimple-terraform

## Getting started

#### 1. Clone the repository

Clone the repository and move into it:

```shell
git clone git@github.com:dnsimple/policy-library-dnsimple-terraform.git
cd policy-library-dnsimple-terraform
```

#### 2. Test

You will require Sentinel (>= 0.23) to run the tests. You can download it from [here](https://docs.hashicorp.com/sentinel/downloads).

To run a tests for a policy you can use the following command:

```shell
make test name="enforce_contact_id.sentinel"
```

Alternatively, you can run all the tests with:

```shell
make tests
```

## Releasing

The following instructions uses `$VERSION` as a placeholder, where `$VERSION` is a `MAJOR.MINOR.BUGFIX` release such as `1.2.0`.

1. Run the test suite and ensure all the tests pass.

1. Finalize the `## main` section in `CHANGELOG.md` assigning the version.

1. Commit and push the changes

    ```shell
    git commit -a -m "Release $VERSION"
    git push origin main
    ```

1. Wait for CI to complete.

1. Create a signed tag.

    ```shell
    git tag -a v$VERSION -s -m "Release $VERSION"
    git push origin --tags
    ```

1. Tags are automatically published to the Terraform Policy Registry through webhooks.
