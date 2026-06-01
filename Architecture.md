# Linux Architecture

![Archi_img](image.png)

## 1. Hardware Layer

Comprises physical components like the CPU,memory(RAM),Storage devices,Network Interface and I/O devices.

## 2. Kernel Layer

It is Heart of OS. 
Ensures smooth communication between software and hardware.
Controls how processess are being executed,scheduled and isolated to maintain system stability and security.

### Responsibility:-
    1 Memory Management:- Allocates and manages system memory efficiently.
    2 Process Management:- Schedule process and control execution using queues.
    3 Resource Allocation:- Distributes CPU ,memory and I/O recources among process.
    4 Device Management:- Controls hardware devices through device drivers.
    5 Application Interaction:-Scts as a bridges between application and hardware.
    6 Security:-Enforces access control snd system level security mechanism.

### Types of Kernal
    1 Monolithic Kernal
    2 Micro Kernal
    3 ExoKernal
    4 Hybrid Kernal

### Linux Kernel
    Process Scheduler
    Memory Manager
    Virtual File System (VFS)
    Device Drivers
    Network Stack
    Security Module

## 3. Shell

Shell is the interface between User and the Kernal.It takes cmds from user and interprets them.

### Types of shell
    1 Bourne Shell(sh)
    2 C Shell (cds)
    3 Korn Shell (ksh)[sh+csh Enterprise]
    4 Bash(Bourne again shell)
    5 Z Shell(zsh)
    6 fish(friendly interective Shell)
Default use "Bash Shell"

## 4. Application

The top layer contains programs that users run.

like Chrome,Mozilla fitefox
    Libraoffice ,VLC Media
    Nginx ,Apache ,Mysql