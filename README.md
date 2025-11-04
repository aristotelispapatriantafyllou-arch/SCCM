# 🧩 Microsof AAD Token

**Category:** Citrix / SCCM / GPO  
**Date:** August 2025
**Tags:** PowerShell, Automation, Windows 11, Office 365 Apps.

---

## 🧠 Overview

This scripts automates the task of clearing the token broker when transition from windows 10 to windows 11

---

## 💡 Problem Solved

When you transition to windows 11 there is a common error (Error tag : 58tm1)
office 365 (outlook, Teams) does not update even after you sign in.

---

## ⚙️ Environment


  Citrix PVS, Windows 11, Office
| Tools Used | PowerShell 5.1, GPO (login script), SCCM Scripts

---

## 🧾 How It Works

1.Close allo M365 Apps (teams incl.)
2. Stop WebAccount service
3. Clear $env:LOCALAPPDATA\Packages\Microsft.AADPlugin...\AC\TokenBroker\
4. Start the service
5. open any office app and re-enter credentials
