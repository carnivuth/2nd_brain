---
id: ALARMS
aliases: []
tags: []
index: 43
next: pages/mobile_systems/android/sockets.md
previous: pages/mobile_systems/android/job_scheduler.md
---

# Alarms

Alarms are task that can be scheduled at a given time, they fires intents, it can be recurring and does not need the application to be active, several benefits:

- Device does not have to be awake
- Does not use resources until it goes off
- Use with [broadcast receiver](pages/mobile_systems/android/activity.md#broadcast%20receiver) to start services and other operations

## Alarm types

|                       | ELAPSED REAL TIME (ERT) | REAL TIME CLOCK (RTC) |
| --------------------- | ----------------------- | --------------------- |
| Do not wake up device | ELAPSED_REALTIME        | RTC                   |
| wake up device        | ELAPSED_REALTIME_WAKEUP | RTC_WAKEUP            |

## Alarms best practices

Real time clock alarms are not suitable for client server interaction cause they can cause burst of requests

minimize the time an alarm wake up the device and use inexact alarms that can be grouped together  and fired at the same time by the android runtime

[<](pages/mobile_systems/android/job_scheduler.md)[>](pages/mobile_systems/android/sockets.md)
