# Homework 2 Encapsulation in Object-Oriented Programming

## Part A Conceptual Questions

###  Definition
Encapsulation is the practice of bundling data (variables) and methods (functions) that operate on that data into a single unit — a class — while restricting direct access to some of the object's components.  
Example: By keeping a `balance` variable private in a `BankAccount` class, you prevent external code from setting it to a negative value, which protects the integrity of the data.

---

###  Visibility Modifiers

 Modifier   ,Benefit                                 , Drawback                                        ,

| publi   | Easy access for external interaction         | Less control over how data is used or changed   |
| private | Strong data protection; enforces encapsulation | Less flexible; testing and subclassing require methods |
| protected| Allows controlled access in subclasses        | May lead to tighter coupling between base and derived classes |

Scenario for `protected`:
a game, a base Character class might have a protected health variable, so derived classes likeWarrior can adjust health during combat without making it public to everything else.

---

#  Impact on Maintenance
Encapsulation helps isolate bugs by ensuring changes to internal class details don’t ripple across the entire codebase. Debugging becomes easier.

**Example: If a User class exposes a public password string, another part of the program might accidentally overwrite it without validation — introducing security bugs and making the issue harder to trace.

---

##  Real-World Analogy
TV remote**:
The public interface is the buttons: volume, channel, power.
The private implementation is the internal circuitry and battery.

Hiding the internal details prevents damage and confusion, while still allowing people to use the device easily through its interface.


## Part B: Small-Class Design (Minimal Coding)


```cpp
#include <iostream>
#include <string>

using namespace std;

class BankAccount {
private:
    string accountNumber;
    double balance;

public:
    BankAccount(string accNum, double initialBalance) {
        accountNumber = accNum;
        balance = (initialBalance >= 0) ? initialBalance : 0.0;
    }

    void deposit(double amount) {
        if (amount > 0) balance += amount;
    }

    void withdraw(double amount) {
        if (amount > 0 && amount <= balance) balance -= amount;
    }
};
