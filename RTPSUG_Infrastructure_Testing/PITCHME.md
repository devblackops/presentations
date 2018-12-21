---?color=#222222

### Infrastructure Testing with Pester

- Brandon Olin
- [devblackops.io](https://devblackops.io)
- [@fa[twitter]@devblackops](https://twitter.com/devblackops)

---?color=#222222

@snap[north-west]
### What is Software Testing?
@snapend

@snap[west span-30]
@img[](RTPSUG_Infrastructure_Testing/assets/question_mark.png)
@snapend

@snap[east span-65]
@ul[split-screen-list text-07]
- An investigation conducted to determine the quality of a software product or service under test
- Provides an objective, independent view of software quality
- Verifies that the software is fit for use
@ulend
@snapend

---?color=#222222

### So... software testing...

@ul
- Evaluates one or more properties of interest in a piece of software or service
@ulend

### <br>

##### These properties could be:

@ul
- Meets the requirements that guided its design and development
- Responds correctly to all kinds of inputs
- Performs its functions within an acceptable time
- It is sufficiently usable
- Can be run it its intended environments
- Achieves the result its stakeholders desire
@ulend

---?color=#222222

### What is Infrastructure Testing?

@ul
- Does this port respond?
- Is this service running?
- Is the current state what I expect?
@ulend

---?color=#222222

### Why Test Infrastructure?

@ul
- To validate our **CURRENT** state matches our **EXPECTED** state
- To notify us when they differ
- To perform sanity checks before **AND** after changes
- To provide guardrails for automation
@ulend

---?color=#222222

### So Why Do We Test Again?

@ul
- So we can go [blue]**FAST**
- So we can be [green]**SAFE**
- So we can bail when things are [red]**UNSAFE**
@ulend

---?color=#222222

### To put it another way...

@quote[CI/CD pipelines allow you to go 200mph. Tests are your seat belts, airbags, anti-lock brakes, traction control, collision avoidance, and autonomous driving systems so you can go 200mph without killing yourself or others.](Me)

---?color=#222222

### Can we do this with PowerShell?

---?color=#222222

### Yes! That's why I'm up here!

---?color=#222222

### PowerShell Testing Tools

@ul
- Pester
- Operation Validation Framework
- Assert
- PoshSpec
- PSHealthZ
- Watchmen
- Others? (Let me know)
@ulend

---?color=#222222

### @fa[star] Thank you! @fa[star]

**Contact Info**

- Blog: [devblackops.io](htts://devblackops.io)
- Twitter: [@devblackops](https://twitter.com/devblackops)
- GitHub: [github.com/devblackops](https://github.com/devblackops)