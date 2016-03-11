
# Dr. Eugine

New to the HealthOps practice? Chef what did you say? Talk to your health care
provider about adding Dr. Eugine to your daily intake of sugar, fat and arsenic.
For a stress free cookbook development experience ask your doctor, is Dr. Eugine
right for you?

## HealthOps with Dr. Eugine HealthDev!

Dr. Eugine HealthDev was created to practice HealthOps. As your personal recipe,
cookbook, template, attribute, spec generator and friend, RTFM Dr. Eugine and you.

## Prerequisites

[ChefDK](https://downloads.chef.io/chef-dk/) sounds like a good idea.

## Installation

### Install the Gem:

```bash
chef gem install chefdk-eugine
```

### Configure your `knife.rb`:

Add the lines below into your `config.rb` or `knife.rb` file(s):

```ruby
if defined?(ChefDK::CLI)
  require 'chefdk/eugine'
  chefdk.generator_cookbook ChefDK::Eugine.path
end
```

## Getting Up and Running Quickly with Scaffolding

Once Dr. Eugine is installed, generate a cookbook using `chef generate cookbook` command:

```bash
chef generate cookbook healthstick
```

where '*healthstick*' is the name of the cookbook you want to create.
