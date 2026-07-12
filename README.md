# linux-log-analyzer
A Bash-based Linux log analysis tool that analyzes application logs and generates summary reports.

## Overview

Linux Log Analyzer is a Bash-based tool that analyzes Linux log files and generates a report containing important system and security information.

The project reads a log file, detects specific events, and creates an analysis report automatically.

## Features

- Count failed login attempts
- Count successful login attempts
- Detect system errors
- Extract IP addresses from failed login attempts
- Generate a detailed report file
- Add report creation date

## Project Structure

```text
linux-log-analyzer/
│
├── README.md
├── log_analyzer.sh
├── logs/
│   └── sample.log
└── reports/
    └── report.txt
