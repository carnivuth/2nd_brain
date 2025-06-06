---
id: ansible
aliases: []
tags:
  - snippet
  - ansible
  - playbooks
  - inventories
  - ansible vault
next: pages/technologies/awk.md
---

Personal snippets for ansible playbooks development and reference

- copy script in remote host and set a cronjob

```yaml
- name: Setup cronjob
  block:

    - name: Copy cronjob script
      ansible.builtin.template:
        src: templates/cronjob.sh.j2
        dest: /usr/local/bin/cronjob.sh
        mode: '755'

    - name: Configure cron to run cronjob
      ansible.builtin.cron:
        name: "cronjob"
        minute: "*"
        hour: "*"
        job: "/usr/local/bin/cronjob.sh > /dev/null 2>&1"
```

- Block rescue for installation procedure and notifications

```yaml
- name: Do installation operations
  block:
  # tasks ....
  rescue:
    - name: Notify failed installation
      ansible.builtin.uri:
        url: "{{ ntfy_endpoint }}"
        method: POST
        body: "installation on {{ inventory_hostname }} has encounter some issues"
```

- test a variable and fail if it is undefined

```yaml
- name: Print variables and fail if absent
  block:
    - ansible.builtin.debug:
        var: foo
    - ansible.builtin.fail:
        msg: "{{ foo }} is undefined"
      when: foo is undefined
```

[>](pages/technologies/awk.md)
