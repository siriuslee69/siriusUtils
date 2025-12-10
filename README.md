# SiriusUtils

This repo is meant to be a collection of some code I often use and want to have access to.

## Layout

Each proc has its tests written right below them. 

To test everything, first, go into a folder of your choice, make sure you have git installed and:

```bash
git clone https://github.com/siriuslee69/siriusUtils
```

Then inside this directory you can call the tests in different ways.
You can run all tests at once via nimble:

```bash
nimble test all
```
or just

```bash
nimble test 
```
To test only a single file via nimble, you can use:

```bash
nimble test filename 
```
- no .nim ending or relative path needed.

If you don't want to use nimble for whatever reason, you can just provide the flags manually:


```bash
nim c -d:test -r siriusUtils.nim
```
- tests everything.

```bash
nim c -d:test -r fileName.nim
```

- tests only one file (you have to switch into its directory first though).

## Warning

Use at your own risk. Subject to change. 
