---?color=#222222

### Infrastructure Testing with Pester

@snap[south-west]
@ul[](false)
- Brandon Olin
- [devblackops.io](https://devblackops.io)
- [@fa[twitter]@devblackops](https://twitter.com/devblackops)
@ulend
@snapend

---?color=#222222

@snap[north-west]
### What is software testing?
@snapend

@snap[west span-30]
@img[](RTPSUG_Infrastructure_Testing/assets/question_mark.png)
@snapend

@snap[east span-65]
@ul[split-screen-list text-09]
- An investigation conducted to determine the quality of a software product or service under test
- Provides an objective, independent view of software quality
- Verifies that the software is fit for use
@ulend
@snapend

---?color=#222222

### So software testing...

Verifies one or more of the following:

@ul
- Requirements that guided its design and development
- Responds correctly to all kinds of inputs
- Performs its functions within an acceptable time
- It is sufficiently usable (fit for purpose)
- Can be run it its intended environment(s)
- Achieves the result its stakeholders desire
@ulend

---?color=#222222

### What is infrastructure testing?

Validation of the operation of a system

@ul
- Does port 443 respond?
- Is service 'xyz' running?
- Is the current state what I expect?
- Are these infrastructure properties correct?
@ulend

---?color=#222222

### Why test infrastructure?

@ul
- To validate our @css[text-blue](**CURRENT**) state matches our @css[text-green](**EXPECTED**) state
- To notify us when they differ
- To perform sanity checks before @css[text-orange](**AND**) after changes
- To provide guardrails for automation
@ulend

---?color=#222222

### Examples

---?color=#222222

### @css[text-blue](Blue)/@css[text-green](green) deployments

@img[](RTPSUG_Infrastructure_Testing/assets/blue_green.jpg)

---?color=#222222

### Validating server settings

@img[](RTPSUG_Infrastructure_Testing/assets/map_room.jpg)

---?color=#222222

### Verifying state before proceeding

@img[](RTPSUG_Infrastructure_Testing/assets/bridge.jpg)

---?color=#222222

### So why do we test again?

@ul
- So we can go @css[text-blue](**FAST**)
- So we can be @css[text-green](**SAFE**)
- So we can bail when things are @css[text-orange](**UNSAFE**)
@ulend

---?color=#222222

### To put it another way...

@quote[CI/CD pipelines allow you to go 200mph. Tests are your seat belts, airbags, anti-lock brakes, traction control, collision avoidance, and autonomous driving systems so you can go 200mph without killing yourself or others.](Me)

---?color=#222222

### Can we do this with PowerShell?

---?color=#222222

### Yes! That's why I'm here!

---?color=#222222

### Some PowerShell testing tools

@ul
- Pester
- Operation Validation Framework
- Assert
- PoshSpec
- PSHealthZ
- Watchmen
- Others? (Let me know)
@ulend

---?color=#222222&code=RTPSUG_Infrastructure_Testing/scripts/Get-AnswerToUniverse.ps1&lang=powershell&title=Function to test

---?color=#222222&code=RTPSUG_Infrastructure_Testing/scripts/Get-AnswerToUniverse.tests.ps1&lang=powershell&title=Pester test

@[1](Load function to test)
@[3-10]('Describe' block groups 'n' number of Context or It blocks)
@[4-9]('Context' block groups 'n' number of It blocks)
@[5-8]('It' block contains your assertion)
@[7](Performs the assertion using 'Should')

---?color=#222222

### Pester example

![](RTPSUG_Infrastructure_Testing/assets/pester_example.png)

---?color=#222222

@snap[north-west]
#### Operation Validation Framework
@snapend

@snap[west span-30]

@css[text-08](A framework for executing Pester tests contained in PowerShell modules)

##### Two simple commands:
@ul[](false)
- Get-OperationValidation
- Invoke-OperationValidation
@snapend

@snap[east span-65]
@img[](RTPSUG_Infrastructure_Testing/assets/ovf_folder_structure.png)
@snapend

---?color=#222222

---?color=#222222

---?color=#222222

### @fa[star] Thank you! @fa[star]

<br><br>**Contact Info**

@snap[south-west]
@fa[blog] [devblackops.io](https://devblackops.io)<br>
@fa[twitter] [@devblackops](https://twitter.com/devblackops)<br>
@fa[github] [github.com/devblackops](https://github.com/devblackops)
@snapend