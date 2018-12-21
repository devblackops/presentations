---?color=#222222

### Infrastructure Testing with Pester

- Brandon Olin
- [devblackops.io](https://devblackops.io)
- [@fa[twitter]@devblackops](https://twitter.com/devblackops)

---

### What is Software Testing?

![](RTPSUG_Infrastructure_Testing/assets/question_mark.png)

@ul
- An investigation conducted to determine the quality of a software product or service under test
- Provides an objective, independent view of software quality
- Verifies that the software is fit for use
@ulend

---

### So... software testing...

##### Evaluates one or more properties of interest in a piece of software or service.

##### These properties could be:

@ul
- Meets the requirements that guided its design and development
- Responds correctly to all kinds of inputs
- Performs its functions within an acceptable time
- It is sufficiently usable
- Can be run it its intended environments
- Achieves the general result its stakeholders desire
@ulend

---

### What is Infrastructure Testing?

@ul
- Does this port respond?
- Is this service running?
- Is the current state what I expect?
@ulend

---

### Why Test Infrastructure?

@ul
- To validate our **CURRENT** state matches our **EXPECTED** state
- To notify us when they differ
- To perform sanity checks before **AND** after changes
- To provide guardrails for automation
@ulend

---

### So Why Do We Test Again?

@ul
- So we can go [blue]**FAST**
- So we can be [green]**SAFE**
- So we can bail when things are [red]**UNSAFE**
@ulend

---

### To put it another way...

> "CI/CD pipelines allow you to go 200mph. Tests are your seat belts, airbags, anti-lock brakes, traction control, collision avoidance, and autonomous driving systems so you can go 200mph without killing yourself or others."<br>
- Me

---

---

### How can we do this with PowerShell?

@ul
- Pester
- Operation Validation Framework
- Assert
- PoshSpec
- PSHealthZ
- Watchmen
@ulend

### @fa[star] Thank you! @fa[star]

**Contact Info**

- Blog: [devblackops.io](htts://devblackops.io)
- Twitter: [@devblackops](https://twitter.com/devblackops)
- GitHub: [github.com/devblackops](https://github.com/devblackops)