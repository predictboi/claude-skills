# Claude skills

PPT, design and review skills for Claude Code, collected in one place so every project can use them.

| Group | Skills |
|---|---|
| Slides | ppt-master |
| Design | frontend-design, taste-skill, impeccable, hallmark, emil-design-eng, redesign-existing-projects, brand-identity, logo-design, diagram-design, antislop, antislop-ui, antislop-layoutmobile, antislop-human, antislop-copywriting, antislop-code |
| UI libraries | ui-libraries (when to use shadcn/ui, Radix, cmdk, Magic UI, Sonner, Vaul, Tailwind, daisyUI, Mantine, Tremor, Recharts, Tabler Icons, Storybook, and how to install them) |
| Answer quality | arena (sub-agents compete in a bracket over one task; this copy is patched to stay offline and default to 16 agents; from github.com/Jakeschincariol/arena-skill, MIT) |
| Review | ui-review-loop, break-ui, web-design-guidelines, review-animations, security-audit |

## Install

Your computer, all projects:

```bash
git clone --depth 1 https://github.com/predictboi/claude-skills && sh claude-skills/install.sh
```

Claude Code cloud sessions: add the same two commands to each environment's setup script.

## Licenses

Each skill keeps its own license file. `skills/LICENSE-open-design` is the Apache 2.0 text that several skills refer to. `frontend-design` is from github.com/anthropics/skills.
