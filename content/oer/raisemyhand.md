---
title: "RaiseMyHand: A Real-Time Student Question Aggregator"
date: 2025-12-03
summary: "Introducing RaiseMyHand, a real-time web tool for collecting and managing student questions during live classes. Built for physics and computational science education."
tags: ["education", "open source", "physics education", "computing education", "student engagement"]
images: ["/img/raisemyhand.png"]
---

![RaiseMyHand Logo](/img/raisemyhand.png)

{{< repo-meta name="raisemyhand" org="OER-Forge" language="Python" stars="1" updated="Dec 2025" >}}

[RaiseMyHand](https://github.com/oer-forge/raisemyhand) is an open-source, real-time web-based tool designed to collect, organize, and manage student questions during live classes. As the primary developer, I created RaiseMyHand to improve student engagement and make it easier for instructors to address the questions that matter most to their students.

* Demo: <https://raisemyhand.hellmo.space/>
* API Docs: <https://raisemyhand.hellmo.space/docs>
* Need an demo API Key? Request via [GitHub Issues #13](https://github.com/OER-Forge/raisemyhand/issues/13)

## What is RaiseMyHand?

RaiseMyHand streamlines classroom interaction by allowing students to submit anonymous questions and upvote questions from their peers, similar to Reddit's voting system. Questions are organized by popularity in real-time, enabling instructors to prioritize the most pressing student concerns. The platform is built with modern web technologies (FastAPI, WebSockets) to ensure instant, seamless communication between students and instructors.

> RaiseMyHand is production-ready and actively used in physics and computational science courses. The tool continues to evolve based on instructor feedback and educational best practices.

## Key Features

- **Anonymous Question Submission:** Students ask without revealing their identity, promoting psychological safety and encouraging participation.
- **Real-Time Upvoting:** Popular questions automatically rise to the top via Reddit-style voting.
- **QR Code Access:** Students can join sessions instantly by scanning a QR code displayed in class.
- **Instructor Dashboard:** Monitor, answer, and manage all questions in real-time with an intuitive interface.
- **Session Management:** Create password-protected or public sessions; end and restart as needed.
- **Export Reports:** Download session data in JSON or CSV format for record-keeping and analysis.
- **Production-Ready Security:** JWT authentication, CSRF protection, rate limiting, and bcrypt password hashing.
- **Docker Support:** Deploy easily on any server with Docker and Docker Compose.

## Why RaiseMyHand?

Traditional hand-raising in the classroom leaves many student questions unanswered and can create barriers for students who are hesitant to speak up. RaiseMyHand removes these barriers by making it easy for students to contribute anonymously and for instructors to focus on the questions that resonate most with the class. By empowering students to collectively prioritize questions, RaiseMyHand fosters a more inclusive and responsive learning environment.

## Get Involved

- **Source Code:** Explore, contribute to, or fork RaiseMyHand on [GitHub](https://github.com/oer-forge/raisemyhand).
- **Documentation:** Complete setup guides, API documentation, and deployment instructions are available in the repository.
- **Report Issues:** If you encounter any bugs or have feature requests, please submit them via [GitHub Issues](https://github.com/oer-forge/raisemyhand/issues).
- **Contribute:** Contributions are welcome! Whether it's code, documentation, or translations, your help makes RaiseMyHand better for educators everywhere.