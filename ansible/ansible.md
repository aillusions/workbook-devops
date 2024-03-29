Automation of application configuration
Idempotent (stateless) - no matter how many times it runs - the result is same. Where terraform is statefull 

pip install ansible


/etc/ansible/hosts

alex:~/work/workbook-devops/terraform$ ansible --help

    Usage: ansible <host-pattern> [options]
    
    Define and run a single task 'playbook' against a set of hosts
    
    Options:
      -a MODULE_ARGS, --args=MODULE_ARGS
                            module arguments
      --ask-vault-pass      ask for vault password
      -B SECONDS, --background=SECONDS
                            run asynchronously, failing after X seconds
                            (default=N/A)
      -C, --check           don't make any changes; instead, try to predict some
                            of the changes that may occur
      -D, --diff            when changing (small) files and templates, show the
                            differences in those files; works great with --check
      -e EXTRA_VARS, --extra-vars=EXTRA_VARS
                            set additional variables as key=value or YAML/JSON, if
                            filename prepend with @
      -f FORKS, --forks=FORKS
                            specify number of parallel processes to use
                            (default=5)
      -h, --help            show this help message and exit
      -i INVENTORY, --inventory=INVENTORY, --inventory-file=INVENTORY
                            specify inventory host path or comma separated host
                            list. --inventory-file is deprecated
      -l SUBSET, --limit=SUBSET
                            further limit selected hosts to an additional pattern
      --list-hosts          outputs a list of matching hosts; does not execute
                            anything else
      -m MODULE_NAME, --module-name=MODULE_NAME
                            module name to execute (default=command)
      -M MODULE_PATH, --module-path=MODULE_PATH
                            prepend colon-separated path(s) to module library (def
                            ault=~/.ansible/plugins/modules:/usr/share/ansible/plu
                            gins/modules)
      -o, --one-line        condense output
      --playbook-dir=BASEDIR
                            Since this tool does not use playbooks, use this as a
                            substitute playbook directory.This sets the relative
                            path for many features including roles/ group_vars/
                            etc.
      -P POLL_INTERVAL, --poll=POLL_INTERVAL
                            set the poll interval if using -B (default=15)
      --syntax-check        perform a syntax check on the playbook, but do not
                            execute it
      -t TREE, --tree=TREE  log output to this directory
      --vault-id=VAULT_IDS  the vault identity to use
      --vault-password-file=VAULT_PASSWORD_FILES
                            vault password file
      -v, --verbose         verbose mode (-vvv for more, -vvvv to enable
                            connection debugging)
      --version             show program's version number, config file location,
                            configured module search path, module location,
                            executable location and exit
    
      Privilege Escalation Options:
        control how and which user you become as on target hosts
    
        -b, --become        run operations with become (does not imply password
                            prompting)
        --become-method=BECOME_METHOD
                            privilege escalation method to use (default=sudo), use
                            `ansible-doc -t become -l` to list valid choices.
        --become-user=BECOME_USER
                            run operations as this user (default=root)
        -K, --ask-become-pass
                            ask for privilege escalation password
    
      Connection Options:
        control as whom and how to connect to hosts
    
        -k, --ask-pass      ask for connection password
        --private-key=PRIVATE_KEY_FILE, --key-file=PRIVATE_KEY_FILE
                            use this file to authenticate the connection
        -u REMOTE_USER, --user=REMOTE_USER
                            connect as this user (default=None)
        -c CONNECTION, --connection=CONNECTION
                            connection type to use (default=smart)
        -T TIMEOUT, --timeout=TIMEOUT
                            override the connection timeout in seconds
                            (default=10)
        --ssh-common-args=SSH_COMMON_ARGS
                            specify common arguments to pass to sftp/scp/ssh (e.g.
                            ProxyCommand)
        --sftp-extra-args=SFTP_EXTRA_ARGS
                            specify extra arguments to pass to sftp only (e.g. -f,
                            -l)
        --scp-extra-args=SCP_EXTRA_ARGS
                            specify extra arguments to pass to scp only (e.g. -l)
        --ssh-extra-args=SSH_EXTRA_ARGS
                            specify extra arguments to pass to ssh only (e.g. -R)
    
    Some modules do not make sense in Ad-Hoc (include, meta, etc)

cd ansible 
ansible zalizniak -m ping -i ./hosts

    zalizniak.com | SUCCESS => {
        "ansible_facts": {
            "discovered_interpreter_python": "/usr/bin/python"
        }, 
        "changed": false, 
        "ping": "pong"
    }
