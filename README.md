# Testing instructions

- Have snyk installed using `npm install -g snyk`
- Enable the IaC variable support in Snyk Preview in your backend
- run tests with `snyk iac test .` 

See file `vpc.tf` for a flag to trigger the vulnerability.