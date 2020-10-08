Test with: `docker run -ti --rm renovate/renovate --token $GITHUB_TOKEN --dry-run true --log-level DEBUG eyalzek/renovate-test`

This will try to update tag `2.249.1-lts` -> `2.249.2`.

Forcing `docker` versioning, e.g:
```
{
  "extends": [
    "config:base"
  ],
  "packageRules": [
    {
        "packageNames": ["jenkins/jenkins"],
        "versioning": "docker"
    }
  ]
}
```

will yield the correct result, which is `2.249.2-lts`.
