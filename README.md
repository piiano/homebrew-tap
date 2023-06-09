<p>
  <a href="https://piiano.com/pii-data-privacy-vault/">
    <picture>
      <source media="(prefers-color-scheme: dark)" srcset="https://piiano.com/docs/img/logo-developers-dark.svg">
      <source media="(prefers-color-scheme: light)" srcset="https://piiano.com/wp-content/uploads/piiano-logo-developers.png">
      <img alt="Piiano Vault" src="https://piiano.com/wp-content/uploads/piiano-logo-developers.png" height="40" />
    </picture>
  </a>
</p>

# Piiano Homebrew Tap

## Background
Piiano Vault is the secure home for sensitive personal data. It allows you to safely store sensitive personal data in your own cloud environment with
automated compliance controls.
Vault is deployed within your own architecture, next to other DBs used by the applications, and should be used to store the most critical sensitive personal data, such as credit cards and bank account numbers, names, emails, national IDs (e.g. SSN), phone numbers, etc.
The main benefits are:
- Field level encryption, including key rotation
- Searchability is allowed over the encrypted data
- Full audit log for all data accesses
- Granular access controls
- Easy masking and tokenization of data
- Out of the box privacy compliance functionality

More details can be found [on our website](https://piiano.com/pii-data-privacy-vault/) and on the [developers portal](https://piiano.com/docs/).

## Overview

Homebrew formulae that allows installation of Piiano Vault binaries using [Homebrew](https://brew.sh/) package manager.

## Packages

| Package                                                            | Installation                            |
| ------------------------------------------------------------------ | --------------------------------------- |
| [Piiano Vault Server](https://piiano.com/docs/guides/get-started/) | `brew install piiano/tap/pvault-server` |
| [Piiano Vault CLI](https://piiano.com/docs/cli)                    | `brew install piiano/tap/pvault-cli`    |