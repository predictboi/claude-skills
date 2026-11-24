---
name: ui-libraries
description: Pick and install the right open-source UI library for a web project (React or plain HTML) - components, dialogs and menus, command palette, toasts, mobile drawers, icons, charts and dashboards, effects, component catalog. Use when building or upgrading a web UI and choosing between shadcn/ui, Radix, cmdk, Magic UI, Sonner, Vaul, Tailwind CSS, daisyUI, Mantine, Tremor, Recharts, Tabler Icons or Storybook.
---

# UI libraries

These are npm packages installed per project, not skills. Use this file to choose one stack, install it, and keep the project consistent. Read the project first: if it already uses one of these, keep it.

## Pick one component system per project

| Situation | Use | Do not add |
|---|---|---|
| React + Tailwind, wants code it owns and can restyle | shadcn/ui (built on Radix) | Mantine, daisyUI |
| React, wants a full kit with hooks and forms, no Tailwind | Mantine | shadcn/ui, daisyUI |
| Plain HTML or any framework, Tailwind only, fastest | daisyUI | shadcn/ui, Mantine |
| Accessible unstyled parts under your own design system | Radix Primitives | a second headless library |

Mixing two component systems doubles the CSS, fights over focus and theming, and looks inconsistent. Add the single-purpose libraries below on top of the one system.

## Single-purpose additions

| Need | Library | Install |
|---|---|---|
| Toasts that stack | Sonner | `npm i sonner` (shadcn: `npx shadcn@latest add sonner`) |
| Command palette (Cmd/Ctrl+K) | cmdk | `npm i cmdk` (shadcn: `npx shadcn@latest add command`) |
| Mobile bottom sheet / drawer | Vaul | `npm i vaul` (shadcn: `npx shadcn@latest add drawer`). Check the repository README for its maintenance status before relying on it |
| Line icons | Tabler Icons | `npm i @tabler/icons-react` (or `@tabler/icons` for SVG files) |
| Charts | Recharts | `npm i recharts` |
| KPI cards and dashboards | Tremor | see tremor.so for the current install path (copy-paste components on Tailwind, or the older `@tremor/react` package) |
| Shine, marquee, animated borders | Magic UI | added through the shadcn CLI from magicui.design; copy the exact command from the component page |
| Component catalog and states | Storybook | `npm create storybook@latest` |

## Base installs

- Tailwind CSS: follow tailwindcss.com/docs/installation for the project's build tool (Vite, Next.js, PostCSS or the CLI). v4 is configured in CSS with `@import "tailwindcss";`.
- shadcn/ui: `npx shadcn@latest init`, then add only the components used, for example `npx shadcn@latest add button dialog`.
- Radix Primitives: `npm i radix-ui`, then import parts such as `Dialog`, `DropdownMenu`, `Popover`.
- Mantine: `npm i @mantine/core @mantine/hooks`, import `@mantine/core/styles.css`, wrap the app in `MantineProvider`.
- daisyUI (Tailwind v4): `npm i -D daisyui@latest`, then add `@plugin "daisyui";` after the Tailwind import in the main CSS file.

## Rules

1. Check the live docs for the install command before running it; these libraries change their CLIs between majors.
2. Install only what the screen needs. No library for one button.
3. Brand tokens win: map the project's colors, radius and fonts into the library theme instead of shipping the library's default look.
4. Effects (Magic UI) are for one focal moment per screen, not every card. Respect `prefers-reduced-motion`.
5. Keyboard and screen reader behavior come from Radix-based parts; do not rebuild dialogs, menus or popovers by hand when the project already has them.
6. After adding a library, run the build and check the bundle did not grow by more than the feature needs.
