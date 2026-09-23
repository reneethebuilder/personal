<!DOCTYPE html>
<html lang="en">
<head>
  <meta charset="UTF-8" />
  <meta name="viewport" content="width=device-width, initial-scale=1.0" />

  <title>Harinee Soundarapandian — Product × AI × Strategy</title>

  <meta
    name="description"
    content="Harinee Soundarapandian is a product leader working across AI, product strategy, customer experience, growth, experimentation, data products, and 0→1 product development."
  />

  <meta property="og:title" content="Harinee Soundarapandian — Product × AI × Strategy" />
  <meta
    property="og:description"
    content="Turning ambiguous human problems into thoughtful products and measurable outcomes."
  />
  <meta property="og:type" content="website" />

  <style>
    /* ==========================================================
       HARINEE SOUNDARAPANDIAN — PRODUCT PORTFOLIO

       DESIGN INTENT

       - Editorial / experimental
       - Human-centered
       - Aucadian-inspired visual rhythm
       - Large typography
       - Minimal résumé content
       - Portfolio-first
       - Product thinking over employer chronology
       - User empathy visible throughout

       Single-file HTML.
       No external dependencies.
    ========================================================== */

    :root {
      --black: #090909;
      --ink: #151515;
      --white: #ffffff;

      --paper: #f2f1ed;
      --paper-soft: #e9e8e3;

      --muted: #777772;
      --soft-text: #aaa9a4;

      --line: rgba(0,0,0,.15);
      --light-line: rgba(255,255,255,.16);

      --acid: #d9ff43;
      --blue: #7ca8ff;
      --violet: #b8a6ff;
      --peach: #ffb18a;

      --max: 1440px;

      --sans:
        -apple-system,
        BlinkMacSystemFont,
        "SF Pro Display",
        "SF Pro Text",
        "Helvetica Neue",
        Arial,
        sans-serif;

      --mono:
        ui-monospace,
        SFMono-Regular,
        "SF Mono",
        Menlo,
        Monaco,
        Consolas,
        monospace;

      --ease: cubic-bezier(.16,1,.3,1);
    }

    * {
      box-sizing: border-box;
    }

    html {
      scroll-behavior: smooth;
      scroll-padding-top: 86px;
    }

    body {
      margin: 0;

      color: var(--ink);
      background: var(--paper);

      font-family: var(--sans);

      -webkit-font-smoothing: antialiased;
      text-rendering: optimizeLegibility;

      overflow-x: hidden;
    }

    body.menu-open {
      overflow: hidden;
    }

    a {
      color: inherit;
      text-decoration: none;
    }

    button {
      color: inherit;
      font: inherit;
    }

    ::selection {
      color: var(--black);
      background: var(--acid);
    }

    :focus-visible {
      outline: 3px solid var(--acid);
      outline-offset: 4px;
    }

    .shell {
      width: min(calc(100% - 42px), var(--max));
      margin-inline: auto;
    }

    .label {
      margin: 0;

      font-family: var(--mono);
      font-size: 10px;
      font-weight: 600;
      line-height: 1.4;
      letter-spacing: .08em;
      text-transform: uppercase;
    }

    .reveal {
      opacity: 0;
      transform: translateY(26px);

      transition:
        opacity .85s var(--ease),
        transform .85s var(--ease);
    }

    .reveal.visible {
      opacity: 1;
      transform: none;
    }


    /* ==========================================================
       LOADER
    ========================================================== */

    .loader {
      position: fixed;
      inset: 0;
      z-index: 9999;

      display: grid;
      place-items: center;

      color: white;
      background: var(--black);

      transition:
        opacity .6s var(--ease),
        visibility .6s;
    }

    .loader.hidden {
      opacity: 0;
      visibility: hidden;
    }

    .loader-inner {
      width: min(calc(100% - 48px), 580px);
    }

    .loader-meta {
      display: flex;
      justify-content: space-between;

      margin-bottom: 14px;

      font-family: var(--mono);
      font-size: 10px;
      letter-spacing: .07em;
      text-transform: uppercase;
    }

    .loader-track {
      height: 2px;
      overflow: hidden;

      background: rgba(255,255,255,.16);
    }

    .loader-bar {
      width: 0;
      height: 100%;

      background: var(--acid);
    }


    /* ==========================================================
       NAV
    ========================================================== */

    .topbar {
      position: fixed;
      top: 0;
      left: 0;
      z-index: 1000;

      width: 100%;

      color: white;

      mix-blend-mode: difference;

      pointer-events: none;
    }

    .nav {
      width: min(calc(100% - 42px), var(--max));
      height: 78px;

      margin-inline: auto;

      display: grid;
      grid-template-columns: 1fr auto 1fr;
      align-items: center;

      pointer-events: auto;
    }

    .nav-name {
      justify-self: start;

      font-size: 14px;
      font-weight: 700;
      letter-spacing: -.025em;
    }

    .nav-links {
      display: flex;
      gap: 5px;
    }

    .nav-links a {
      padding: 7px 10px;

      border-radius: 999px;

      font-family: var(--mono);
      font-size: 10px;
      letter-spacing: .05em;
      text-transform: uppercase;

      transition: background .2s ease;
    }

    .nav-links a:hover {
      background: rgba(255,255,255,.15);
    }

    .nav-status {
      justify-self: end;

      display: flex;
      align-items: center;
      gap: 8px;

      font-family: var(--mono);
      font-size: 10px;
      letter-spacing: .05em;
      text-transform: uppercase;
    }

    .status-dot {
      width: 7px;
      height: 7px;

      border-radius: 50%;

      background: var(--acid);

      box-shadow:
        0 0 0 4px rgba(217,255,67,.12);
    }

    .menu-button {
      display: none;

      justify-self: end;

      padding: 8px;

      border: 0;
      background: transparent;

      color: white;

      font-family: var(--mono);
      font-size: 10px;
      text-transform: uppercase;

      cursor: pointer;
    }


    /* ==========================================================
       HERO
    ========================================================== */

    .hero {
      position: relative;

      min-height: 100svh;

      display: flex;
      align-items: flex-end;

      padding: 130px 0 34px;

      overflow: hidden;

      color: white;
      background: var(--black);
    }

    .hero::before {
      content: "";

      position: absolute;

      top: 0;
      left: 49%;

      width: 1px;
      height: 100%;

      background: rgba(255,255,255,.07);
    }

    .hero::after {
      content: "";

      position: absolute;

      top: 53%;
      left: 0;

      width: 100%;
      height: 1px;

      background: rgba(255,255,255,.06);
    }

    .hero-content {
      position: relative;
      z-index: 2;

      width: 100%;
    }

    .hero-meta {
      display: grid;
      grid-template-columns: 1fr 1fr 1fr;

      gap: 30px;

      align-items: end;

      margin-bottom: 38px;

      color: rgba(255,255,255,.5);

      font-family: var(--mono);
      font-size: 10px;
      line-height: 1.5;
      letter-spacing: .05em;
      text-transform: uppercase;
    }

    .hero-meta div:nth-child(2) {
      text-align: center;
    }

    .hero-meta div:last-child {
      text-align: right;
    }

    .hero h1 {
      max-width: 1400px;

      margin: 0;

      font-size: clamp(76px, 12.2vw, 185px);
      font-weight: 600;
      line-height: .75;
      letter-spacing: -.078em;
    }

    .hero-line {
      display: block;
    }

    .hero-line-two {
      margin-left: 13%;
    }

    .outline {
      color: transparent;

      -webkit-text-stroke:
        1.5px rgba(255,255,255,.58);
    }

    .accent {
      color: var(--acid);
    }

    .hero-bottom {
      display: grid;
      grid-template-columns: .78fr 1.22fr;

      gap: 9%;

      align-items: end;

      margin-top: 72px;
    }

    .identity {
      display: flex;
      align-items: center;
      gap: 16px;
    }

    .identity-mark {
      width: 68px;
      height: 68px;

      display: grid;
      place-items: center;

      flex-shrink: 0;

      border-radius: 50%;

      color: var(--black);
      background: var(--acid);

      font-size: 19px;
      font-weight: 700;
      letter-spacing: -.05em;
    }

    .identity strong {
      display: block;

      font-size: 17px;
      letter-spacing: -.025em;
    }

    .identity span {
      display: block;

      margin-top: 5px;

      color: rgba(255,255,255,.46);

      font-family: var(--mono);
      font-size: 9px;
      letter-spacing: .05em;
      text-transform: uppercase;
    }

    .hero-description {
      max-width: 740px;

      margin: 0;

      color: rgba(255,255,255,.9);

      font-size: clamp(22px,2.6vw,36px);
      line-height: 1.1;
      letter-spacing: -.045em;
    }

    .hero-description span {
      color: rgba(255,255,255,.4);
    }

    .scroll-note {
      position: absolute;

      top: 50%;
      right: 24px;
      z-index: 3;

      transform: translateY(-50%);

      writing-mode: vertical-rl;

      color: rgba(255,255,255,.35);

      font-family: var(--mono);
      font-size: 9px;
      letter-spacing: .1em;
      text-transform: uppercase;
    }


    /* ==========================================================
       MARQUEE
    ========================================================== */

    .marquee {
      overflow: hidden;

      color: var(--black);
      background: var(--acid);

      border-bottom: 1px solid var(--line);
    }

    .marquee-track {
      display: flex;

      width: max-content;

      animation:
        marquee 24s linear infinite;
    }

    .marquee-content {
      display: flex;
      white-space: nowrap;

      padding: 15px 0;

      font-size: 13px;
      font-weight: 700;
      letter-spacing: -.01em;
      text-transform: uppercase;
    }

    .marquee-content span {
      display: inline-flex;
      align-items: center;
    }

    .marquee-content span::after {
      content: "✳";

      margin: 0 28px;

      font-size: 11px;
    }

    @keyframes marquee {
      to {
        transform: translateX(-50%);
      }
    }


    /* ==========================================================
       EMPATHY / ABOUT
    ========================================================== */

    .empathy {
      padding: 165px 0 175px;
    }

    .empathy-head {
      display: grid;
      grid-template-columns: 1fr 3fr;

      gap: 55px;
    }

    .empathy-statement {
      max-width: 1090px;

      margin: 0;

      font-size: clamp(43px,6.1vw,91px);
      font-weight: 570;
      line-height: .97;
      letter-spacing: -.064em;
    }

    .empathy-statement span {
      color: var(--soft-text);
    }

    .empathy-bottom {
      display: grid;
      grid-template-columns: 1fr 1fr;

      gap: 9%;

      margin-top: 125px;
      padding-top: 27px;

      border-top: 1px solid var(--line);
    }

    .empathy-copy {
      max-width: 600px;

      font-size: 18px;
      line-height: 1.55;
      letter-spacing: -.02em;
    }

    .empathy-copy p {
      margin: 0 0 20px;
    }

    .empathy-principles {
      display: grid;
      grid-template-columns: 1fr 1fr;

      gap: 28px 22px;
    }

    .principle .label {
      color: var(--muted);
    }

    .principle strong {
      display: block;

      margin-top: 10px;

      font-size: 18px;
      line-height: 1.2;
      letter-spacing: -.025em;
    }


    /* ==========================================================
       INDUSTRIES
    ========================================================== */

    .industries {
      padding: 45px 0 0;

      color: white;
      background: var(--black);
    }

    .industries-header {
      display: flex;
      justify-content: space-between;
      align-items: baseline;

      padding-bottom: 25px;

      border-bottom: 1px solid var(--light-line);
    }

    .industries-header span:last-child {
      color: rgba(255,255,255,.38);
    }

    .industries-title {
      max-width: 1200px;

      margin: 82px 0 88px;

      font-size: clamp(58px,8.8vw,132px);
      font-weight: 600;
      line-height: .82;
      letter-spacing: -.072em;
    }

    .industries-title span {
      color: rgba(255,255,255,.28);
    }

    .industry-grid {
      display: grid;
      grid-template-columns: repeat(5,1fr);

      border-top: 1px solid var(--light-line);
    }

    .industry {
      min-height: 260px;

      padding: 27px 24px 28px;

      display: flex;
      flex-direction: column;
      justify-content: space-between;

      border-right: 1px solid var(--light-line);
    }

    .industry:first-child {
      padding-left: 0;
    }

    .industry:last-child {
      border-right: 0;
    }

    .industry-number {
      color: rgba(255,255,255,.3);

      font-family: var(--mono);
      font-size: 9px;
    }

    .industry h3 {
      margin: auto 0 18px;

      font-size: clamp(27px,2.8vw,42px);
      font-weight: 580;
      line-height: .94;
      letter-spacing: -.05em;
    }

    .industry p {
      max-width: 185px;

      margin: 0;

      color: rgba(255,255,255,.46);

      font-size: 12px;
      line-height: 1.45;
    }


    /* ==========================================================
       PORTFOLIO
    ========================================================== */

    .portfolio {
      padding: 175px 0;
    }

    .portfolio-head {
      display: grid;
      grid-template-columns: 1fr 3fr;

      gap: 50px;

      margin-bottom: 65px;
    }

    .portfolio-head h2 {
      max-width: 1120px;

      margin: 0;

      font-size: clamp(65px,9.8vw,145px);
      font-weight: 600;
      line-height: .8;
      letter-spacing: -.073em;
    }

    .portfolio-head h2 span {
      color: var(--soft-text);
    }

    .portfolio-philosophy {
      display: grid;
      grid-template-columns: 1fr 1fr;

      gap: 9%;

      margin-bottom: 75px;
      padding-top: 26px;

      border-top: 1px solid var(--line);
    }

    .portfolio-philosophy p {
      max-width: 575px;

      margin: 0;

      font-size: 17px;
      line-height: 1.55;
    }

    .portfolio-philosophy p:last-child {
      color: var(--muted);
    }


    /* ==========================================================
       PROJECT
    ========================================================== */

    .project {
      margin-top: 40px;

      overflow: hidden;

      border: 1px solid var(--line);
    }

    .project-hero {
      min-height: 660px;

      display: grid;
      grid-template-columns: 1fr 1fr;
    }

    .project-copy {
      padding: clamp(36px,5.4vw,78px);

      display: flex;
      flex-direction: column;
    }

    .project-meta {
      display: flex;
      justify-content: space-between;

      color: var(--muted);

      font-family: var(--mono);
      font-size: 9px;
      line-height: 1.4;
      letter-spacing: .05em;
      text-transform: uppercase;
    }

    .project-title {
      max-width: 630px;

      margin: auto 0 0;

      font-size: clamp(50px,6vw,87px);
      font-weight: 590;
      line-height: .88;
      letter-spacing: -.065em;
    }

    .project-title span {
      color: var(--soft-text);
    }

    .project-summary {
      max-width: 575px;

      margin: 32px 0 0;

      color: #535350;

      font-size: 18px;
      line-height: 1.52;
      letter-spacing: -.02em;
    }

    .project-visual {
      position: relative;

      min-height: 660px;

      overflow: hidden;
    }


    /* ==========================================================
       REDDIT PRO VISUAL
    ========================================================== */

    .reddit-visual {
      padding: 35px;

      color: white;
      background:
        radial-gradient(
          circle at 80% 5%,
          #37395a,
          transparent 38%
        ),
        #0d0e12;
    }

    .visual-top {
      display: flex;
      justify-content: space-between;

      position: relative;
      z-index: 3;

      color: rgba(255,255,255,.47);

      font-family: var(--mono);
      font-size: 9px;
      letter-spacing: .05em;
      text-transform: uppercase;
    }

    .reddit-flow {
      position: absolute;

      inset:
        105px
        36px
        40px;

      display: flex;
      align-items: center;
      justify-content: center;
    }

    .attribution-path {
      position: relative;

      width: 100%;
      max-width: 590px;
    }

    .flow-line {
      position: absolute;

      top: 33px;
      left: 8%;
      right: 8%;

      height: 1px;

      background:
        linear-gradient(
          90deg,
          rgba(255,255,255,.18),
          var(--acid),
          rgba(255,255,255,.18)
        );
    }

    .flow-nodes {
      position: relative;

      display: grid;
      grid-template-columns: repeat(4,1fr);

      gap: 18px;
    }

    .flow-node {
      text-align: center;
    }

    .flow-dot {
      width: 66px;
      height: 66px;

      margin-inline: auto;

      position: relative;

      display: grid;
      place-items: center;

      border: 1px solid rgba(255,255,255,.18);
      border-radius: 50%;

      background: #17181d;
    }

    .flow-dot::after {
      content: "";

      width: 11px;
      height: 11px;

      border-radius: 50%;

      background: var(--acid);
    }

    .flow-node:nth-child(2) .flow-dot::after {
      background: var(--blue);
    }

    .flow-node:nth-child(3) .flow-dot::after {
      background: var(--violet);
    }

    .flow-node:nth-child(4) .flow-dot::after {
      background: var(--acid);

      box-shadow:
        0 0 30px rgba(217,255,67,.35);
    }

    .flow-node span {
      display: block;

      margin-top: 13px;

      color: rgba(255,255,255,.56);

      font-family: var(--mono);
      font-size: 8px;
      line-height: 1.4;
      letter-spacing: .04em;
      text-transform: uppercase;
    }

    .attribution-insight {
      margin: 70px auto 0;

      max-width: 430px;

      padding: 20px;

      border: 1px solid rgba(255,255,255,.13);

      background: rgba(255,255,255,.05);

      backdrop-filter: blur(12px);
    }

    .insight-label {
      color: rgba(255,255,255,.4);

      font-family: var(--mono);
      font-size: 8px;
      letter-spacing: .05em;
      text-transform: uppercase;
    }

    .attribution-insight strong {
      display: block;

      margin-top: 10px;

      font-size: 25px;
      font-weight: 580;
      line-height: 1.04;
      letter-spacing: -.04em;
    }


    /* ==========================================================
       FLOWW VISUAL
    ========================================================== */

    .floww-visual {
      padding: 34px;

      background: #d9ff43;
      color: var(--black);
    }

    .floww-map {
      position: absolute;

      inset:
        98px
        35px
        35px;

      display: flex;
      flex-direction: column;
    }

    .journey-header {
      display: flex;
      justify-content: space-between;

      font-family: var(--mono);
      font-size: 8px;
      letter-spacing: .05em;
      text-transform: uppercase;
    }

    .journey-track {
      flex: 1;

      display: grid;
      grid-template-columns: repeat(6,1fr);

      margin-top: 45px;

      border-top: 1px solid rgba(0,0,0,.28);
    }

    .journey-step {
      position: relative;

      padding: 20px 11px;

      border-right: 1px solid rgba(0,0,0,.18);
    }

    .journey-step:last-child {
      border-right: 0;
    }

    .journey-step::before {
      content: "";

      position: absolute;

      top: -5px;
      left: 10px;

      width: 9px;
      height: 9px;

      border-radius: 50%;

      background: var(--black);
    }

    .journey-step small {
      display: block;

      color: rgba(0,0,0,.55);

      font-family: var(--mono);
      font-size: 7px;
      line-height: 1.4;
      text-transform: uppercase;
    }

    .journey-step strong {
      display: block;

      margin-top: 13px;

      font-size: 15px;
      line-height: 1.08;
      letter-spacing: -.025em;
    }

    .health-score {
      margin-top: auto;

      display: grid;
      grid-template-columns: 100px 1fr;

      gap: 20px;

      align-items: center;

      padding-top: 22px;

      border-top: 1px solid rgba(0,0,0,.28);
    }

    .health-circle {
      width: 82px;
      height: 82px;

      display: grid;
      place-items: center;

      border: 1px solid rgba(0,0,0,.35);
      border-radius: 50%;

      font-size: 24px;
      font-weight: 650;
      letter-spacing: -.05em;
    }

    .health-copy span {
      display: block;

      font-family: var(--mono);
      font-size: 8px;
      text-transform: uppercase;
    }

    .health-copy strong {
      display: block;

      max-width: 340px;

      margin-top: 8px;

      font-size: 21px;
      line-height: 1.04;
      letter-spacing: -.035em;
    }


    /* ==========================================================
       CASE STUDY SECTIONS
    ========================================================== */

    .case-section {
      display: grid;
      grid-template-columns: 1fr 3fr;

      gap: 50px;

      padding:
        70px
        clamp(30px,5vw,72px);

      border-top: 1px solid var(--line);
    }

    .case-content {
      max-width: 990px;
    }

    .case-content h3 {
      max-width: 900px;

      margin: 0;

      font-size: clamp(36px,4vw,58px);
      font-weight: 580;
      line-height: 1;
      letter-spacing: -.052em;
    }

    .case-content > p {
      max-width: 740px;

      margin: 23px 0 0;

      color: #565651;

      font-size: 17px;
      line-height: 1.6;
    }

    .quote {
      margin-top: 50px;

      max-width: 820px;

      font-size: clamp(29px,3vw,44px);
      line-height: 1.12;
      letter-spacing: -.04em;
    }

    .quote span {
      color: var(--soft-text);
    }

    .three-column {
      display: grid;
      grid-template-columns: repeat(3,1fr);

      gap: 14px;

      margin-top: 48px;
    }

    .insight-card {
      min-height: 205px;

      padding: 22px;

      display: flex;
      flex-direction: column;
      justify-content: space-between;

      border: 1px solid var(--line);
    }

    .insight-card .label {
      color: var(--muted);
    }

    .insight-card strong {
      max-width: 250px;

      font-size: 21px;
      line-height: 1.1;
      letter-spacing: -.035em;
    }

    .decision-list {
      margin-top: 43px;

      border-top: 1px solid var(--line);
    }

    .decision-row {
      display: grid;
      grid-template-columns: 35px 1fr 1.15fr;

      gap: 20px;

      padding: 18px 0;

      border-bottom: 1px solid var(--line);
    }

    .decision-number {
      color: var(--muted);

      font-family: var(--mono);
      font-size: 9px;
    }

    .decision-name {
      font-size: 17px;
      font-weight: 600;
      letter-spacing: -.025em;
    }

    .decision-copy {
      color: #62625e;

      font-size: 14px;
      line-height: 1.55;
    }


    /* ==========================================================
       PRODUCT PROCESS
    ========================================================== */

    .process {
      padding: 165px 0;

      color: white;
      background: var(--black);
    }

    .process-head {
      display: grid;
      grid-template-columns: 1fr 3fr;

      gap: 50px;
    }

    .process-title {
      max-width: 1150px;

      margin: 0;

      font-size: clamp(60px,8.4vw,125px);
      font-weight: 600;
      line-height: .83;
      letter-spacing: -.071em;
    }

    .process-title span {
      color: rgba(255,255,255,.27);
    }

    .process-intro {
      display: grid;
      grid-template-columns: 1fr 1fr;

      gap: 9%;

      margin-top: 85px;
      padding-top: 25px;

      border-top: 1px solid var(--light-line);
    }

    .process-intro p {
      max-width: 580px;

      margin: 0;

      color: rgba(255,255,255,.57);

      font-size: 16px;
      line-height: 1.6;
    }

    .process-list {
      margin-top: 85px;

      border-top: 1px solid var(--light-line);
    }

    .process-row {
      display: grid;
      grid-template-columns: 7% 38% 1fr;

      gap: 20px;

      padding: 27px 0;

      border-bottom: 1px solid var(--light-line);
    }

    .process-number {
      color: rgba(255,255,255,.31);

      font-family: var(--mono);
      font-size: 9px;
    }

    .process-row h3 {
      margin: 0;

      font-size: clamp(26px,3vw,43px);
      font-weight: 580;
      line-height: 1;
      letter-spacing: -.045em;
    }

    .process-row p {
      max-width: 600px;

      margin: 0;

      color: rgba(255,255,255,.52);

      font-size: 14px;
      line-height: 1.55;
    }


    /* ==========================================================
       CONTACT
    ========================================================== */

    .contact {
      min-height: 90svh;

      padding: 110px 0 35px;

      display: flex;
      flex-direction: column;
      justify-content: flex-end;

      color: white;
      background: var(--black);
    }

    .contact-top {
      display: flex;
      justify-content: space-between;

      padding-bottom: 22px;

      color: rgba(255,255,255,.39);

      border-bottom: 1px solid var(--light-line);
    }

    .contact-heading {
      max-width: 1320px;

      margin: 72px 0 82px;

      font-size: clamp(72px,12vw,178px);
      font-weight: 600;
      line-height: .76;
      letter-spacing: -.078em;
    }

    .contact-heading a {
      display: inline-block;

      color: var(--acid);

      transition:
        transform .4s var(--ease);
    }

    .contact-heading a:hover {
      transform: translateX(18px);
    }

    .contact-footer {
      display: grid;
      grid-template-columns: 1fr auto auto;

      gap: 40px;

      padding-top: 20px;

      color: rgba(255,255,255,.43);

      border-top: 1px solid var(--light-line);

      font-family: var(--mono);
      font-size: 9px;
      letter-spacing: .04em;
      text-transform: uppercase;
    }

    .contact-footer a:hover {
      color: white;
    }


    /* ==========================================================
       CUSTOM CURSOR
    ========================================================== */

    @media (pointer:fine) {

      .cursor {
        position: fixed;

        z-index: 9998;

        width: 13px;
        height: 13px;

        left: 0;
        top: 0;

        border-radius: 50%;

        background: var(--acid);

        mix-blend-mode: difference;

        pointer-events: none;

        transform: translate(-50%,-50%);

        transition:
          width .25s var(--ease),
          height .25s var(--ease);
      }

      .cursor.large {
        width: 58px;
        height: 58px;
      }
    }


    /* ==========================================================
       TABLET
    ========================================================== */

    @media (max-width: 1050px) {

      .industry-grid {
        grid-template-columns:
          repeat(3,1fr);
      }

      .industry {
        border-bottom:
          1px solid var(--light-line);
      }

      .industry:nth-child(3) {
        border-right: 0;
      }

      .project-hero {
        grid-template-columns: 1fr;
      }

      .project-visual {
        min-height: 570px;
      }
    }


    /* ==========================================================
       MOBILE
    ========================================================== */

    @media (max-width: 760px) {

      .shell {
        width: calc(100% - 28px);
      }

      .nav {
        width: calc(100% - 28px);
      }

      .nav-name {
        font-size: 12px;
      }

      .nav-status {
        display: none;
      }

      .menu-button {
        display: block;

        grid-column: 3;
      }

      .nav-links {
        position: fixed;
        inset: 0;
        z-index: -1;

        display: none;

        padding: 120px 22px 40px;

        flex-direction: column;

        color: white;
        background: var(--black);
      }

      .nav-links.open {
        display: flex;
      }

      .nav-links a {
        padding: 8px 0;

        font-family: var(--sans);
        font-size: 47px;
        line-height: 1;
        letter-spacing: -.055em;
      }


      /* HERO */

      .hero {
        min-height: 100svh;

        padding-top: 120px;
      }

      .hero-meta {
        grid-template-columns: 1fr 1fr;
      }

      .hero-meta div:nth-child(2) {
        display: none;
      }

      .hero-meta div:last-child {
        text-align: right;
      }

      .hero h1 {
        font-size:
          clamp(66px,20vw,110px);

        line-height: .78;
      }

      .hero-line-two {
        margin-left: 0;
      }

      .hero-bottom {
        grid-template-columns: 1fr;

        gap: 38px;

        margin-top: 60px;
      }

      .hero-description {
        font-size: 23px;
      }

      .identity-mark {
        width: 55px;
        height: 55px;
      }

      .scroll-note {
        display: none;
      }


      /* EMPATHY */

      .empathy {
        padding: 105px 0;
      }

      .empathy-head,
      .portfolio-head,
      .process-head {
        grid-template-columns: 1fr;

        gap: 30px;
      }

      .empathy-statement {
        font-size:
          clamp(41px,12vw,67px);
      }

      .empathy-bottom {
        grid-template-columns: 1fr;

        gap: 35px;

        margin-top: 75px;
      }

      .empathy-principles {
        grid-template-columns: 1fr;
      }


      /* INDUSTRIES */

      .industries-title {
        margin: 65px 0;

        font-size:
          clamp(58px,16vw,91px);
      }

      .industry-grid {
        grid-template-columns: 1fr;
      }

      .industry,
      .industry:first-child {
        min-height: 190px;

        padding: 24px 0;

        border-right: 0;
        border-bottom:
          1px solid var(--light-line);
      }


      /* PORTFOLIO */

      .portfolio {
        padding: 105px 0;
      }

      .portfolio-head {
        margin-bottom: 45px;
      }

      .portfolio-head h2 {
        font-size:
          clamp(62px,17vw,95px);
      }

      .portfolio-philosophy {
        grid-template-columns: 1fr;

        gap: 25px;

        margin-bottom: 50px;
      }

      .project {
        margin-top: 25px;
      }

      .project-hero {
        min-height: auto;
      }

      .project-copy {
        min-height: 500px;

        padding: 30px 24px;
      }

      .project-title {
        font-size:
          clamp(48px,14vw,72px);
      }

      .project-visual {
        min-height: 440px;
      }


      /* VISUALS */

      .flow-nodes {
        gap: 5px;
      }

      .flow-dot {
        width: 50px;
        height: 50px;
      }

      .flow-node span {
        font-size: 7px;
      }

      .attribution-insight {
        margin-top: 55px;
      }

      .journey-track {
        grid-template-columns:
          repeat(3,1fr);

        overflow: hidden;
      }

      .journey-step:nth-child(n+4) {
        display: none;
      }

      .health-score {
        grid-template-columns:
          83px 1fr;
      }

      .health-circle {
        width: 68px;
        height: 68px;
      }


      /* CASE */

      .case-section {
        grid-template-columns: 1fr;

        gap: 27px;

        padding: 55px 24px;
      }

      .three-column {
        grid-template-columns: 1fr;
      }

      .insight-card {
        min-height: 150px;
      }

      .decision-row {
        grid-template-columns:
          32px 1fr;
      }

      .decision-copy {
        grid-column: 2;
      }


      /* PROCESS */

      .process {
        padding: 105px 0;
      }

      .process-title {
        font-size:
          clamp(58px,16vw,90px);
      }

      .process-intro {
        grid-template-columns: 1fr;

        gap: 25px;

        margin-top: 60px;
      }

      .process-list {
        margin-top: 60px;
      }

      .process-row {
        grid-template-columns:
          38px 1fr;
      }

      .process-row p {
        grid-column: 2;
      }


      /* CONTACT */

      .contact {
        min-height: 80svh;
      }

      .contact-heading {
        margin: 65px 0;

        font-size:
          clamp(65px,19vw,110px);
      }

      .contact-footer {
        grid-template-columns:
          1fr 1fr;
      }

      .contact-footer span:first-child {
        grid-column: 1 / -1;
      }
    }


    /* ==========================================================
       REDUCED MOTION
    ========================================================== */

    @media (prefers-reduced-motion: reduce) {

      *,
      *::before,
      *::after {
        scroll-behavior: auto !important;
        animation-duration: .001ms !important;
        animation-iteration-count: 1 !important;
        transition-duration: .001ms !important;
      }

      .reveal {
        opacity: 1;
        transform: none;
      }

      .cursor {
        display: none;
      }
    }

  </style>
