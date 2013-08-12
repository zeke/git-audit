git-audit
=========

This script finds git repos within the given path that have unstaged changes and/or unpushed commits (in their currently checked-out branch).


Installation
------------

```sh
curl -O https://raw.github.com/zeke/git-audit/master/git-audit.rb \
  /usr/local/bin/git-audit
chmod +x $!
git audit ~/code
```

Usage
-----

```sh
git audit ~/code
git audit # audit working directory
```

Sample Output
-------------

    UNSTAGED
    /Users/zeke/Projects/forks/alchemy_api/
    /Users/zeke/Projects/friends/joe_sikelianos/urbanarboristsf/
    /Users/zeke/Projects/hero/heroku-addon-plans-ui/
    /Users/zeke/Projects/libraries/InstantJasmineCoffee/
    /Users/zeke/Projects/libraries/common_view_helpers/

    UNPUSHED
    /Users/zeke/Projects/wordnik/libraries/wordnik-python/
    /Users/zeke/Projects/wordnik/other/blurt_ancestor/
    /Users/zeke/Projects/wordnik/swagger/swagger-codegen/
    /Users/zeke/Projects/wordnik/swagger/swagger.js/
    /Users/zeke/Projects/wordnik/www.wordnik.com/

    CLEAN
    /Users/zeke/Projects/forks/geo_ips/
    /Users/zeke/Projects/forks/monster_mash/
    /Users/zeke/Projects/gemini/fa_pocket_guides/
    /Users/zeke/Projects/hero/kensa/
    /Users/zeke/Projects/libraries/autoform/