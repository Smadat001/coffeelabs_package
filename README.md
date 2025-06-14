# coffeelabs_package

A simple Puppet module to install packages on Windows using Chocolatey.

## 🔧 Requirements

- Puppet < 9
- Windows Server 2016 or 2019
- Chocolatey installed on the system

## 📦 What This Module Does

- Installs a specified Windows package using the Chocolatey provider.
- Defaults to installing `git` if no package is specified.

## 📝 Usage

### Basic usage

```puppet
include coffeelabs_package
