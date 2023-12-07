# Create a new TypeScript project (in 30 seconds)

In a terminal on Mac OSX or Linux create a new directory and navigate to it using this command:

```shell
mkdir example && cd $_
```

Setup node:

You need a **package.json** file to run a typescript project. Use npm init to create one:

```shell
npm init --yes
```

The output shows a newly created package.json file:

```json
{
  "name": "example",
  "version": "1.0.0",
  "description": "",
  "main": "index.js",
  "scripts": {
    "test": "echo \"Error: no test specified\" && exit 1"
  },
  "keywords": [],
  "author": "",
  "license": "ISC"
}

```

Install typescript:

Next save typescript compiler and the loader ts-node as development dependencies.

```shell
npm i -D typescript ts-node
```

The shell output shows the installed dependencies (with your version instead)

```bash
+ ts-node@10.0.0
+ typescript@4.3.4
added 14 packages from 45 contributors and audited 14 packages in 1.209s
found 0 vulnerabilities

```

Setup tsconfig:

Next you can create a **tsconfig.json** file using typescript's tsc --init command:

```shell
./node_modules/.bin/tsc --init
```

A success message is shown in the terminal:

```bash
message TS6071: Successfully created a tsconfig.json file.
```

Create a typescript file:

Now we can create a simple typescript file called index.ts

```shell
echo 'console.log("Hi")' > index.ts
```

Run the script:

You can run typescript using NodeJS with the ts-node/esm loader. Run your script like so:

```shell
node --loader ts-node/esm index.ts
```

The output shows our message:

```bash
Hi
```

Next steps:

You can now write and run typescript files easily. To make run commands easier try adding the scripts to the **package.json** file:

```json
{
    "scripts": {
        "start": "node --loader ts-node/esm index.ts"
    }
}

```

Then run your script using npm start.

```shell
npm start
```

To do not create a new project, just open the existent project TS_2:

The project requires some npm packages:

```shell
npm init -y
npm install express typescript @types/node @types/express
```

```shell
cd nvim check set-up files/neovim/7. TypeScript
nvim check set-up files/neovim/7. TypeScript/TS_2
```

The output should be:

```bash
(node:91667) ExperimentalWarning: --experimental-loader is an experimental feature. This feature could change at any time
(Use `node --trace-warnings ...` to show where the warning was created)
Hi
Server is running on http://localhost:3000

```
