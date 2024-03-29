
ELB costs ~$16 / month
ansible - infrastructure automation
    YAML playbook
    requires installation on one machine - it can manage an entire fleet of remote machines from that central point
        RHEL and CentOS
            sudo yum install ansible
        macOS
            sudo launchctl limit maxfiles unlimited    
    Ansible is not supported on Windows (Windows isn’t supported for the control node), only via Cygwin. Supported Red Hat, Debian, CentOS, macOS, any of the BSDs
       Cygwin, it is “a collection of GNU and Open Source tools which provide functionality similar to a Linux distribution on Windows.”
    
    
Virtualization types

copy pem to ssh
chmod 400 path-to-pem
copy .ssh/config


ssh zalizniak.com      
    sudo su
    yum update  
    yum install ansible -y
    ansible --help
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
                                prepend colon-separated path(s) to module library
                                (default=[u'/root/.ansible/plugins/modules',
                                u'/usr/share/ansible/plugins/modules'])
          --new-vault-id=NEW_VAULT_ID
                                the new vault identity to use for rekey
          --new-vault-password-file=NEW_VAULT_PASSWORD_FILES
                                new vault password file for rekey
          -o, --one-line        condense output
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
          --version             show program's version number and exit
        
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
        
          Privilege Escalation Options:
            control how and which user you become as on target hosts
        
            -s, --sudo          run operations with sudo (nopasswd) (deprecated, use
                                become)
            -U SUDO_USER, --sudo-user=SUDO_USER
                                desired sudo user (default=root) (deprecated, use
                                become)
            -S, --su            run operations with su (deprecated, use become)
            -R SU_USER, --su-user=SU_USER
                                run operations with su as this user (default=None)
                                (deprecated, use become)
            -b, --become        run operations with become (does not imply password
                                prompting)
            --become-method=BECOME_METHOD
                                privilege escalation method to use (default=sudo),
                                valid choices: [ sudo | su | pbrun | pfexec | doas |
                                dzdo | ksu | runas | pmrun ]
            --become-user=BECOME_USER
                                run operations as this user (default=root)
            --ask-sudo-pass     ask for sudo password (deprecated, use become)
            --ask-su-pass       ask for su password (deprecated, use become)
            -K, --ask-become-pass
                                ask for privilege escalation password
        
        Some modules do not make sense in Ad-Hoc (include, meta, etc)
        
Ansible vault vs hashicorp vault        
packer - build machine images for different platforms


aws sts decode-authorization-message --encoded-message BkWSSu1ypIePCr7VHniIL0ig0TiQJoqmniCtTq10uqXNyPcKq0El0Ap4wjuPpHd85FuqcKSKwP-jIGWyyIG2Z-tgemeImWL-kAJTrFULHlk0PRDD0We8krLX_m4YdKKts_2ZUDGZQ4QUOKNPd22JGDCjpr1ONBVr5mMeHCyATCmMpIGkHk8lpbczkkY9naVhktO74SjTNaXZ2PuHCeb-QkxIHd5U7IiPN5a8D7fBZ5-qFRG-yNs1_xu93GEwL0Hx6NsKkjQDmZykDSJ2j23_JScmsFyfl2E4gXNc1bMU7ftvb1eQd2ca1wy61azWr9sHJQ3rswylUi-IYbCj2vhnqeXwwUFM74Um82HdA8Z6xhgcNdST2HZ5jR_IQr_CKMoiR9PZfbP-bsSuzHIEdO2AtFPFkwJZ3IjiWz2pTl6Z0_SC0TCebdnyniNlXNOc9cRtIXMP2ZlJg8cKBEzjtF00efsQsxw3UV82m6oDMN89qAumzopNRNAfLMbecqolSsNg7kvs0R8aBhMIeJGABKFrxnSKlz8 --profile oz_devops_user