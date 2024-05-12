# .NET - Daily basis tips and tricks

## Generate test coverage

You can use the [ReportGenerator](https://reportgenerator.io/) tool for
generating HTML coverage reports, badges and more.

Here is an example on how to generate a HTML code coverage report:

```bash
# install dotnet reportgenerator tool
dotnet tool install -g dotnet-reportgenerator-globaltool

# remove previous report and generate new
rm -rf ./TestResults && dotnet test --collect:"XPlat Code Coverage" -r ./TestResults -v q

# generate coverage HTML report
reportgenerator \
-reports:"./TestResults/**/coverage.cobertura.xml" \
-targetdir:coveragereport/" \
-reporttypes:Html_Dark
```
