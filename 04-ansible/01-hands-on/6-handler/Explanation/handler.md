# What is handlers ?

* Handlers are lists of tasks, not really anything different from regular tasks

* These handlers are referenced by an global unique name and are notified by notifiers

* If nothing notifies a handler, it will not run

* Regardless of how many tasks notify a handler, it will run only once

* `notify` actions are triggered at the end of each block of tasks in a play

* Handler only be triggered once even if notified by multiple different tasks

* For instance, multiple resources may indicate that apache needs to be restarted because they have changed a config file, but apache will only be restarted once to avoid unnecessary restarts

* Handlers also will run only at end of the play not before that.
