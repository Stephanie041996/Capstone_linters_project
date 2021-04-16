
# Project 3 - CSS linter Project
This is a basic CSS linter project. It checks basic syntax in the provided CSS file and returns error messages where needed.

![image](./asserts/linter.png)


## Built With
- Ruby

## Pre-request

Ruby installed.
colorize gem


## Getting Started
To get a local copy, up and running follow these simple example steps.
Clone repository from github to your local drive by following these steps:
- Open Terminal
- Change the current working directory to the location you want the cloned directory
- You can clone the repository by writing in the terminal:
  - `git clone  https://github.com/Stephanie041996/Capstone_linters_project.
  - Press Enter to create your local clone
- Run `cd` Capstone_linters_project in the terminal**
- Make sure you have ruby installed locally, run `ruby -v`**
- If no version shows install ruby by running `sudo apt install ruby`**
- Install colorize gem `gem install colorize`**


## To Run linter on your CSS
 Please place the Css file in the assets folder,then follow these steps. 
 A file is already available for testing
- Go to bin folder `cd bin` 
- To start the linter type ```ruby main.rb``` in the terminal**
 - enter the file path '../assets/style.css'


## Implemented Checks
  - Check that there is no space at end of line.
  - Check for two space inditation on inline code.
  - Check closing { are at the end of the line.
  - Check closing } do not have space or text in same line.
  - Check for use of rem and em instead of px.
  - Check for comments in code.

 ### Example Checks
### ***Comment check***
*- There should be no comments in the file.*

> **Bad code:**
```
/*Top nav starts here*/
.top-nav {
  padding: 2rem;
}
```

> **Good code:**

```
.top-nav {
  padding: 2rem;
}
```

### ***Space check***
*- There should be two spaces on inline code .*

> **Bad code:**
```
.nav {
margin: 1rem;'
}
```

> **Good code:**

```
.nav {
  margin: 1rem;
}
```

### ***PX check***
*- There should be no use of px as the unit of measurment, use REM or EM instead*

> **Bad code:**
```
footer {
  font-weight: 12px;
} 

```

> **Good code:**

```
footer {
  font-weight: 0.75rem;
}
```

### ***Start space check***
*- Space at the start of a class declaration or ending } line should be removed .*

> **Bad code:**
```
  .footer {
  padding: 1rem;
  }
```

> **Good code:**

```
.footer {
  padding: 1rem;
}
```

### ***Colon space check***
*- There should be a space after a colon.*

> **Bad code:**
```
section{
 font:1rem;
}

```

> **Good code:**

```
section {
font: 1rem;
}

```

### ***Bracket check***
*- Opening { bracket should be on seperate line from closing bracket and code it is inclosing*

> **Bad code:**
```
section {font-size: 2rem;}


```

> **Good code:**

```
section {
font-size: 2rem;
}

```

### ***Bracket check end***
*- The closing bracket is always on a seperate line on its own*

> **Bad code:**
```
p {
  font-color: pink;}
```

> **Good code:**

```
p {
  font-color: pink;
}
```

### ***Empty space check***
*- There should be no trailing spaces at the end of lines*

> **Bad code:**
```
p {
  font-color: pink;  
}
```

> **Good code:**

```
p {
  font-color: pink;
}
```

### ***Ending check check ***
*- The end of a line with a colon should have a semi-colon ;*

> **Bad code:**
```
p {
  font-color: pink
  }
```

> **Good code:**

```
p {
  font-color: pink;
}
```

## Testing
To test the code run the following commands on your terminal from the root directory:
  - gem install rspec
  - rspec

### Prerequisites
- Text editor
- GitHub
- Git
- Ruby

## Authors

👤 **Stephanie**

![Stephanie's GitHub stats](https://github-readme-stats.vercel.app/api?username=Stephanie041996&count_private=true&theme=dark&show_icons=true)

- GitHub: [@githubhandle](https://github.com/tanzila-abedin)
- Twitter: [@twitterhandle](https://twitter.com/TanzilaAbedin)
- LinkedIn: [LinkedIn](https://www.linkedin.com/in/tanzila-abedin-331440b2/)

## 📝 License

This project is [MIT](LICENSE) licensed.
