# MyCounter

This is a simple sounter exercise done using TDD (or extreme TDD) to teach you the Pharo basics.
It also has the CI configured that will automatically all the tests for each new commit.

### Git integration

Git and GitHub (or GitLab) is our favorite way to share code in Pharo!

For using Git in Pharo, we use [Iceberg](https://github.com/pharo-vcs/iceberg/). Iceberg the Git repositoties browser that we use in Pharo. It allows to clone, commit, push, pull, merge, create branches and add remotes in Pharo.

The default way to use Iceberg is by using a [ssh key](https://docs.github.com/en/authentication/connecting-to-github-with-ssh/adding-a-new-ssh-key-to-your-github-account). After creating your key, add it to the ssh agent by running `ssh-add`. After this, normally, Iceberg should automatically detect the key.


If you didn't manage to have the ssh agent working on your computer, we advice to use a [GitHub token](https://docs.github.com/en/authentication/keeping-your-account-and-data-secure/managing-your-personal-access-tokens).
A token is like a password but safer. You can specify which permissions you want to give to your token, and if lost, you can just delete it from your GitHub account.

To automatically add your token to Pharo, you can create a file `startup.st` and copy the content that is below. This is a special file that Pharo will execute each time that you download a new image. You need to add the `startup.st` file to your Pharo general preferences folder. To know where that folder is located, evaluate the following expression `StartupPreferencesLoader preferencesGeneralFolder`. For example, in mac the path is `/Users/theUser/Library/Preferences/pharo`.

```st
StartupPreferencesLoader default executeAtomicItems: {
	StartupAction 
		name: 'Git Settings' 
		code: [ 
			Iceberg enableMetacelloIntegration: true

    "Add the token"
			IceCredentialStore current
				storeCredential: (IceTokenCredentials new
					username: 'GHUSER';
					token: 'YOUR TOKEN';
					yourself) 
				forHostname: 'github.com'.
			]. 
}.
```
