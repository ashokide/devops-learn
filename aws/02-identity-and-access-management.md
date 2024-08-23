## Identity and Access Management (IAM)
- Global Service
- Root account is created by default

## IAM : Users and Groups
- Users - people within organization
- Groups - users are grouped

## IAM : Permissions/Policies
- Users and Groups can be assigned with JSON document called `policies`

```json
{
  "Version": "2012-10-17",
  "Statement": [
    {
      "Sid": "FirstStatement",
      "Effect": "Allow",
      "Action": ["iam:ChangePassword"],
      "Resource": "*"
    }
  ]
}
```

- Effect - Allow/Deny
- Principal - Account/User/Role
- Action - List of actions
- Resource - List of resource to which action should be applied

## IAM : Multi Factor Authentication (MFA)
Password + Security Device <br/>

MFA Device Options
- Virtual MFA Device
- Security Key
- Hardware Key

### AWS can be accessed through
- AWS Management Console (protected by password + MFA)
- AWS Command Line Interface (CLI) (protected by access keys)
  - Interact with AWS resources using commands from command line
- AWS Software Development Kit (SDK) (protected by access keys)
  - Access and manage services programmatically using JavaScript, Python, etc.,
  
## Access Keys
- generted through aws console
- ACCESS KEY ID (username)
- SECRECT ACCESS KEY (password)

## CLI Configure
- Install AWS CLI
- Type `aws configure` in Command Line
- Enter Access Key and Secret Access Key
