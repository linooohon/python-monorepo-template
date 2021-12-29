# Python Monorepo Demo
This is a sample to implement a multi-project structure in python by using [poetry](https://medium.com/analytics-vidhya/poetry-finally-an-all-in-one-tool-to-manage-python-packages-3c4d2538e828) to manage dependencies and packaging of python code. Also includes make files to handle building and deployment of applications using docker images.

## Project Structure
```
monorepo-demo
├── libs
│   ├── lib-one
│   │   ├── Makefile
│   │   └── pyproject.toml
│   └── logger
│       ├── Makefile
│       └── pyproject.toml
├── stack
│   ├── project-one
│   │   ├── Dockerfile
│   │   ├── Makefile
│   │   └── pyproject.toml
│   └── project-two
│       ├── Dockerfile
│       ├── Makefile
│       └── pyproject.toml
├── tools
│   ├── DockerImages.mk
│   └── PythonPackages.mk
└── README.md
```

Projects are either Libs (./libs) or applications (./stack).

### Applications
Application specific code goes here. Each application has its own dependencies.

### Libs
Shared code goes here. Each lib has its own dependencies.  

## Setup
- Install python3 `apt install python3.9 -y`
- Install poetry [instructions](https://python-poetry.org/docs/#installation)

## How To
### Build a Project (Lib/Application)
Build
```bash
cd ../<libs||stack>/<project>
make build
``` 
Clean
```bash
cd ../<libs||stack>/<project>
make clean
``` 
Rebuild
```bash
cd ../<libs||stack>/<project>
make clean && make build
``` 

### Setup an Existing Project
```bash
cd ../<libs||stack>/<project>
poetry install
``` 

### Create a New Project
```bash
cd ../<libs||stack>
poetry new <project>
```

### Add a Package Dependency 
```bash
cd ../<libs||stack>/<project>
poetry add <package>
```

### Add a Library Dependency 
To a Library
```bash
cd ../libs/<project>
poetry add ../<lib project> -D
```
To an Application
```bash
cd ../stack/<project>
poetry add ./../../libs/<lib project> -D
```
