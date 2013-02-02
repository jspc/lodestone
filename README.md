Lodestone
==

Rationale
--

Directories and filesystems on File Servers (especially but not exclusively) require specific directory permissions; both for traversal and for security.

We can use scripts, setgid, etc., etc. to configure these but they're a pain.

We can also use puppet but this is overkill and more complex to setup.


Usage
--

A valid definition **must** start with the word 'define'. It takes the verbs:

`file`
`directory`
`user`
`group`
`perms`

It also has the helper /make me prettier/ verbs:

`should be`
`and`
`with`
`it`

Which means we can be can build definitions such as:

`"define directory /sss perms 777 user jspc group jspc"`

Or:

` "define directory /sss with perms 777 it should be user jspc and should be group jspc"`

Of course all options are optional.

Licence
--

Apache License, Version 2.0.

See `./LICENCE.txt`

Copyright 2013 James Condron

Licensed under the Apache License, Version 2.0 (the "License");
you may not use this file except in compliance with the License.
You may obtain a copy of the License at

 http://www.apache.org/licenses/LICENSE-2.0

Unless required by applicable law or agreed to in writing, software
distributed under the License is distributed on an "AS IS" BASIS,
WITHOUT WARRANTIES OR CONDITIONS OF ANY KIND, either express or implied.
See the License for the specific language governing permissions and
limitations under the License.