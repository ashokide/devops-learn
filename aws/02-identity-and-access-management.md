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
