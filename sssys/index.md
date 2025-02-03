---
title: Self-Serving Systems
subtitle: Unsolutions since 1980
author: John Jolly
author-url: "https://selfserving.systems"
date: 2025-02-03
lang: en
toc-title: Contents
---

## Introduction

This is Self-Serving Systems, your one-stop shop for all things you can't have. We have a wide selection of projects to tinker with, but they weren't made for you and you likely won't find them useful or even accessable.

In other words, sod off! This is my badger's den!

## Journal

### 03 Feb 2025 - Part 2

Note to self: Ansible does not like a playbook file with a role that does not exist, even if the role is conditional. This breaks even before the `pre_tasks` actions are processed. This means no funny last-minutes changes can be made to fix the problem.

In short, if your playbook has a role, it had better exist.

### 03 Feb 2025 - Part 1

"Unsolutions". Ha, thank you Qwen.

### 01 Feb 2025 - Part 2

Trying to get this working for Cloudflare took a little effort.

Cloudflare has this thing called Workers and Pages. You can have Cloudflare connect to your Github or Gitlab repo and they'll deploy it to a `pages.dev` subdomain. Problems I had was adding that subdomain as a CNAME to my hostname.

In the Pages details, there's a list of tabs at the top of the page. It defaults to Deployments, but I needed Custom Domains. Once I added my hostname to that, everything worked.

I'm starting to appreciate Cloudflare. Maybe they should get some of my moneys.

### 01 Feb 2025 - Part 1

Started this website. It's all downhill from here.

---
> Made with [Monospace](https://github.com/owickstrom/the-monospace-web) because I hate you