</head>


<body>

  <!-- ========================================================
       LOADER
  ========================================================= -->

  <div class="loader" id="loader" aria-hidden="true">

    <div class="loader-inner">

      <div class="loader-meta">
        <span>Building around the problem</span>
        <span id="loaderPercent">0%</span>
      </div>

      <div class="loader-track">
        <div class="loader-bar" id="loaderBar"></div>
      </div>

    </div>

  </div>


  <div class="cursor" id="cursor" aria-hidden="true"></div>


  <!-- ========================================================
       NAVIGATION
  ========================================================= -->

  <header class="topbar">

    <nav class="nav" aria-label="Primary navigation">

      <a class="nav-name" href="#home">
        Harinee S.
      </a>


      <div class="nav-links" id="navLinks">

        <a href="#home">
          Home
        </a>

        <a href="#portfolio">
          Projects
        </a>

        <a href="#approach">
          Approach
        </a>

        <a href="#contact">
          Contact
        </a>

      </div>


      <div class="nav-status">

        <span class="status-dot"></span>

        Product × AI

      </div>


      <button
        class="menu-button"
        id="menuButton"
        type="button"
        aria-expanded="false"
        aria-controls="navLinks"
      >
        Menu
      </button>

    </nav>

  </header>


  <main>


    <!-- ======================================================
         HERO
    ======================================================= -->

    <section class="hero" id="home">

      <span class="scroll-note">
        Scroll to explore ↓
      </span>


      <div class="shell hero-content">


        <div class="hero-meta reveal">

          <div>
            Product Leader<br />
            AI / ML + Data
          </div>

          <div>
            Human Problems<br />
            Thoughtful Products
          </div>

          <div>
            B2B + B2C<br />
            0→1 + Scale
          </div>

        </div>


        <h1 class="reveal">

          <span class="hero-line">
            Product<span class="accent">×</span>Human
          </span>

          <span class="hero-line hero-line-two outline">
            Builder.
          </span>

        </h1>


        <div class="hero-bottom">


          <div class="identity reveal">

            <div class="identity-mark" aria-hidden="true">
              HS
            </div>

            <div>

              <strong>
                Harinee Soundarapandian
              </strong>

              <span>
                Product Leader
              </span>

            </div>

          </div>


          <p class="hero-description reveal">

            I start with what people are trying to accomplish,
            where the experience breaks, and why it matters.

            <span>
              Then I turn that understanding into product strategy,
              experiments, systems and measurable outcomes.
            </span>

          </p>

        </div>

      </div>

    </section>


    <!-- ======================================================
         MARQUEE
    ======================================================= -->

    <section class="marquee" aria-hidden="true">

      <div class="marquee-track">

        <div class="marquee-content">

          <span>User Empathy</span>
          <span>Product Strategy</span>
          <span>AI / ML</span>
          <span>0→1</span>
          <span>Experimentation</span>
          <span>Data Products</span>
          <span>Customer Experience</span>
          <span>Systems Thinking</span>

        </div>


        <div class="marquee-content">

          <span>User Empathy</span>
          <span>Product Strategy</span>
          <span>AI / ML</span>
          <span>0→1</span>
          <span>Experimentation</span>
          <span>Data Products</span>
          <span>Customer Experience</span>
          <span>Systems Thinking</span>

        </div>

      </div>

    </section>


    <!-- ======================================================
         USER EMPATHY / ABOUT
    ======================================================= -->

    <section class="empathy">

      <div class="shell">


        <div class="empathy-head">

          <p class="label reveal">
            [ How I Think ]
          </p>


          <p class="empathy-statement reveal">

            Products get better when we understand

            <span>
              the human behind the behavior.
            </span>

          </p>

        </div>


        <div class="empathy-bottom">


          <div class="empathy-copy reveal">

            <p>
              I like starting one level below the feature request.
            </p>

            <p>
              What is someone actually trying to accomplish?
              What are they worried about?
              Where are they compensating for a broken experience?
              What would make them trust the product enough to use it again?
            </p>

            <p>
              That understanding creates the bridge between customer
              empathy and product strategy.
            </p>

          </div>


          <div class="empathy-principles reveal">


            <div class="principle">

              <p class="label">
                Understand
              </p>

              <strong>
                Needs before solutions
              </strong>

            </div>


            <div class="principle">

              <p class="label">
                Look for
              </p>

              <strong>
                Friction, workarounds & uncertainty
              </strong>

            </div>


            <div class="principle">

              <p class="label">
                Design for
              </p>

              <strong>
                Clarity, confidence & trust
              </strong>

            </div>


            <div class="principle">

              <p class="label">
                Measure
              </p>

              <strong>
                What changed for the user
              </strong>

            </div>

          </div>

        </div>

      </div>

    </section>


    <!-- ======================================================
         INDUSTRIES
    ======================================================= -->

    <section class="industries">

      <div class="shell">


        <div class="industries-header reveal">

          <span class="label">
            [ Industry Context ]
          </span>

          <span class="label">
            Breadth without losing depth
          </span>

        </div>


        <h2 class="industries-title reveal">

          Different industries.

          <span>
            Same curiosity.
          </span>

        </h2>


        <div class="industry-grid">


          <article class="industry reveal">

            <span class="industry-number">
              01
            </span>

            <h3>
              Retail
            </h3>

            <p>
              Pricing, growth, on-demand commerce
              and decision intelligence.
            </p>

          </article>


          <article class="industry reveal">

            <span class="industry-number">
              02
            </span>

            <h3>
              Health
            </h3>

            <p>
              Benefits, personalization, member
              experiences and workplace support.
            </p>

          </article>


          <article class="industry reveal">

            <span class="industry-number">
              03
            </span>

            <h3>
              FinTech
            </h3>

            <p>
              Risk, fraud prevention, personalization
              and global digital products.
            </p>

          </article>


          <article class="industry reveal">

            <span class="industry-number">
              04
            </span>

            <h3>
              Commerce
            </h3>

            <p>
              Digital journeys, omnichannel experiences,
              conversion and customer workflows.
            </p>

          </article>


          <article class="industry reveal">

            <span class="industry-number">
              05
            </span>

            <h3>
              SaaS / Platforms
            </h3>

            <p>
              Analytics, attribution, workflow products
              and decision-support systems.
            </p>

          </article>

        </div>

      </div>

    </section>


    <!-- ======================================================
         PORTFOLIO
    ======================================================= -->

    <section class="portfolio" id="portfolio">

      <div class="shell">


        <header class="portfolio-head reveal">

          <p class="label">
            [ Portfolio Projects ]
          </p>


          <h2>

            Problems worth

            <span>
              understanding deeply.
            </span>

          </h2>

        </header>


        <div class="portfolio-philosophy reveal">

          <p>
            These projects are less about showcasing a list of features
            and more about showing how I move from user friction to
            product strategy, experience design, systems thinking and
            measurable outcomes.
          </p>


          <p>
            Strategy to pixels to metrics — while keeping the user
            problem visible throughout the process.
          </p>

        </div>


        <!-- ==================================================
             PROJECT 01 — REDDIT PRO
        =================================================== -->

        <article class="project reveal">


          <div class="project-hero">


            <div class="project-copy">

              <div class="project-meta">

                <span>
                  01 / Organic Marketing
                </span>

                <span>
                  0→1 Product
                </span>

              </div>


              <h2 class="project-title">

                Reddit Pro

                <span>
                  Organic Attribution.
                </span>

              </h2>


              <p class="project-summary">

                Helping marketers move from
                “Reddit seems to be working”
                to understanding which organic conversations
                actually contribute to business outcomes.

              </p>

            </div>


            <div class="project-visual reddit-visual">


              <div class="visual-top">

                <span>
                  Organic Attribution
                </span>

                <span>
                  Post → Outcome
                </span>

              </div>


              <div class="reddit-flow">


                <div class="attribution-path">


                  <div class="flow-line"></div>


                  <div class="flow-nodes">


                    <div class="flow-node">

                      <div class="flow-dot"></div>

                      <span>
                        Post / Comment
                      </span>

                    </div>


                    <div class="flow-node">

                      <div class="flow-dot"></div>

                      <span>
                        Link Click
                      </span>

                    </div>


                    <div class="flow-node">

                      <div class="flow-dot"></div>

                      <span>
                        Conversion
                      </span>

                    </div>


                    <div class="flow-node">

                      <div class="flow-dot"></div>

                      <span>
                        Attribution
                      </span>

                    </div>

                  </div>


                  <div class="attribution-insight">

                    <span class="insight-label">
                      Product question
                    </span>

                    <strong>
                      Which organic activity actually created value?
                    </strong>

                  </div>

                </div>

              </div>

            </div>

          </div>


          <!-- USER PROBLEM -->

          <section class="case-section">

            <p class="label">
              [ User Problem ]
            </p>


            <div class="case-content">

              <h3>
                Marketers could see activity.
                They couldn't reliably connect it to outcomes.
              </h3>


              <p>
                Organic Reddit marketing can generate conversations,
                clicks and downstream demand, but marketers struggle
                to trace a lead or conversion back to the specific
                subreddit, post or comment that influenced it.
              </p>


              <div class="quote">

                “I know Reddit generates interest.

                <span>
                  I don't know what actually worked.”
                </span>

              </div>

            </div>

          </section>


          <!-- EMPATHY -->

          <section class="case-section">

            <p class="label">
              [ Empathy ]
            </p>


            <div class="case-content">

              <h3>
                The problem wasn't more analytics.
                It was confidence.
              </h3>


              <p>
                Marketers need to justify where they spend time.
                Without attribution, organic activity becomes difficult
                to defend, repeat or optimize — even when it appears to
                be generating value.
              </p>


              <div class="three-column">


                <div class="insight-card">

                  <p class="label">
                    User feels
                  </p>

                  <strong>
                    “I'm investing effort without knowing what to repeat.”
                  </strong>

                </div>


                <div class="insight-card">

                  <p class="label">
                    User needs
                  </p>

                  <strong>
                    A credible connection between content and outcome.
                  </strong>

                </div>


                <div class="insight-card">

                  <p class="label">
                    Product opportunity
                  </p>

                  <strong>
                    Turn organic activity into a measurable learning loop.
                  </strong>

                </div>

              </div>

            </div>

          </section>


          <!-- STRATEGY -->

          <section class="case-section">

            <p class="label">
              [ Product Strategy ]
            </p>


            <div class="case-content">

              <h3>
                Start with attribution.
                Earn the right to recommend.
              </h3>


              <p>
                Instead of jumping directly to AI recommendations,
                the product establishes a trusted measurement layer:
                connect organic Reddit activity to external conversion,
                then use those signals to help marketers understand
                and eventually optimize what works.
              </p>


              <div class="decision-list">


                <div class="decision-row">

                  <span class="decision-number">
                    01
                  </span>

                  <span class="decision-name">
                    Configure
                  </span>

                  <span class="decision-copy">
                    Define meaningful conversion events such as
                    demo requests, signups, trials, purchases or inquiries.
                  </span>

                </div>


                <div class="decision-row">

                  <span class="decision-number">
                    02
                  </span>

                  <span class="decision-name">
                    Connect
                  </span>

                  <span class="decision-copy">
                    Associate tracked links with organic posts
                    and comments.
                  </span>

                </div>


                <div class="decision-row">

                  <span class="decision-number">
                    03
                  </span>

                  <span class="decision-name">
                    Attribute
                  </span>

                  <span class="decision-copy">
                    Match downstream conversions back to the
                    originating organic activity.
                  </span>

                </div>


                <div class="decision-row">

                  <span class="decision-number">
                    04
                  </span>

                  <span class="decision-name">
                    Learn
                  </span>

                  <span class="decision-copy">
                    Understand which communities and content
                    patterns are creating business value.
                  </span>

                </div>

              </div>

            </div>

          </section>


          <!-- METRIC -->

          <section class="case-section">

            <p class="label">
              [ Success ]
            </p>


            <div class="case-content">

              <h3>
                The primary question:
                can users successfully attribute organic conversions?
              </h3>


              <p>
                The MVP centers on successful organic attribution rather
                than page views or dashboard engagement. The metric stays
                directly tied to the customer's original problem:
                understanding whether organic Reddit activity contributes
                to meaningful outcomes.
              </p>

            </div>

          </section>

        </article>


        <!-- ==================================================
             PROJECT 02 — FLOWW
        =================================================== -->

        <article class="project reveal">


          <div class="project-hero">


            <div class="project-copy">

              <div class="project-meta">

                <span>
                  02 / Workplace Support
                </span>

                <span>
                  0→1 Product
                </span>

              </div>


              <h2 class="project-title">

                floww.

                <span>
                  Support that moves with people.
                </span>

              </h2>


              <p class="project-summary">

                A workplace support product designed around a simple
                insight: policies can exist and the employee journey
                can still break.

              </p>

            </div>


            <div class="project-visual floww-visual">


              <div class="visual-top" style="color:rgba(0,0,0,.58);">

                <span>
                  Accommodation Journey
                </span>

                <span>
                  Need → Resolution
                </span>

              </div>


              <div class="floww-map">


                <div class="journey-header">

                  <span>
                    Employee
                  </span>

                  <span>
                    Manager
                  </span>

                  <span>
                    HR
                  </span>

                </div>


                <div class="journey-track">


                  <div class="journey-step">

                    <small>
                      01
                    </small>

                    <strong>
                      Need
                    </strong>

                  </div>


                  <div class="journey-step">

                    <small>
                      02
                    </small>

                    <strong>
                      Request
                    </strong>

                  </div>


                  <div class="journey-step">

                    <small>
                      03
                    </small>

                    <strong>
                      Manager action
                    </strong>

                  </div>


                  <div class="journey-step">

                    <small>
                      04
                    </small>

                    <strong>
                      Health check
                    </strong>

                  </div>


                  <div class="journey-step">

                    <small>
                      05
                    </small>

                    <strong>
                      Next action
                    </strong>

                  </div>


                  <div class="journey-step">

                    <small>
                      06
                    </small>

                    <strong>
                      Resolve
                    </strong>

                  </div>

                </div>


                <div class="health-score">


                  <div class="health-circle">
                    84
                  </div>


                  <div class="health-copy">

                    <span>
                      Accommodation Health
                    </span>

                    <strong>
                      Is the support actually working?
                    </strong>

                  </div>

                </div>

              </div>

            </div>

          </div>


          <!-- PROBLEM -->

          <section class="case-section">

            <p class="label">
              [ User Problem ]
            </p>


            <div class="case-content">

              <h3>
                Support exists.
                The journey still breaks.
              </h3>


              <p>
                Pregnant and postpartum employees can struggle to navigate
                workplace accommodations from identifying a need through
                successful implementation because the journey across the
                employee, manager and HR is fragmented and unclear.
              </p>


              <div class="quote">

                A policy can answer

                <span>
                  “what is allowed?”
                </span>

                and still fail to answer

                <span>
                  “what do I do next?”
                </span>

              </div>

            </div>

          </section>


          <!-- EMPATHY -->

          <section class="case-section">

            <p class="label">
              [ Empathy ]
            </p>


            <div class="case-content">

              <h3>
                Three people.
                Three different definitions of a good experience.
              </h3>


              <p>
                The product isn't designed around a single user.
                The accommodation succeeds only when the employee,
                manager and HR can move through the journey together.
              </p>


              <div class="three-column">


                <div class="insight-card">

                  <p class="label">
                    Employee
                  </p>

                  <strong>
                    “Can I ask for this safely, privately and clearly?”
                  </strong>

                </div>


                <div class="insight-card">

                  <p class="label">
                    Manager
                  </p>

                  <strong>
                    “What am I supposed to do next — and am I doing it correctly?”
                  </strong>

                </div>


                <div class="insight-card">

                  <p class="label">
                    HR
                  </p>

                  <strong>
                    “Is support being handled consistently and actually implemented?”
                  </strong>

                </div>

              </div>

            </div>

          </section>


          <!-- STRATEGY -->

          <section class="case-section">

            <p class="label">
              [ Product Strategy ]
            </p>


            <div class="case-content">

              <h3>
                Don't build another policy library.
                Build the feedback loop.
              </h3>


              <p>
                floww is designed around the handoffs where support tends
                to break: understanding the need, making the request,
                helping the manager act, verifying implementation and
                following up when the accommodation isn't working.
              </p>


              <div class="decision-list">


                <div class="decision-row">

                  <span class="decision-number">
                    01
                  </span>

                  <span class="decision-name">
                    Employee Navigator
                  </span>

                  <span class="decision-copy">
                    Help employees understand what they need,
                    what they can ask for and how to begin.
                  </span>

                </div>


                <div class="decision-row">

                  <span class="decision-number">
                    02
                  </span>

                  <span class="decision-name">
                    Manager Next Best Action
                  </span>

                  <span class="decision-copy">
                    Replace uncertainty with clear, contextual
                    guidance at the moment a manager needs to act.
                  </span>

                </div>


                <div class="decision-row">

                  <span class="decision-number">
                    03
                  </span>

                  <span class="decision-name">
                    HR Workflow
                  </span>

                  <span class="decision-copy">
                    Create visibility from intake through agreement,
                    implementation, follow-up and resolution.
                  </span>

                </div>


                <div class="decision-row">

                  <span class="decision-number">
                    04
                  </span>

                  <span class="decision-name">
                    Health Score
                  </span>

                  <span class="decision-copy">
                    Move beyond “request approved” toward
                    “is the accommodation actually working?”
                  </span>

                </div>

              </div>

            </div>

          </section>


          <!-- DIFFERENTIATOR -->

          <section class="case-section">

            <p class="label">
              [ Differentiator ]
            </p>


            <div class="case-content">

              <h3>
                Accommodation Health Score
                + Manager Next Best Action.
              </h3>


              <p>
                The differentiated value is not simply digitizing an
                accommodation request. It's creating an active feedback
                loop that shows whether support is working and what
                should happen next when it isn't.
              </p>

            </div>

          </section>

        </article>

      </div>

    </section>


    <!-- ======================================================
         PRODUCT APPROACH
    ======================================================= -->

    <section class="process" id="approach">

      <div class="shell">


        <div class="process-head reveal">

          <p class="label">
            [ Product Approach ]
          </p>


          <h2 class="process-title">

            Strategy to pixels

            <span>
              to metrics.
            </span>

          </h2>

        </div>


        <div class="process-intro reveal">

          <p>
            I like moving across the entire product system rather than
            treating strategy, experience design, analytics and execution
            as separate conversations.
          </p>

          <p>
            The thread stays the same: understand the person, frame the
            problem, make intentional choices, build the smallest useful
            experience, and measure whether anything meaningfully changed.
          </p>

        </div>


        <div class="process-list">


          <article class="process-row reveal">

            <span class="process-number">
              01
            </span>

            <h3>
              Listen.
            </h3>

            <p>
              Understand motivations, workarounds, anxiety,
              context and unmet needs — not just stated feature requests.
            </p>

          </article>


          <article class="process-row reveal">

            <span class="process-number">
              02
            </span>

            <h3>
              Frame.
            </h3>

            <p>
              Translate research into a clear problem,
              target user, opportunity and definition of success.
            </p>

          </article>


          <article class="process-row reveal">

            <span class="process-number">
              03
            </span>

            <h3>
              Decide.
            </h3>

            <p>
              Surface tradeoffs, prioritize the highest-value
              problems and decide what not to build.
            </p>

          </article>


          <article class="process-row reveal">

            <span class="process-number">
              04
            </span>

            <h3>
              Make.
            </h3>

            <p>
              Turn strategy into journeys, prototypes,
              workflows and product experiences people can react to.
            </p>

          </article>


          <article class="process-row reveal">

            <span class="process-number">
              05
            </span>

            <h3>
              Learn.
            </h3>

            <p>
              Use behavior, experiments and qualitative signals
              to challenge assumptions and improve the product.
            </p>

          </article>


          <article class="process-row reveal">

            <span class="process-number">
              06
            </span>

            <h3>
              Measure.
            </h3>

            <p>
              Connect the experience to adoption, engagement,
              customer value and business outcomes — not shipping alone.
            </p>

          </article>

        </div>

      </div>

    </section>


    <!-- ======================================================
         CONTACT
    ======================================================= -->

    <section class="contact" id="contact">

      <div class="shell">


        <div class="contact-top">

          <span class="label">
            [ Contact ]
          </span>

          <span class="label">
            Have a human problem worth solving?
          </span>

        </div>


        <h2 class="contact-heading reveal">

          Let's make<br />

          it

          <a href="mailto:harineespm@gmail.com">
            better. ↗
          </a>

        </h2>


        <footer class="contact-footer">

          <span>
            © <span id="year"></span>
            Harinee Soundarapandian
          </span>


          <a href="mailto:harineespm@gmail.com">
            Email ↗
          </a>


          <a
            href="https://www.linkedin.com/in/harineespm"
            target="_blank"
            rel="noopener noreferrer"
          >
            LinkedIn ↗
          </a>

        </footer>

      </div>

    </section>

  </main>


  <script>

    /* ==========================================================
       LOADER
    ========================================================== */

    const loader =
      document.getElementById("loader");

    const loaderBar =
      document.getElementById("loaderBar");

    const loaderPercent =
      document.getElementById("loaderPercent");

    let loaderProgress = 0;

    const loaderTimer =
      setInterval(() => {

        loaderProgress += 10;

        if (loaderProgress >= 100) {

          loaderProgress = 100;

          clearInterval(loaderTimer);

          setTimeout(() => {

            loader.classList.add("hidden");

          }, 220);

        }

        loaderBar.style.width =
          loaderProgress + "%";

        loaderPercent.textContent =
          loaderProgress + "%";

      }, 55);


    /* ==========================================================
       MOBILE NAV
    ========================================================== */

    const menuButton =
      document.getElementById("menuButton");

    const navLinks =
      document.getElementById("navLinks");


    menuButton.addEventListener(
      "click",
      () => {

        const isOpen =
          navLinks.classList.toggle("open");

        document.body.classList.toggle(
          "menu-open",
          isOpen
        );

        menuButton.textContent =
          isOpen ? "Close" : "Menu";

        menuButton.setAttribute(
          "aria-expanded",
          String(isOpen)
        );

      }
    );


    navLinks
      .querySelectorAll("a")
      .forEach(link => {

        link.addEventListener(
          "click",
          () => {

            navLinks.classList.remove("open");

            document.body.classList.remove(
              "menu-open"
            );

            menuButton.textContent =
              "Menu";

            menuButton.setAttribute(
              "aria-expanded",
              "false"
            );

          }
        );

      });


    /* ==========================================================
       SCROLL REVEALS
    ========================================================== */

    const reducedMotion =
      window.matchMedia(
        "(prefers-reduced-motion: reduce)"
      ).matches;


    const revealElements =
      document.querySelectorAll(".reveal");


    if (reducedMotion) {

      revealElements.forEach(
        element => {
          element.classList.add("visible");
        }
      );

    } else {

      const observer =
        new IntersectionObserver(

          entries => {

            entries.forEach(entry => {

              if (entry.isIntersecting) {

                entry.target.classList.add(
                  "visible"
                );

                observer.unobserve(
                  entry.target
                );

              }

            });

          },

          {
            threshold: .08,
            rootMargin:
              "0px 0px -55px 0px"
          }

        );


      revealElements.forEach(
        element => {
          observer.observe(element);
        }
      );

    }


    /* ==========================================================
       CUSTOM CURSOR
    ========================================================== */

    const cursor =
      document.getElementById("cursor");


    if (
      cursor &&
      window.matchMedia("(pointer:fine)").matches &&
      !reducedMotion
    ) {

      document.addEventListener(
        "mousemove",
        event => {

          cursor.style.left =
            event.clientX + "px";

          cursor.style.top =
            event.clientY + "px";

        }
      );


      document
        .querySelectorAll(
          "a, button, .project"
        )
        .forEach(element => {

          element.addEventListener(
            "mouseenter",
            () => {
              cursor.classList.add("large");
            }
          );

          element.addEventListener(
            "mouseleave",
            () => {
              cursor.classList.remove("large");
            }
          );

        });

    }


    /* ==========================================================
       CURRENT YEAR
    ========================================================== */

    document.getElementById(
      "year"
    ).textContent =
      new Date().getFullYear();

  </script>

</body>
</html>
