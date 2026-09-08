# Quick Guide - Set Up Codex (5-10 minutes)

You need one working Codex interface for this bootcamp. Pick the desktop app, command-line interface (CLI), or IDE extension. The missions are the same whichever one you choose.

> Product screens and install commands can change. Use the [official Codex documentation](https://learn.chatgpt.com/docs) as the source of truth if it differs from this guide.

## What Codex is

Codex is an AI teammate that can read, create, and change files in a project folder when you ask in plain English. You stay in control: Codex shows its work and may request permission before actions such as accessing the network or another folder.

You need a ChatGPT account with Codex access. Availability can depend on your plan or organization. Sign in through the interface you choose.

## Option A - Desktop app

This is the most visual route.

1. Follow the [official desktop app guide](https://learn.chatgpt.com/docs/app).
2. Install and open the ChatGPT desktop app, then open Codex.
3. Sign in with your ChatGPT account.
4. Add this bootcamp folder as a project.

## Option B - Codex CLI

The CLI runs in a terminal, a text window where you type commands.

**Mac or Linux:**

```sh
curl -fsSL https://chatgpt.com/codex/install.sh | sh
```

**Windows PowerShell:**

```powershell
powershell -ExecutionPolicy ByPass -c "irm https://chatgpt.com/codex/install.ps1 | iex"
```

If you already have Node.js, you can instead run:

```sh
npm install -g @openai/codex
```

Open a fresh terminal and run `codex`. Choose **Sign in with ChatGPT** and complete the browser sign-in. See the [official Codex CLI guide](https://learn.chatgpt.com/docs/codex/cli) for current alternatives and troubleshooting.

## Option C - IDE extension

An IDE is an editor that shows your files and Codex side by side.

1. Open VS Code or a compatible editor.
2. Install the official **Codex - OpenAI's coding agent** extension from the extension marketplace.
3. Open this bootcamp folder.
4. Open the Codex panel and sign in.

See the [official Codex IDE guide](https://learn.chatgpt.com/docs/codex/ide) for supported editors and platforms.

## Check that it works

Open this project in your chosen interface and ask:

> What files are in this folder?

If Codex names files such as `START-HERE.md`, `AGENTS.md`, and `missions/`, setup is complete. Continue with [START-HERE.md](START-HERE.md).

Never paste a password, API key, or customer personal data into chat. Normal account sign-in happens in the official sign-in window, not in your prompt.
