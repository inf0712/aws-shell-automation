# AWS Shell Automation Projects

A collection of **Bash shell scripts for automating AWS infrastructure and administration tasks using the AWS CLI**.

The purpose of this repository is to build practical AWS automation skills by converting common AWS management tasks into reusable, menu-driven shell scripts.

---

## 📌 Projects

### 1. IAM User Management

A menu-driven Bash script for managing AWS IAM users through the AWS CLI.

**Features:**

* Create IAM users
* List IAM users
* View IAM user details
* Delete IAM users
* Input validation
* Error handling
* Confirmation before deletion

**AWS Services:**

* AWS IAM
* AWS CLI

**Example:**

```bash
./iam-user-manager.sh
```

---

### 2. IAM Group Management

A shell-based automation tool for managing IAM groups.

**Planned Features:**

* Create IAM groups
* List IAM groups
* Delete IAM groups
* Add users to groups
* Remove users from groups
* List group members

**AWS Services:**

* AWS IAM
* AWS CLI

---

### 3. IAM Policy Management

Automates common IAM policy operations.

**Planned Features:**

* Attach policies to users
* Detach policies from users
* Attach policies to groups
* Detach policies from groups
* List attached policies

**AWS Services:**

* AWS IAM
* AWS CLI

---

### 4. IAM Access Key Management

Automates IAM access-key administration.

**Planned Features:**

* Create access keys
* List access keys
* Delete access keys
* Check access-key status

**Security Note:**

Access-key secrets should never be hard-coded into scripts, committed to Git, or stored in the repository.

---

### 5. IAM MFA Management

Automation for managing multi-factor authentication configuration for IAM users.

**Planned Features:**

* List MFA devices
* Check MFA configuration
* Enable/configure MFA
* Remove MFA devices

**AWS Services:**

* AWS IAM
* AWS CLI

---

### 6. IAM Security Audit

A script for inspecting IAM configuration and identifying potentially important security settings.

**Planned Features:**

* List IAM users
* Check users without MFA
* Check access keys
* Check password/login-profile configuration
* List attached policies
* Generate a basic IAM security report

---

### 7. VPC Management

Shell scripts for automating basic Amazon VPC infrastructure.

**Planned Features:**

* Create VPC
* Create subnets
* Create Internet Gateway
* Attach Internet Gateway to VPC
* Create route tables
* Add routes
* Associate route tables with subnets
* Delete VPC resources

**AWS Services:**

* Amazon VPC
* AWS CLI

---

### 8. NAT Gateway Management

Automation for creating and managing NAT Gateway infrastructure.

**Planned Features:**

* Create Elastic IP
* Create NAT Gateway
* Configure route tables
* Add private-subnet routes
* Delete NAT Gateway resources

**AWS Services:**

* Amazon VPC
* Elastic IP
* NAT Gateway

---

## 🛠️ Technologies Used

* **Bash / Shell Scripting**
* **AWS CLI**
* **Linux**
* **Git & GitHub**
* **AWS IAM**
* **Amazon VPC**

---

## 📂 Repository Structure

```text
aws-shell-automation/
│
├── README.md
│
├── iam/
│   ├── iam-user-manager.sh
│   ├── iam-group-manager.sh
│   ├── iam-policy-manager.sh
│   ├── iam-access-key-manager.sh
│   ├── iam-mfa-manager.sh
│   └── iam-security-audit.sh
│
├── vpc/
│   ├── create-vpc.sh
│   ├── create-subnet.sh
│   ├── create-internet-gateway.sh
│   ├── create-route-table.sh
│   └── create-nat-gateway.sh
│
└── docs/
    └── notes.md
```

The structure may evolve as additional automation scripts are added.

---

## ⚙️ Requirements

Before running the scripts, install and configure the AWS CLI.

Check the installation:

```bash
aws --version
```

Verify your AWS identity:

```bash
aws sts get-caller-identity
```

The scripts require an AWS identity with sufficient permissions for the resources being managed.

---

## 🔐 Security

This repository is intended for **AWS automation and learning**.

Never commit:

```text
AWS Access Keys
AWS Secret Access Keys
Passwords
Private Keys
API Tokens
Credentials
```

Use AWS CLI credential configuration, IAM roles, or other appropriate credential mechanisms instead of hard-coding credentials.

A `.gitignore` file should be used to prevent accidental commits of sensitive files.

Example:

```gitignore
.env
*.pem
credentials
secrets/
```

---

## 🎯 Learning Objectives

Through these projects, I am practicing:

* Linux shell scripting
* Bash variables and conditions
* Loops and functions
* Menu-driven applications
* AWS CLI
* IAM administration
* AWS networking
* VPC architecture
* Error handling
* Input validation
* Infrastructure automation
* Git and GitHub
* Cloud security fundamentals

---

## 🚀 Project Progress

| Project                   | Status         |
| ------------------------- | -------------- |
| IAM User Management       | 🟡 In Progress |
| IAM Group Management      | ⚪ Planned      |
| IAM Policy Management     | ⚪ Planned      |
| IAM Access Key Management | ⚪ Planned      |
| IAM MFA Management        | ⚪ Planned      |
| IAM Security Audit        | ⚪ Planned      |
| VPC Management            | ⚪ Planned      |
| NAT Gateway Management    | ⚪ Planned      |

**Legend:**

* 🟢 Completed
* 🟡 In Progress
* ⚪ Planned

---

## 📖 Approach

The scripts are being developed incrementally.

Each automation project focuses on understanding the underlying AWS operation first and then implementing it through Bash and the AWS CLI.

The goal is not only to automate commands, but also to understand:

```text
AWS Architecture
       ↓
AWS CLI Command
       ↓
Shell Script
       ↓
Input Validation
       ↓
Error Handling
       ↓
Automation
```

---

## 📌 Disclaimer

These scripts are primarily intended for **learning, experimentation, and AWS administration practice**.

Always review AWS resources and permissions before executing deletion or modification commands in a production environment.

---

## 👤 Author

**Infant Joseph**

BTech Computer Science graduate interested in:

* Cloud Computing
* AWS
* Linux
* DevOps
* Backend Development
* Automation
* AI/ML

---

## ⭐ Future Improvements

Planned improvements include:

* Add reusable Bash functions
* Improve error handling
* Add logging
* Add command-line arguments
* Add resource tagging
* Add configuration files
* Add dry-run support where applicable
* Improve security validation
* Add automated cleanup
* Integrate scripts into CI/CD workflows
