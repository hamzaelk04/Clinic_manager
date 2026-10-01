<%@ page contentType="text/html; charset=UTF-8" pageEncoding="UTF-8" %>
<!DOCTYPE html>

<html lang="en"><head><meta charset="utf-8"/><meta content="width=device-width, initial-scale=1.0" name="viewport"/><meta content="web_standard" name="shell-type"/><link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:opsz,wght,FILL,GRAD@20..48,100..700,0..1,-50..200" rel="stylesheet"/>
<link href="https://fonts.googleapis.com/css2?family=Material+Symbols+Outlined:wght,FILL@100..700,0..1&amp;display=swap" rel="stylesheet"/><style>@layer base { html, body { margin: 0; padding: 0; } body { overscroll-behavior: none; } main > :first-child { margin-top: 0 !important; } main > :last-child { margin-bottom: 0 !important; } } ::-webkit-scrollbar { display: none; }</style><script src="https://cdn.tailwindcss.com"></script><script id="tailwind-config">tailwind.config = { darkMode: "class", theme: { extend: { "colors": { "on-secondary-container": "#006f66", "secondary-container": "#86f2e4", "on-surface": "#131b2e", "on-primary-container": "#fdfcff", "surface-container-high": "#e2e7ff", "primary": "#006194", "tertiary-fixed-dim": "#b4c5ff", "secondary-fixed-dim": "#6bd8cb", "background": "#faf8ff", "on-tertiary": "#ffffff", "tertiary": "#0051d5", "outline-variant": "#bfc7d2", "surface-container-low": "#f2f3ff", "on-error-container": "#93000a", "surface-variant": "#dae2fd", "on-secondary-fixed-variant": "#005049", "on-surface-variant": "#3f4850", "on-primary-fixed": "#001d31", "secondary-fixed": "#89f5e7", "secondary": "#006a61", "on-tertiary-fixed": "#00174b", "primary-container": "#007bb9", "on-background": "#131b2e", "outline": "#707881", "on-primary": "#ffffff", "surface-dim": "#d2d9f4", "surface-container-highest": "#dae2fd", "tertiary-fixed": "#dbe1ff", "surface-tint": "#006398", "on-secondary-fixed": "#00201d", "inverse-on-surface": "#eef0ff", "on-tertiary-container": "#fefcff", "surface": "#faf8ff", "error": "#ba1a1a", "on-secondary": "#ffffff", "on-error": "#ffffff", "on-primary-fixed-variant": "#004b73", "surface-container-lowest": "#ffffff", "inverse-surface": "#283044", "primary-fixed-dim": "#93ccff", "primary-fixed": "#cce5ff", "error-container": "#ffdad6", "surface-bright": "#faf8ff", "inverse-primary": "#93ccff", "surface-container": "#eaedff", "on-tertiary-fixed-variant": "#003ea8", "tertiary-container": "#316bf3" }, "borderRadius": { "DEFAULT": "0.25rem", "lg": "0.5rem", "xl": "0.75rem", "full": "9999px" }, "spacing": { "margin-md": "1.5rem", "space-md": "1rem", "space-xs": "0.25rem", "gutter": "1rem", "space-sm": "0.5rem", "gutter-lg": "2rem", "space-xxs": "0.125rem", "margin": "1rem", "space-2xl": "3rem", "margin-lg": "2.5rem", "gutter-md": "1.5rem", "space-xl": "2rem", "space-lg": "1.5rem" }, "fontFamily": { "data-tabular": [ "Inter" ], "body-sm": [ "Inter" ], "display-lg": [ "Inter" ], "headline-lg": [ "Inter" ], "display-lg-mobile": [ "Inter" ], "body-md": [ "Inter" ], "headline-xl-mobile": [ "Inter" ], "headline-sm": [ "Inter" ], "label-md": [ "Inter" ], "body-lg": [ "Inter" ], "headline-md": [ "Inter" ], "title-md": [ "Inter" ], "label-sm": [ "Inter" ], "label-lg": [ "Inter" ], "headline-xl": [ "Inter" ] }, "fontSize": { "data-tabular": [ "14px", { "lineHeight": "20px", "letterSpacing": "0em", "fontWeight": "500" } ], "body-sm": [ "12px", { "lineHeight": "16px", "letterSpacing": "0.01em", "fontWeight": "400" } ], "display-lg": [ "48px", { "lineHeight": "56px", "letterSpacing": "-0.025em", "fontWeight": "700" } ], "headline-lg": [ "28px", { "lineHeight": "36px", "letterSpacing": "-0.015em", "fontWeight": "600" } ], "display-lg-mobile": [ "32px", { "lineHeight": "40px", "letterSpacing": "-0.02em", "fontWeight": "700" } ], "body-md": [ "14px", { "lineHeight": "20px", "letterSpacing": "0em", "fontWeight": "400" } ], "headline-xl-mobile": [ "28px", { "lineHeight": "36px", "letterSpacing": "-0.015em", "fontWeight": "600" } ], "headline-sm": [ "18px", { "lineHeight": "24px", "letterSpacing": "-0.005em", "fontWeight": "600" } ], "label-md": [ "12px", { "lineHeight": "16px", "letterSpacing": "0.02em", "fontWeight": "500" } ], "body-lg": [ "16px", { "lineHeight": "24px", "letterSpacing": "0em", "fontWeight": "400" } ], "headline-md": [ "22px", { "lineHeight": "28px", "letterSpacing": "-0.01em", "fontWeight": "600" } ], "title-md": [ "16px", { "lineHeight": "24px", "letterSpacing": "0em", "fontWeight": "600" } ], "label-sm": [ "11px", { "lineHeight": "14px", "letterSpacing": "0.03em", "fontWeight": "600" } ], "label-lg": [ "14px", { "lineHeight": "20px", "letterSpacing": "0.01em", "fontWeight": "500" } ], "headline-xl": [ "36px", { "lineHeight": "44px", "letterSpacing": "-0.02em", "fontWeight": "600" } ] } } } };</script></head><body class="bg-background font-body-md text-body-md text-on-surface antialiased"><header class="fixed top-0 w-full h-16 bg-surface-container-lowest/90 backdrop-blur-xl shadow-[0_1px_8px_rgba(0,0,0,0.04)] z-50"><div class="w-full max-w-7xl mx-auto h-16 px-gutter-lg flex items-center justify-between"><div class="flex items-center gap-space-sm"><img alt="ClinicManager Brand Logo" class="h-8 w-auto object-contain" src="https://lh3.googleusercontent.com/aida/AEtjO1V0m7mPoWGFFuIO-iwAKf9khDGwiBDYarmE_FpMZZegwvoXYWiPySMuIrq0aM-NRh2NLhbIiwKaSvs1bDGfB1hkDkBI93fQRJZh6P9jMy2miR6BQhyChk2p7dFZydCkXQTgU8BT_1wo-4RzfVM1ntXUWjwecVaGn4yePIBRxNLQJVDUeg8zhdgzqfiLO7l4vq0gJOF2_UBJ3vQVCKPOqML91E-UaOyrLNX1n8xvTUWuuaDKDTwSES32Hl68"/><span class="font-title-md text-title-md text-primary font-bold tracking-tight">ClinicManager</span></div><nav class="hidden md:flex items-center gap-space-lg" data-active-classes="text-primary font-semibold"><a aria-current="page" class="transition-colors text-primary font-semibold" data-path="public-home" href="#">Services &amp; Specialities</a><a class="font-body-md text-body-md text-on-surface-variant hover:text-on-surface transition-colors" data-path="physician-search" href="#">Find a Physician</a><a class="font-body-md text-body-md text-on-surface-variant hover:text-on-surface transition-colors" data-path="urgent-care-locations" href="#">Clinic Locations</a><a class="font-body-md text-body-md text-on-surface-variant hover:text-on-surface transition-colors" data-path="patient-portal-info" href="#">Patient Access</a></nav><div class="flex items-center gap-space-md"><a class="px-space-md py-2 rounded-lg font-label-lg text-label-lg text-primary hover:bg-surface-container-high hover:text-on-surface transition-colors" data-path="login" href="#">Sign In</a><a class="px-space-md py-2 rounded-lg font-label-lg text-label-lg bg-primary text-on-primary hover:bg-primary-container transition-colors" data-path="appointment-booking" href="#">Book Appointment</a><div class="flex items-center pl-space-xs"><img alt="Profile" class="w-8 h-8 rounded-full object-cover" src="https://lh3.googleusercontent.com/aida-public/AB6AXuBFYH8H4v-TrmjhshqqHMLol5ZTCOyr54KgZxsnklJoy3AQRUU4ygnKIx9FhGiel17jim2GSwzF0ChlRJ_7qMLKICuQG9Z4g-VwLhbMleHukSqxNGz6j7LI7swYqj3ONQ2RPvCU01i-HlsIqqorPWprxCoB_kmRkC8umnlb2z8GK6hAP1UOQvlK5AVSmbSZS1YJslbSFgSitaF8R1CCDfEdU11IW7r9JcLJloJKvesePf3rRiZBadGD0A"/></div></div></div></header><main class="w-full pt-16 bg-background"><div class="flex flex-col w-full">
<!-- Top Ambient Glow -->
<div class="relative w-full overflow-hidden bg-surface-container-lowest">
<div class="absolute -top-40 right-0 w-[580px] h-[580px] bg-secondary-container/30 rounded-full blur-3xl pointer-events-none -z-0"></div>
<div class="absolute top-20 -left-20 w-[420px] h-[420px] bg-primary-fixed/40 rounded-full blur-3xl pointer-events-none -z-0"></div>
<!-- HERO SECTION -->
<section class="relative z-10 max-w-7xl mx-auto px-gutter-lg pt-12 pb-20 lg:pt-16 lg:pb-28">
<div class="grid grid-cols-1 lg:grid-cols-12 gap-gutter-lg items-center">
<!-- Hero Copy -->
<div class="lg:col-span-7 flex flex-col items-start space-y-space-lg">
<!-- Live Telemetry Pill -->
<div class="inline-flex items-center gap-space-xs bg-surface-container-high px-space-md py-1 rounded-full">
<span class="w-2 h-2 rounded-full bg-secondary animate-pulse"></span>
<span class="font-label-sm text-label-sm text-secondary font-semibold uppercase tracking-wider">Next-Gen Clinical Access</span>
<span class="text-outline-variant">•</span>
<span class="font-label-sm text-label-sm text-on-surface-variant">Instant Board-Certified Match</span>
</div>
<h1 class="font-display-lg text-display-lg text-on-surface font-extrabold tracking-tight max-w-2xl">
            Your health, <br class="hidden sm:inline"/>
<span class="text-primary">managed simply.</span>
</h1>
<p class="font-body-lg text-body-lg text-on-surface-variant max-w-xl">
            Experience clinical care engineered around your schedule. Coordinate instant appointments, connect directly with licensed specialists, and access encrypted diagnostic records from one seamless portal.
          </p>
<!-- Primary CTAs -->
<div class="flex flex-wrap items-center gap-space-md w-full sm:w-auto pt-space-xs">
<a class="px-6 py-3.5 rounded-lg bg-primary text-on-primary font-label-lg text-label-lg shadow-md hover:bg-primary-container transition-all flex items-center justify-center gap-space-xs" href="#quick-search">
<span class="material-symbols-outlined text-lg">calendar_month</span>
              Book an appointment
            </a>
<a class="px-6 py-3.5 rounded-lg bg-surface-container-high text-on-surface font-label-lg text-label-lg hover:bg-surface-variant transition-all flex items-center justify-center gap-space-xs" href="#doctors">
<span class="material-symbols-outlined text-lg">person_search</span>
              Find a doctor
            </a>
</div>
<!-- Trust Validation Strip -->
<div class="pt-space-md flex flex-wrap items-center gap-y-3 gap-x-6">
<div class="flex items-center gap-2 text-on-surface-variant">
<span class="material-symbols-outlined text-primary text-xl" style="font-variation-settings: 'FILL' 1;">verified_user</span>
<span class="font-label-sm text-label-sm font-medium">HIPAA Compliant</span>
</div>
<div class="flex items-center gap-2 text-on-surface-variant">
<span class="material-symbols-outlined text-primary text-xl" style="font-variation-settings: 'FILL' 1;">security</span>
<span class="font-label-sm text-label-sm font-medium">ISO 27001 Certified</span>
</div>
<div class="flex items-center gap-2 text-on-surface-variant">
<span class="material-symbols-outlined text-secondary text-xl" style="font-variation-settings: 'FILL' 1;">thumb_up</span>
<span class="font-label-sm text-label-sm font-medium">99.8% Patient Satisfaction</span>
</div>
</div>
</div>
<!-- Hero Visual + Floating Micro-Cards -->
<div class="lg:col-span-5 relative flex justify-center lg:justify-end mt-8 lg:mt-0">
<div class="relative w-full max-w-md">
<!-- Ambient Card Backing -->
<div class="w-full aspect-[4/5] rounded-3xl overflow-hidden shadow-xl bg-surface-container">
<img class="w-full h-full object-cover" data-alt="A smiling, warm female physician in modern navy medical scrubs with a stethoscope around her neck, standing in a brightly lit, high-end clean clinic corridor with subtle teal and blue accent lighting, natural soft focus background." src="https://lh3.googleusercontent.com/aida-public/AB6AXuA8_PWy4D42a1MvkC1h-nhI_zW_RH520kk5v3S9W0exAaTVvrmMmAG7YsGjuhyuD1L_KJWil0gRUxBF95Sv-Xuk2cJBHORHNsjP6UkfsCrCzqFkS-qNtyD0qoOvQ5Rv2OGDhDQ9EKh7FbwOvMGIAle6bPfO6cyMQCQHko0LbMRi0K5Ae6V5ci1YCSczwupngWN6Bf9v7oow5NW_KEED26zviknp_5aj1RbIVml10nHPZUQi44SLpxTaxw"/>
</div>
<!-- Floating Card: Direct Availability Badge -->
<div class="absolute -bottom-6 -left-6 bg-surface-container-lowest p-space-md rounded-2xl shadow-xl flex items-center gap-space-md max-w-[270px] animate-fade-in">
<div class="w-12 h-12 rounded-xl bg-secondary-container flex items-center justify-center text-on-secondary-container shrink-0">
<span class="material-symbols-outlined text-2xl">check_circle</span>
</div>
<div class="min-w-0">
<p class="font-label-sm text-label-sm text-outline font-semibold uppercase tracking-wider">Next Available Slot</p>
<p class="font-title-md text-title-md text-on-surface font-bold truncate">Today at 14:15</p>
<p class="font-body-sm text-body-sm text-secondary font-medium">Dr. Sophia Mercer, MD</p>
</div>
</div>
<!-- Floating Card: Active Vitals Telemetry Badge -->
<div class="absolute -top-4 -right-4 bg-surface-container-lowest/95 backdrop-blur-md p-space-md rounded-2xl shadow-xl flex items-center gap-3">
<div class="w-10 h-10 rounded-full bg-primary/10 flex items-center justify-center text-primary">
<span class="material-symbols-outlined text-xl">vital_signs</span>
</div>
<div>
<span class="font-label-sm text-label-sm text-outline">Real-Time Sync</span>
<p class="font-data-tabular text-data-tabular text-on-surface font-bold">Encrypted EMR v4.2</p>
</div>
</div>
</div>
</div>
</div>
</section>
</div>
<!-- SEARCH DOCK (Crosses Section Boundary) -->
<div class="max-w-7xl mx-auto px-gutter-lg w-full -mt-8 relative z-20" id="quick-search">
<div class="bg-surface-container-lowest rounded-2xl shadow-xl p-space-lg">
<div class="flex items-center justify-between pb-space-sm mb-space-md">
<div class="flex items-center gap-space-xs">
<span class="material-symbols-outlined text-primary text-xl">medical_services</span>
<h2 class="font-title-md text-title-md text-on-surface font-bold">Fast-Track Physician Booking</h2>
</div>
<span class="font-label-sm text-label-sm text-outline hidden sm:inline">Guaranteed Zero Waiting Room Latency</span>
</div>
<form class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-5 gap-space-md items-end" id="search-form" onsubmit="event.preventDefault(); highlightBookingToast();">
<!-- Specialty Selection -->
<div class="flex flex-col space-y-1.5">
<label class="font-label-sm text-label-sm text-on-surface-variant font-medium">Clinical Specialty</label>
<div class="relative">
<select class="w-full h-11 pl-9 pr-8 bg-surface-container-low rounded-lg font-body-md text-body-md text-on-surface appearance-none focus:outline-none focus:bg-surface-container-high transition-colors">
<option value="cardiology">Cardiology</option>
<option value="dermatology">Dermatology</option>
<option value="pediatrics">Pediatrics</option>
<option value="neurology">Neurology</option>
<option value="orthopedics">Orthopedics</option>
</select>
<span class="material-symbols-outlined absolute left-2.5 top-3 text-outline text-lg pointer-events-none">cardiology</span>
<span class="material-symbols-outlined absolute right-2.5 top-3 text-outline text-lg pointer-events-none">expand_more</span>
</div>
</div>
<!-- Doctor Name / Keyword -->
<div class="flex flex-col space-y-1.5">
<label class="font-label-sm text-label-sm text-on-surface-variant font-medium">Physician Name</label>
<div class="relative">
<input class="w-full h-11 pl-9 pr-3 bg-surface-container-low rounded-lg font-body-md text-body-md text-on-surface placeholder:text-outline focus:outline-none focus:bg-surface-container-high transition-colors" placeholder="e.g. Dr. Reynolds" type="text"/>
<span class="material-symbols-outlined absolute left-2.5 top-3 text-outline text-lg pointer-events-none">stethoscope</span>
</div>
</div>
<!-- Date Picker -->
<div class="flex flex-col space-y-1.5">
<label class="font-label-sm text-label-sm text-on-surface-variant font-medium">Preferred Date</label>
<div class="relative">
<input class="w-full h-11 pl-9 pr-3 bg-surface-container-low rounded-lg font-body-md text-body-md text-on-surface focus:outline-none focus:bg-surface-container-high transition-colors" type="date" value="2025-05-15"/>
<span class="material-symbols-outlined absolute left-2.5 top-3 text-outline text-lg pointer-events-none">event</span>
</div>
</div>
<!-- Clinic Location -->
<div class="flex flex-col space-y-1.5">
<label class="font-label-sm text-label-sm text-on-surface-variant font-medium">Location Hub</label>
<div class="relative">
<select class="w-full h-11 pl-9 pr-8 bg-surface-container-low rounded-lg font-body-md text-body-md text-on-surface appearance-none focus:outline-none focus:bg-surface-container-high transition-colors">
<option value="metropolis-central">Central Medical Tower (Downtown)</option>
<option value="north-pavilion">North Health Pavilion</option>
<option value="westside-urgent">Westside Clinical Campus</option>
<option value="telehealth">Virtual Care (Telehealth)</option>
</select>
<span class="material-symbols-outlined absolute left-2.5 top-3 text-outline text-lg pointer-events-none">location_on</span>
<span class="material-symbols-outlined absolute right-2.5 top-3 text-outline text-lg pointer-events-none">expand_more</span>
</div>
</div>
<!-- Submit Button -->
<button class="h-11 w-full bg-primary text-on-primary rounded-lg font-label-lg text-label-lg font-semibold hover:bg-primary-container transition-all flex items-center justify-center gap-space-xs shadow-sm" type="submit">
<span class="material-symbols-outlined text-lg">search</span>
          Find Specialists
        </button>
</form>
</div>
</div>
<!-- POPULAR SPECIALTIES GRID -->
<section class="max-w-7xl mx-auto px-gutter-lg pt-24 pb-16 w-full">
<div class="flex flex-col md:flex-row md:items-end justify-between mb-space-xl gap-space-md">
<div>
<p class="font-label-sm text-label-sm text-primary uppercase font-bold tracking-widest">Medical Departments</p>
<h2 class="font-headline-lg text-headline-lg text-on-surface font-bold tracking-tight">Explore Comprehensive Care</h2>
</div>
<p class="font-body-md text-body-md text-on-surface-variant max-w-md">
        Access dedicated centers of clinical excellence across metropolitan campuses with multidisciplinary practitioner teams.
      </p>
</div>
<div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-space-md">
<!-- Cardiology -->
<a class="group bg-surface-container-lowest p-space-lg rounded-2xl shadow-sm hover:shadow-md hover:bg-surface-container-low transition-all flex flex-col items-center text-center" href="#doctors">
<div class="w-14 h-14 rounded-xl bg-error-container/60 text-error flex items-center justify-center mb-space-md group-hover:scale-110 transition-transform">
<span class="material-symbols-outlined text-3xl" style="font-variation-settings: 'FILL' 1;">favorite</span>
</div>
<h3 class="font-title-md text-title-md text-on-surface font-semibold group-hover:text-primary transition-colors">Cardiology</h3>
<p class="font-label-sm text-label-sm text-outline mt-1">34 Specialists</p>
<span class="mt-3 font-label-sm text-label-sm text-primary opacity-0 group-hover:opacity-100 transition-opacity flex items-center gap-0.5">
          View slots <span class="material-symbols-outlined text-sm">arrow_forward</span>
</span>
</a>
<!-- Neurology -->
<a class="group bg-surface-container-lowest p-space-lg rounded-2xl shadow-sm hover:shadow-md hover:bg-surface-container-low transition-all flex flex-col items-center text-center" href="#doctors">
<div class="w-14 h-14 rounded-xl bg-primary-fixed text-primary flex items-center justify-center mb-space-md group-hover:scale-110 transition-transform">
<span class="material-symbols-outlined text-3xl">neurology</span>
</div>
<h3 class="font-title-md text-title-md text-on-surface font-semibold group-hover:text-primary transition-colors">Neurology</h3>
<p class="font-label-sm text-label-sm text-outline mt-1">21 Specialists</p>
<span class="mt-3 font-label-sm text-label-sm text-primary opacity-0 group-hover:opacity-100 transition-opacity flex items-center gap-0.5">
          View slots <span class="material-symbols-outlined text-sm">arrow_forward</span>
</span>
</a>
<!-- Pediatrics -->
<a class="group bg-surface-container-lowest p-space-lg rounded-2xl shadow-sm hover:shadow-md hover:bg-surface-container-low transition-all flex flex-col items-center text-center" href="#doctors">
<div class="w-14 h-14 rounded-xl bg-secondary-container text-on-secondary-container flex items-center justify-center mb-space-md group-hover:scale-110 transition-transform">
<span class="material-symbols-outlined text-3xl">child_care</span>
</div>
<h3 class="font-title-md text-title-md text-on-surface font-semibold group-hover:text-primary transition-colors">Pediatrics</h3>
<p class="font-label-sm text-label-sm text-outline mt-1">42 Specialists</p>
<span class="mt-3 font-label-sm text-label-sm text-primary opacity-0 group-hover:opacity-100 transition-opacity flex items-center gap-0.5">
          View slots <span class="material-symbols-outlined text-sm">arrow_forward</span>
</span>
</a>
<!-- Dermatology -->
<a class="group bg-surface-container-lowest p-space-lg rounded-2xl shadow-sm hover:shadow-md hover:bg-surface-container-low transition-all flex flex-col items-center text-center" href="#doctors">
<div class="w-14 h-14 rounded-xl bg-surface-variant text-tertiary flex items-center justify-center mb-space-md group-hover:scale-110 transition-transform">
<span class="material-symbols-outlined text-3xl">flare</span>
</div>
<h3 class="font-title-md text-title-md text-on-surface font-semibold group-hover:text-primary transition-colors">Dermatology</h3>
<p class="font-label-sm text-label-sm text-outline mt-1">29 Specialists</p>
<span class="mt-3 font-label-sm text-label-sm text-primary opacity-0 group-hover:opacity-100 transition-opacity flex items-center gap-0.5">
          View slots <span class="material-symbols-outlined text-sm">arrow_forward</span>
</span>
</a>
<!-- Orthopedics -->
<a class="group bg-surface-container-lowest p-space-lg rounded-2xl shadow-sm hover:shadow-md hover:bg-surface-container-low transition-all flex flex-col items-center text-center" href="#doctors">
<div class="w-14 h-14 rounded-xl bg-surface-container-high text-primary flex items-center justify-center mb-space-md group-hover:scale-110 transition-transform">
<span class="material-symbols-outlined text-3xl">format_h4</span>
</div>
<h3 class="font-title-md text-title-md text-on-surface font-semibold group-hover:text-primary transition-colors">Orthopedics</h3>
<p class="font-label-sm text-label-sm text-outline mt-1">28 Specialists</p>
<span class="mt-3 font-label-sm text-label-sm text-primary opacity-0 group-hover:opacity-100 transition-opacity flex items-center gap-0.5">
          View slots <span class="material-symbols-outlined text-sm">arrow_forward</span>
</span>
</a>
<!-- Ophthalmology -->
<a class="group bg-surface-container-lowest p-space-lg rounded-2xl shadow-sm hover:shadow-md hover:bg-surface-container-low transition-all flex flex-col items-center text-center" href="#doctors">
<div class="w-14 h-14 rounded-xl bg-tertiary-fixed text-on-tertiary-fixed-variant flex items-center justify-center mb-space-md group-hover:scale-110 transition-transform">
<span class="material-symbols-outlined text-3xl">visibility</span>
</div>
<h3 class="font-title-md text-title-md text-on-surface font-semibold group-hover:text-primary transition-colors">Ophthalmology</h3>
<p class="font-label-sm text-label-sm text-outline mt-1">19 Specialists</p>
<span class="mt-3 font-label-sm text-label-sm text-primary opacity-0 group-hover:opacity-100 transition-opacity flex items-center gap-0.5">
          View slots <span class="material-symbols-outlined text-sm">arrow_forward</span>
</span>
</a>
</div>
</section>
<!-- FEATURED DOCTORS SECTION -->
<section class="bg-surface-container-low py-20 w-full" id="doctors">
<div class="max-w-7xl mx-auto px-gutter-lg">
<div class="flex flex-col md:flex-row md:items-end justify-between mb-space-xl gap-space-md">
<div>
<span class="font-label-sm text-label-sm text-secondary font-bold uppercase tracking-widest">Available Immediately</span>
<h2 class="font-headline-lg text-headline-lg text-on-surface font-bold tracking-tight">Featured Board Specialists</h2>
</div>
<div class="flex items-center gap-space-sm">
<button class="w-10 h-10 rounded-full bg-surface-container-lowest text-on-surface flex items-center justify-center shadow-sm hover:bg-surface-container-high transition-colors">
<span class="material-symbols-outlined">chevron_left</span>
</button>
<button class="w-10 h-10 rounded-full bg-surface-container-lowest text-on-surface flex items-center justify-center shadow-sm hover:bg-surface-container-high transition-colors">
<span class="material-symbols-outlined">chevron_right</span>
</button>
</div>
</div>
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-space-lg">
<!-- Doctor 1 -->
<div class="bg-surface-container-lowest rounded-2xl overflow-hidden shadow-sm hover:shadow-lg transition-all flex flex-col">
<div class="relative w-full h-56 bg-surface-container">
<img class="w-full h-full object-cover" data-alt="Portrait of Dr. Evelyn Vance, Chief Cardiologist, female in mid 40s wearing lab coat with stethoscope, professional clinical environment, bright warm natural light." src="https://lh3.googleusercontent.com/aida-public/AB6AXuCxePSCtiwfxwBEiBlvBPZu1aO4-AH_EsRlQJatYTdjOyPpU17G9bZbd1CIC0jUUJMB3HBeU_62Yz9yJhRlZN_PFphU8ipdPxQ6kUHZrMVk5TDv37-blQczfDtlebcpMRjCLUu1QFTTzkwSe_onQjFgILTlkTbJ4loqGFYDvmkl2BBftj40wq2Jm4qqhO6psQT5FsemON2D_GooU9NJx34WYPgJ18CyNEQJVfI0V9FwQyNgV3k3h_MF9w"/>
<span class="absolute top-3 right-3 bg-surface-container-lowest/90 backdrop-blur-md px-2.5 py-1 rounded-full font-label-sm text-label-sm text-secondary font-bold flex items-center gap-1 shadow-sm">
<span class="w-1.5 h-1.5 rounded-full bg-secondary"></span>
              Today, 14:30
            </span>
</div>
<div class="p-space-lg flex-1 flex flex-col justify-between space-y-space-md">
<div>
<div class="flex items-center justify-between">
<span class="font-label-sm text-label-sm text-primary font-semibold uppercase">Cardiology Specialist</span>
<div class="flex items-center gap-1 text-on-surface">
<span class="material-symbols-outlined text-amber-500 text-sm" style="font-variation-settings: 'FILL' 1;">star</span>
<span class="font-data-tabular text-data-tabular font-bold">4.9</span>
<span class="font-body-sm text-body-sm text-outline">(184)</span>
</div>
</div>
<h3 class="font-title-md text-title-md text-on-surface font-bold mt-1">Dr. Evelyn Vance, MD</h3>
<p class="font-body-sm text-body-sm text-outline-variant flex items-center gap-1 mt-1 text-on-surface-variant">
<span class="material-symbols-outlined text-base text-outline">location_on</span>
                Downtown Medical Tower • Fl 4
              </p>
</div>
<button class="w-full py-2.5 bg-primary text-on-primary font-label-lg text-label-lg rounded-lg hover:bg-primary-container transition-colors shadow-sm flex items-center justify-center gap-1" onclick="openBookingModal('Dr. Evelyn Vance', 'Cardiology', 'Today, 14:30')">
              Book Slot
            </button>
</div>
</div>
<!-- Doctor 2 -->
<div class="bg-surface-container-lowest rounded-2xl overflow-hidden shadow-sm hover:shadow-lg transition-all flex flex-col">
<div class="relative w-full h-56 bg-surface-container">
<img class="w-full h-full object-cover" data-alt="Male dermatologist, late 30s with friendly approachable expression, wearing dark blue medical scrubs and holding patient digital tablet in modern clinic." src="https://lh3.googleusercontent.com/aida-public/AB6AXuAiNp17dic7Z0lwDC9hh2oPkvbq82ve6qTsqwmGPUvrS6UE5heITVqRIic5zd1TFcCayrqhArFO0tWGA2TwRLed5VaSozdb2WWSr8EMFFQL-Ltftdd9SF5Y4Ju6Mm5n5qx2AN1JRs2MrXYmC59RlL0RDhFTqN7qlQEiuEao6l9VLSqR0k6trz-uVFevjh5GgX17H7Ef9N-QeR9ukv61_FxeqYpuVqzKxTQvrC3UjLwBsAJSAmMYxRMvwA"/>
<span class="absolute top-3 right-3 bg-surface-container-lowest/90 backdrop-blur-md px-2.5 py-1 rounded-full font-label-sm text-label-sm text-secondary font-bold flex items-center gap-1 shadow-sm">
<span class="w-1.5 h-1.5 rounded-full bg-secondary"></span>
              Today, 16:15
            </span>
</div>
<div class="p-space-lg flex-1 flex flex-col justify-between space-y-space-md">
<div>
<div class="flex items-center justify-between">
<span class="font-label-sm text-label-sm text-primary font-semibold uppercase">Dermatology</span>
<div class="flex items-center gap-1 text-on-surface">
<span class="material-symbols-outlined text-amber-500 text-sm" style="font-variation-settings: 'FILL' 1;">star</span>
<span class="font-data-tabular text-data-tabular font-bold">4.95</span>
<span class="font-body-sm text-body-sm text-outline">(220)</span>
</div>
</div>
<h3 class="font-title-md text-title-md text-on-surface font-bold mt-1">Dr. Julian Hayes, DO</h3>
<p class="font-body-sm text-body-sm text-outline-variant flex items-center gap-1 mt-1 text-on-surface-variant">
<span class="material-symbols-outlined text-base text-outline">location_on</span>
                North Pavilion • Ste 210
              </p>
</div>
<button class="w-full py-2.5 bg-primary text-on-primary font-label-lg text-label-lg rounded-lg hover:bg-primary-container transition-colors shadow-sm flex items-center justify-center gap-1" onclick="openBookingModal('Dr. Julian Hayes', 'Dermatology', 'Today, 16:15')">
              Book Slot
            </button>
</div>
</div>
<!-- Doctor 3 -->
<div class="bg-surface-container-lowest rounded-2xl overflow-hidden shadow-sm hover:shadow-lg transition-all flex flex-col">
<div class="relative w-full h-56 bg-surface-container">
<img class="w-full h-full object-cover" data-alt="Female pediatrician with stethoscope, warm smile, wearing soft turquoise coat, bright pediatric clinical office with colorful accents blurred in background." src="https://lh3.googleusercontent.com/aida-public/AB6AXuA0PKCDHZL8_T55fO9iu1MiX_i_EzZ19aWs3CjqoRFrTjNh4hqgt3LeAFxuY4n_dWZCeRgtfV51K0PhV9AH854NwW5F-s7cQPdp82z7meyoQAYy9pdYdtMY8CxDMHyolD3aIK2-UX1bnOLtO606wS6LPXm-1ASz8kIDGsiOuu9uRuWyRbBDM82uZ28o6z-6cnbfeWHIzD-eup9TXzYjRQIsI-Zm5wWBFNo8319fTw0NuAkw1FiNriiwPA"/>
<span class="absolute top-3 right-3 bg-surface-container-lowest/90 backdrop-blur-md px-2.5 py-1 rounded-full font-label-sm text-label-sm text-secondary font-bold flex items-center gap-1 shadow-sm">
<span class="w-1.5 h-1.5 rounded-full bg-secondary"></span>
              Tomorrow, 09:00
            </span>
</div>
<div class="p-space-lg flex-1 flex flex-col justify-between space-y-space-md">
<div>
<div class="flex items-center justify-between">
<span class="font-label-sm text-label-sm text-primary font-semibold uppercase">Lead Pediatrician</span>
<div class="flex items-center gap-1 text-on-surface">
<span class="material-symbols-outlined text-amber-500 text-sm" style="font-variation-settings: 'FILL' 1;">star</span>
<span class="font-data-tabular text-data-tabular font-bold">4.89</span>
<span class="font-body-sm text-body-sm text-outline">(312)</span>
</div>
</div>
<h3 class="font-title-md text-title-md text-on-surface font-bold mt-1">Dr. Ananya Patel, MD</h3>
<p class="font-body-sm text-body-sm text-outline-variant flex items-center gap-1 mt-1 text-on-surface-variant">
<span class="material-symbols-outlined text-base text-outline">location_on</span>
                Westside Children’s Wing
              </p>
</div>
<button class="w-full py-2.5 bg-primary text-on-primary font-label-lg text-label-lg rounded-lg hover:bg-primary-container transition-colors shadow-sm flex items-center justify-center gap-1" onclick="openBookingModal('Dr. Ananya Patel', 'Pediatrics', 'Tomorrow, 09:00')">
              Book Slot
            </button>
</div>
</div>
<!-- Doctor 4 -->
<div class="bg-surface-container-lowest rounded-2xl overflow-hidden shadow-sm hover:shadow-lg transition-all flex flex-col">
<div class="relative w-full h-56 bg-surface-container">
<img class="w-full h-full object-cover" data-alt="Senior male orthopedic surgeon with gray hair and glasses, sharp intellectual gaze, wearing white physician lab coat, standing in clinical consultation room." src="https://lh3.googleusercontent.com/aida-public/AB6AXuCisLyy5S0Tjdk8IgTN9oKvKnfqaKbOyIXV-4uLLgtNPy3FhBgdlU2KF48Ncts51XZ8b6MmG9JfGwsROvk6FYpgvtQ-HuQ5XdGXlUOJfSPegc-8Dxcziov9nKwGTIxEBwefKt_1bI2hEfrqRs_UwTHXsdoDVwB7naeUxLXB_V_C1MdsIioiBoYwpr323UUOyxJkZCRbYtUzShvWb4frZJ2ika6GYsBIeOEW1ilDD_SlvAYWIuVutejqIA"/>
<span class="absolute top-3 right-3 bg-surface-container-lowest/90 backdrop-blur-md px-2.5 py-1 rounded-full font-label-sm text-label-sm text-secondary font-bold flex items-center gap-1 shadow-sm">
<span class="w-1.5 h-1.5 rounded-full bg-secondary"></span>
              Tomorrow, 11:30
            </span>
</div>
<div class="p-space-lg flex-1 flex flex-col justify-between space-y-space-md">
<div>
<div class="flex items-center justify-between">
<span class="font-label-sm text-label-sm text-primary font-semibold uppercase">Orthopedic Surgery</span>
<div class="flex items-center gap-1 text-on-surface">
<span class="material-symbols-outlined text-amber-500 text-sm" style="font-variation-settings: 'FILL' 1;">star</span>
<span class="font-data-tabular text-data-tabular font-bold">4.98</span>
<span class="font-body-sm text-body-sm text-outline">(408)</span>
</div>
</div>
<h3 class="font-title-md text-title-md text-on-surface font-bold mt-1">Dr. Marcus Sterling, MD</h3>
<p class="font-body-sm text-body-sm text-outline-variant flex items-center gap-1 mt-1 text-on-surface-variant">
<span class="material-symbols-outlined text-base text-outline">location_on</span>
                Downtown Orthopedic Lab
              </p>
</div>
<button class="w-full py-2.5 bg-primary text-on-primary font-label-lg text-label-lg rounded-lg hover:bg-primary-container transition-colors shadow-sm flex items-center justify-center gap-1" onclick="openBookingModal('Dr. Marcus Sterling', 'Orthopedics', 'Tomorrow, 11:30')">
              Book Slot
            </button>
</div>
</div>
</div>
</div>
</section>
<!-- HOW CLINICMANAGER WORKS -->
<section class="max-w-7xl mx-auto px-gutter-lg py-24 w-full">
<div class="text-center max-w-2xl mx-auto mb-space-2xl">
<span class="font-label-sm text-label-sm text-primary uppercase font-bold tracking-widest">Frictionless Workflow</span>
<h2 class="font-headline-lg text-headline-lg text-on-surface font-bold tracking-tight mt-1">Care in 4 Easy Steps</h2>
<p class="font-body-md text-body-md text-on-surface-variant mt-2">
        We streamlined the clinical scheduling pipeline, eliminating redundant intake paperwork and unconfirmed queues.
      </p>
</div>
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-space-lg relative">
<!-- Step 1 -->
<div class="bg-surface-container-lowest p-space-xl rounded-2xl shadow-sm hover:shadow-md transition-shadow relative">
<span class="font-display-lg text-display-lg text-surface-container-high font-black absolute top-4 right-4 leading-none select-none">01</span>
<div class="w-12 h-12 rounded-xl bg-primary-fixed text-primary flex items-center justify-center mb-space-lg">
<span class="material-symbols-outlined text-2xl">category</span>
</div>
<h3 class="font-title-md text-title-md text-on-surface font-bold">Choose Specialty</h3>
<p class="font-body-md text-body-md text-on-surface-variant mt-space-sm">
          Select from over 15 certified clinical departments tailored to your specific diagnostic and therapeutic needs.
        </p>
</div>
<!-- Step 2 -->
<div class="bg-surface-container-lowest p-space-xl rounded-2xl shadow-sm hover:shadow-md transition-shadow relative">
<span class="font-display-lg text-display-lg text-surface-container-high font-black absolute top-4 right-4 leading-none select-none">02</span>
<div class="w-12 h-12 rounded-xl bg-secondary-container text-on-secondary-container flex items-center justify-center mb-space-lg">
<span class="material-symbols-outlined text-2xl">person_search</span>
</div>
<h3 class="font-title-md text-title-md text-on-surface font-bold">Select Physician</h3>
<p class="font-body-md text-body-md text-on-surface-variant mt-space-sm">
          Review verified credentials, patient satisfaction metrics, clinical background, and affiliate hospital privileges.
        </p>
</div>
<!-- Step 3 -->
<div class="bg-surface-container-lowest p-space-xl rounded-2xl shadow-sm hover:shadow-md transition-shadow relative">
<span class="font-display-lg text-display-lg text-surface-container-high font-black absolute top-4 right-4 leading-none select-none">03</span>
<div class="w-12 h-12 rounded-xl bg-surface-variant text-tertiary flex items-center justify-center mb-space-lg">
<span class="material-symbols-outlined text-2xl">schedule</span>
</div>
<h3 class="font-title-md text-title-md text-on-surface font-bold">Pick Available Slot</h3>
<p class="font-body-md text-body-md text-on-surface-variant mt-space-sm">
          Select an exact 15-minute appointment block directly from the clinic's real-time synchronized EMR calendar.
        </p>
</div>
<!-- Step 4 -->
<div class="bg-surface-container-lowest p-space-xl rounded-2xl shadow-sm hover:shadow-md transition-shadow relative">
<span class="font-display-lg text-display-lg text-surface-container-high font-black absolute top-4 right-4 leading-none select-none">04</span>
<div class="w-12 h-12 rounded-xl bg-surface-container-high text-primary flex items-center justify-center mb-space-lg">
<span class="material-symbols-outlined text-2xl">mark_email_read</span>
</div>
<h3 class="font-title-md text-title-md text-on-surface font-bold">Instant SMS Confirmation</h3>
<p class="font-body-md text-body-md text-on-surface-variant mt-space-sm">
          Receive an automated SMS reminder with parking guidance, intake forms, and an immediate digital calendar sync.
        </p>
</div>
</div>
</section>
<!-- STATISTICS SECTION -->
<section class="bg-primary text-on-primary py-20 w-full relative overflow-hidden">
<div class="absolute -right-20 -bottom-20 w-96 h-96 rounded-full bg-primary-container/40 blur-3xl pointer-events-none"></div>
<div class="max-w-7xl mx-auto px-gutter-lg relative z-10">
<div class="grid grid-cols-2 lg:grid-cols-4 gap-space-xl text-center">
<!-- Stat 1 -->
<div class="flex flex-col items-center">
<p class="font-display-lg text-display-lg font-black tracking-tight text-white">48,000<span class="text-secondary-fixed">+</span></p>
<span class="font-label-lg text-label-lg text-primary-fixed mt-1">Appointments Booked</span>
</div>
<!-- Stat 2 -->
<div class="flex flex-col items-center">
<p class="font-display-lg text-display-lg font-black tracking-tight text-white">180<span class="text-secondary-fixed">+</span></p>
<span class="font-label-lg text-label-lg text-primary-fixed mt-1">Certified Board Physicians</span>
</div>
<!-- Stat 3 -->
<div class="flex flex-col items-center">
<p class="font-display-lg text-display-lg font-black tracking-tight text-white">15<span class="text-secondary-fixed">+</span></p>
<span class="font-label-lg text-label-lg text-primary-fixed mt-1">Specialized Departments</span>
</div>
<!-- Stat 4 -->
<div class="flex flex-col items-center">
<p class="font-display-lg text-display-lg font-black tracking-tight text-white">4.9<span class="text-secondary-fixed">/5</span></p>
<span class="font-label-lg text-label-lg text-primary-fixed mt-1">Average Patient Rating</span>
</div>
</div>
</div>
</section>
<!-- WHY CHOOSE US (Bento-style Feature Grid) -->
<section class="max-w-7xl mx-auto px-gutter-lg py-24 w-full">
<div class="flex flex-col md:flex-row md:items-end justify-between mb-space-2xl gap-space-md">
<div>
<span class="font-label-sm text-label-sm text-primary uppercase font-bold tracking-widest">Platform Integrity</span>
<h2 class="font-headline-lg text-headline-lg text-on-surface font-bold tracking-tight mt-1">Engineered for Clinical Precision</h2>
</div>
<p class="font-body-md text-body-md text-on-surface-variant max-w-md">
        Designed from the ground up to eradicate healthcare friction for both physicians and patients alike.
      </p>
</div>
<div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-3 gap-space-lg">
<!-- Card 1 -->
<div class="bg-surface-container-lowest p-space-xl rounded-2xl shadow-sm flex flex-col justify-between">
<div>
<div class="w-12 h-12 rounded-xl bg-secondary-container text-on-secondary-container flex items-center justify-center mb-space-lg">
<span class="material-symbols-outlined text-2xl">bolt</span>
</div>
<h3 class="font-headline-sm text-headline-sm text-on-surface font-bold">Instant Digital Confirmation</h3>
<p class="font-body-md text-body-md text-on-surface-variant mt-space-sm">
            Zero callback waiting times. Real-time availability links directly with physician schedules for guaranteed appointments.
          </p>
</div>
<div class="mt-space-lg pt-space-md border-t-0 bg-surface-container-low p-space-md rounded-xl flex items-center gap-space-sm">
<span class="material-symbols-outlined text-secondary text-xl">speed</span>
<span class="font-label-sm text-label-sm text-on-surface font-medium">Average confirmation speed: 8 seconds</span>
</div>
</div>
<!-- Card 2 -->
<div class="bg-surface-container-lowest p-space-xl rounded-2xl shadow-sm flex flex-col justify-between">
<div>
<div class="w-12 h-12 rounded-xl bg-primary-fixed text-primary flex items-center justify-center mb-space-lg">
<span class="material-symbols-outlined text-2xl">verified</span>
</div>
<h3 class="font-headline-sm text-headline-sm text-on-surface font-bold">Verified Board Specialists</h3>
<p class="font-body-md text-body-md text-on-surface-variant mt-space-sm">
            Every practitioner on our network undergoes credential verification, medical council cross-referencing, and continuous peer review.
          </p>
</div>
<div class="mt-space-lg pt-space-md bg-surface-container-low p-space-md rounded-xl flex items-center gap-space-sm">
<span class="material-symbols-outlined text-primary text-xl">badge</span>
<span class="font-label-sm text-label-sm text-on-surface font-medium">100% active state medical licensure</span>
</div>
</div>
<!-- Card 3 -->
<div class="bg-surface-container-lowest p-space-xl rounded-2xl shadow-sm flex flex-col justify-between">
<div>
<div class="w-12 h-12 rounded-xl bg-surface-variant text-tertiary flex items-center justify-center mb-space-lg">
<span class="material-symbols-outlined text-2xl">receipt_long</span>
</div>
<h3 class="font-headline-sm text-headline-sm text-on-surface font-bold">Direct Doctor Notes &amp; Rx</h3>
<p class="font-body-md text-body-md text-on-surface-variant mt-space-sm">
            Receive medical certificates, digital prescriptions, and post-consultation summaries pushed securely to your mobile wallet.
          </p>
</div>
<div class="mt-space-lg pt-space-md bg-surface-container-low p-space-md rounded-xl flex items-center gap-space-sm">
<span class="material-symbols-outlined text-tertiary text-xl">local_pharmacy</span>
<span class="font-label-sm text-label-sm text-on-surface font-medium">Automated pharmacy routing enabled</span>
</div>
</div>
<!-- Card 4 (Spans 2 cols on lg) -->
<div class="lg:col-span-2 bg-surface-container-lowest p-space-xl rounded-2xl shadow-sm flex flex-col md:flex-row gap-space-xl items-center">
<div class="flex-1 space-y-space-sm">
<div class="w-12 h-12 rounded-xl bg-error-container/60 text-error flex items-center justify-center mb-space-md">
<span class="material-symbols-outlined text-2xl">lock</span>
</div>
<h3 class="font-headline-sm text-headline-sm text-on-surface font-bold">256-bit Encrypted Health Records</h3>
<p class="font-body-md text-body-md text-on-surface-variant">
            Your laboratory findings, diagnostic images, and clinical histories are guarded by military-grade AES-256 at rest and in transit. You hold the encryption keys and can revoke clinic access at any time.
          </p>
<div class="flex flex-wrap items-center gap-space-md pt-space-sm">
<span class="inline-flex items-center gap-1.5 font-label-sm text-label-sm text-on-surface-variant bg-surface-container-high px-2.5 py-1 rounded-md">
<span class="material-symbols-outlined text-sm text-primary">check</span> Zero-Knowledge Architecture
            </span>
<span class="inline-flex items-center gap-1.5 font-label-sm text-label-sm text-on-surface-variant bg-surface-container-high px-2.5 py-1 rounded-md">
<span class="material-symbols-outlined text-sm text-primary">check</span> Patient-Controlled Access Logs
            </span>
</div>
</div>
<!-- Inline SVG Security Ring Graph -->
<div class="w-44 h-44 shrink-0 relative flex items-center justify-center">
<svg class="w-full h-full -rotate-90" viewbox="0 0 100 100">
<circle class="text-surface-container" cx="50" cy="50" fill="transparent" r="42" stroke="currentColor" stroke-width="8"></circle>
<circle class="text-primary" cx="50" cy="50" fill="transparent" r="42" stroke="currentColor" stroke-dasharray="264" stroke-dashoffset="14" stroke-linecap="round" stroke-width="8"></circle>
</svg>
<div class="absolute inset-0 flex flex-col items-center justify-center text-center">
<span class="material-symbols-outlined text-primary text-2xl">shield</span>
<span class="font-data-tabular text-data-tabular font-bold text-on-surface">100%</span>
<span class="font-label-sm text-label-sm text-outline">Encrypted</span>
</div>
</div>
</div>
<!-- Card 5 -->
<div class="bg-surface-container-lowest p-space-xl rounded-2xl shadow-sm flex flex-col justify-between">
<div>
<div class="w-12 h-12 rounded-xl bg-surface-container-high text-primary flex items-center justify-center mb-space-lg">
<span class="material-symbols-outlined text-2xl">support_agent</span>
</div>
<h3 class="font-headline-sm text-headline-sm text-on-surface font-bold">24/7 Clinical Triage Line</h3>
<p class="font-body-md text-body-md text-on-surface-variant mt-space-sm">
            Not sure which department you need? Speak directly with licensed registered nurses ready to route your acute symptoms.
          </p>
</div>
<a class="mt-space-lg text-primary font-label-lg text-label-lg font-semibold flex items-center gap-1 hover:underline" href="tel:5550192834">
          Connect with triage <span class="material-symbols-outlined text-base">call</span>
</a>
</div>
</div>
</section>
<!-- PATIENT TESTIMONIALS & FAQ SPLIT SECTION -->
<section class="bg-surface-container-low py-24 w-full">
<div class="max-w-7xl mx-auto px-gutter-lg">
<div class="grid grid-cols-1 lg:grid-cols-12 gap-gutter-lg">
<!-- TESTIMONIALS (Col 1-5) -->
<div class="lg:col-span-5 flex flex-col justify-between">
<div>
<span class="font-label-sm text-label-sm text-primary uppercase font-bold tracking-widest">Verified Patient Stories</span>
<h2 class="font-headline-lg text-headline-lg text-on-surface font-bold tracking-tight mt-1">Care That Changes Lives</h2>
<p class="font-body-md text-body-md text-on-surface-variant mt-2 mb-space-xl">
              Over 48,000 appointments managed with zero wait-room friction. Here is what our community shares.
            </p>
<!-- Testimonial Cards Carousel / Stack -->
<div class="space-y-space-md">
<!-- Item 1 -->
<div class="bg-surface-container-lowest p-space-lg rounded-2xl shadow-sm">
<div class="flex items-center gap-1 text-amber-500 mb-space-sm">
<span class="material-symbols-outlined text-sm" style="font-variation-settings: 'FILL' 1;">star</span>
<span class="material-symbols-outlined text-sm" style="font-variation-settings: 'FILL' 1;">star</span>
<span class="material-symbols-outlined text-sm" style="font-variation-settings: 'FILL' 1;">star</span>
<span class="material-symbols-outlined text-sm" style="font-variation-settings: 'FILL' 1;">star</span>
<span class="material-symbols-outlined text-sm" style="font-variation-settings: 'FILL' 1;">star</span>
</div>
<p class="font-body-md text-body-md text-on-surface italic">
                  “I booked Dr. Vance at 11:00 AM and was sitting in her downtown exam room by 2:30 PM. The MRI results were loaded to my phone before I even walked out the clinic doors.”
                </p>
<div class="flex items-center gap-space-sm mt-space-md pt-space-sm border-t-0">
<div class="w-10 h-10 rounded-full bg-secondary-container flex items-center justify-center font-bold text-on-secondary-container">
                    MT
                  </div>
<div>
<h4 class="font-title-md text-title-md text-on-surface font-semibold">Marcus Thornton</h4>
<p class="font-body-sm text-body-sm text-outline">Cardiology Patient • Downtown Tower</p>
</div>
</div>
</div>
<!-- Item 2 -->
<div class="bg-surface-container-lowest p-space-lg rounded-2xl shadow-sm">
<div class="flex items-center gap-1 text-amber-500 mb-space-sm">
<span class="material-symbols-outlined text-sm" style="font-variation-settings: 'FILL' 1;">star</span>
<span class="material-symbols-outlined text-sm" style="font-variation-settings: 'FILL' 1;">star</span>
<span class="material-symbols-outlined text-sm" style="font-variation-settings: 'FILL' 1;">star</span>
<span class="material-symbols-outlined text-sm" style="font-variation-settings: 'FILL' 1;">star</span>
<span class="material-symbols-outlined text-sm" style="font-variation-settings: 'FILL' 1;">star</span>
</div>
<p class="font-body-md text-body-md text-on-surface italic">
                  “Managing pediatric checks for two energetic toddlers used to be a nightmare of phone calls. ClinicManager made same-day twin appointments painless.”
                </p>
<div class="flex items-center gap-space-sm mt-space-md pt-space-sm border-t-0">
<div class="w-10 h-10 rounded-full bg-primary-fixed flex items-center justify-center font-bold text-primary">
                    CL
                  </div>
<div>
<h4 class="font-title-md text-title-md text-on-surface font-semibold">Claire Lindqvist</h4>
<p class="font-body-sm text-body-sm text-outline">Pediatric Care • Westside Pavilion</p>
</div>
</div>
</div>
</div>
</div>
</div>
<!-- FAQ ACCORDION (Col 6-12) -->
<div class="lg:col-span-7">
<div class="bg-surface-container-lowest p-space-xl rounded-2xl shadow-sm">
<span class="font-label-sm text-label-sm text-primary uppercase font-bold tracking-widest">Common Inquiries</span>
<h2 class="font-headline-md text-headline-md text-on-surface font-bold tracking-tight mt-1 mb-space-lg">Frequently Asked Questions</h2>
<div class="space-y-space-sm" id="faq-container">
<!-- FAQ 1 -->
<div class="rounded-xl bg-surface-container-low transition-all overflow-hidden">
<button class="w-full p-space-md text-left flex items-center justify-between font-title-md text-title-md font-semibold text-on-surface" onclick="toggleFaq(this)">
<span>How quickly can I see a physician after booking?</span>
<span class="material-symbols-outlined transition-transform duration-200 text-outline">expand_more</span>
</button>
<div class="px-space-md pb-space-md font-body-md text-body-md text-on-surface-variant hidden">
                  Same-day slots are frequently open across our metropolitan facilities. Many patients book and arrive for their consultation within 2 to 4 hours. You can view all real-time open slots on our doctor profiles.
                </div>
</div>
<!-- FAQ 2 -->
<div class="rounded-xl bg-surface-container-low transition-all overflow-hidden">
<button class="w-full p-space-md text-left flex items-center justify-between font-title-md text-title-md font-semibold text-on-surface" onclick="toggleFaq(this)">
<span>Do I need a prior referral to schedule an appointment?</span>
<span class="material-symbols-outlined transition-transform duration-200 text-outline">expand_more</span>
</button>
<div class="px-space-md pb-space-md font-body-md text-body-md text-on-surface-variant hidden">
                  Most of our specialty departments (including Dermatology, Cardiology, and Pediatrics) allow direct patient booking without an external general practitioner referral. Specific insurance providers may vary; please verify during insurance check-in.
                </div>
</div>
<!-- FAQ 3 -->
<div class="rounded-xl bg-surface-container-low transition-all overflow-hidden">
<button class="w-full p-space-md text-left flex items-center justify-between font-title-md text-title-md font-semibold text-on-surface" onclick="toggleFaq(this)">
<span>How are my health records kept HIPAA compliant?</span>
<span class="material-symbols-outlined transition-transform duration-200 text-outline">expand_more</span>
</button>
<div class="px-space-md pb-space-md font-body-md text-body-md text-on-surface-variant hidden">
                  Our architecture implements zero-trust access controls, hardware-level encryption (AES-256), and end-to-end audit logging compliant with both HIPAA standards and ISO 27001 data sovereignty specifications.
                </div>
</div>
<!-- FAQ 4 -->
<div class="rounded-xl bg-surface-container-low transition-all overflow-hidden">
<button class="w-full p-space-md text-left flex items-center justify-between font-title-md text-title-md font-semibold text-on-surface" onclick="toggleFaq(this)">
<span>Can I cancel or reschedule without penalty fees?</span>
<span class="material-symbols-outlined transition-transform duration-200 text-outline">expand_more</span>
</button>
<div class="px-space-md pb-space-md font-body-md text-body-md text-on-surface-variant hidden">
                  Yes. Appointments may be rescheduled or canceled with one click through the patient portal up to 2 hours prior to the scheduled time without incurring any administrative penalty.
                </div>
</div>
<!-- FAQ 5 -->
<div class="rounded-xl bg-surface-container-low transition-all overflow-hidden">
<button class="w-full p-space-md text-left flex items-center justify-between font-title-md text-title-md font-semibold text-on-surface" onclick="toggleFaq(this)">
<span>Does ClinicManager accept my health insurance?</span>
<span class="material-symbols-outlined transition-transform duration-200 text-outline">expand_more</span>
</button>
<div class="px-space-md pb-space-md font-body-md text-body-md text-on-surface-variant hidden">
                  We contract with over 45 national and regional health insurance plans including BlueCross, Aetna, UnitedHealthcare, Cigna, Medicare, and regional HMO networks. Direct self-pay rates are also transparently displayed before confirmation.
                </div>
</div>
</div>
</div>
</div>
</div>
</div>
</section>
<!-- CLEAN CONTACT & CONSULTATION BOOKING BANNER -->
<section class="max-w-7xl mx-auto px-gutter-lg py-20 w-full">
<div class="relative rounded-3xl bg-gradient-to-r from-primary to-primary-container p-space-2xl text-on-primary overflow-hidden shadow-xl">
<!-- Decorative Backdrop Circles -->
<div class="absolute -right-24 -top-24 w-80 h-80 rounded-full bg-white/10 blur-2xl pointer-events-none"></div>
<div class="absolute -left-16 -bottom-16 w-64 h-64 rounded-full bg-secondary-container/20 blur-2xl pointer-events-none"></div>
<div class="relative z-10 grid grid-cols-1 lg:grid-cols-12 gap-space-xl items-center">
<div class="lg:col-span-8 space-y-space-md">
<span class="inline-flex items-center gap-1.5 px-3 py-1 rounded-full bg-white/15 text-white font-label-sm text-label-sm font-semibold tracking-wider uppercase backdrop-blur-sm">
            Immediate Consultations Available
          </span>
<h2 class="font-headline-xl text-headline-xl text-white font-extrabold tracking-tight">
            Ready to prioritize your clinical well-being?
          </h2>
<p class="font-body-lg text-body-lg text-primary-fixed max-w-xl">
            Book an appointment today with an accredited specialist or speak directly with our clinical routing desk for guidance on your specific diagnosis.
          </p>
<div class="flex flex-wrap items-center gap-space-md pt-space-xs">
<a class="px-6 py-3.5 rounded-lg bg-surface-container-lowest text-primary font-label-lg text-label-lg font-bold shadow-md hover:bg-surface-container-low transition-all" href="#quick-search">
              Book Appointment Now
            </a>
<a class="px-6 py-3.5 rounded-lg bg-white/10 hover:bg-white/20 text-white font-label-lg text-label-lg font-semibold transition-all flex items-center gap-2" href="tel:18005550199">
<span class="material-symbols-outlined text-lg">call</span>
              1-800-555-0199 (Toll-Free)
            </a>
</div>
</div>
<div class="lg:col-span-4 flex flex-col bg-white/10 backdrop-blur-md p-space-lg rounded-2xl space-y-space-sm text-white">
<div class="flex items-center gap-space-sm">
<span class="material-symbols-outlined text-2xl text-secondary-fixed">schedule</span>
<div>
<p class="font-title-md text-title-md font-bold">Clinical Care Hours</p>
<p class="font-body-sm text-body-sm text-primary-fixed">Mon - Sun: 07:00 - 22:00 EST</p>
</div>
</div>
<div class="flex items-center gap-space-sm pt-space-xs border-t-0">
<span class="material-symbols-outlined text-2xl text-secondary-fixed">emergency</span>
<div>
<p class="font-title-md text-title-md font-bold">Acute Urgent Care</p>
<p class="font-body-sm text-body-sm text-primary-fixed">24/7 Virtual Emergency Triage</p>
</div>
</div>
</div>
</div>
</div>
</section>
<!-- QUICK APPOINTMENT TOAST MODAL (Vanilla JS Interactive) -->
<div class="fixed inset-0 z-50 flex items-center justify-center bg-inverse-surface/40 backdrop-blur-sm hidden" id="booking-modal">
<div class="bg-surface-container-lowest rounded-2xl p-space-xl max-w-md w-full mx-4 shadow-xl space-y-space-lg animate-fade-in">
<div class="flex items-center justify-between">
<div class="flex items-center gap-2">
<div class="w-8 h-8 rounded-lg bg-secondary-container text-on-secondary-container flex items-center justify-center">
<span class="material-symbols-outlined text-lg">event_available</span>
</div>
<h3 class="font-title-md text-title-md text-on-surface font-bold">Confirm Instant Booking</h3>
</div>
<button class="text-outline hover:text-on-surface" onclick="closeBookingModal()">
<span class="material-symbols-outlined">close</span>
</button>
</div>
<div class="bg-surface-container-low p-space-md rounded-xl space-y-1">
<p class="font-title-md text-title-md text-on-surface font-bold" id="modal-doctor-name">Dr. Evelyn Vance</p>
<p class="font-body-sm text-body-sm text-primary font-medium" id="modal-department">Cardiology Specialist</p>
<p class="font-body-sm text-body-sm text-outline font-semibold" id="modal-slot">Today, 14:30</p>
</div>
<div class="space-y-space-sm">
<label class="font-label-sm text-label-sm text-on-surface font-medium">Your Full Legal Name</label>
<input class="w-full h-10 px-3 rounded-lg bg-surface-container-low font-body-md text-body-md text-on-surface focus:outline-none focus:bg-surface-container-high transition-colors" placeholder="e.g. Jordan Miller" type="text"/>
<label class="font-label-sm text-label-sm text-on-surface font-medium mt-2">Mobile Phone (for instant SMS pass)</label>
<input class="w-full h-10 px-3 rounded-lg bg-surface-container-low font-body-md text-body-md text-on-surface focus:outline-none focus:bg-surface-container-high transition-colors" placeholder="+1 (555) 000-0000" type="tel"/>
</div>
<div class="flex items-center gap-space-sm pt-space-xs">
<button class="flex-1 h-10 rounded-lg bg-surface-container-high text-on-surface font-label-md text-label-md hover:bg-surface-variant transition-colors" onclick="closeBookingModal()">
          Cancel
        </button>
<button class="flex-1 h-10 rounded-lg bg-primary text-on-primary font-label-md text-label-md hover:bg-primary-container transition-colors shadow-sm" onclick="submitBooking()">
          Reserve Appointment
        </button>
</div>
</div>
</div>
<!-- TOAST FEEDBACK NOTIFICATION -->
<div class="fixed bottom-6 right-6 z-50 bg-inverse-surface text-inverse-on-surface px-space-lg py-space-md rounded-xl shadow-xl flex items-center gap-space-sm transition-all duration-300 transform translate-y-24 opacity-0 pointer-events-none" id="booking-toast">
<span class="material-symbols-outlined text-secondary-fixed">check_circle</span>
<span class="font-body-md text-body-md" id="toast-message">Search parameters updated. 12 doctors match your criteria!</span>
</div>
<script>
    // FAQ Accordion Toggle
    function toggleFaq(button) {
      const content = button.nextElementSibling;
      const icon = button.querySelector('.material-symbols-outlined');
      const isHidden = content.classList.contains('hidden');

      // Close all others
      document.querySelectorAll('#faq-container .px-space-md').forEach(el => el.classList.add('hidden'));
      document.querySelectorAll('#faq-container .material-symbols-outlined').forEach(el => el.style.transform = 'rotate(0deg)');

      if (isHidden) {
        content.classList.remove('hidden');
        icon.style.transform = 'rotate(180deg)';
      }
    }

    // Modal Interaction
    function openBookingModal(name, dept, slot) {
      document.getElementById('modal-doctor-name').innerText = name;
      document.getElementById('modal-department').innerText = dept;
      document.getElementById('modal-slot').innerText = slot;
      document.getElementById('booking-modal').classList.remove('hidden');
    }

    function closeBookingModal() {
      document.getElementById('booking-modal').classList.add('hidden');
    }

    function submitBooking() {
      closeBookingModal();
      showToast('Booking confirmed! Instant SMS reminder and directions sent.');
    }

    function highlightBookingToast() {
      showToast('Filtering available specialists for selected hub and date...');
    }

    function showToast(message) {
      const toast = document.getElementById('booking-toast');
      const text = document.getElementById('toast-message');
      text.innerText = message;
      toast.classList.remove('translate-y-24', 'opacity-0', 'pointer-events-none');
      setTimeout(() => {
        toast.classList.add('translate-y-24', 'opacity-0', 'pointer-events-none');
      }, 3500);
    }
  </script>
</div></main><footer class="w-full bg-surface-container-lowest shadow-[0_-1px_4px_rgba(0,0,0,0.02)] mt-space-2xl py-space-xl"><div class="max-w-7xl mx-auto px-gutter-lg flex flex-col md:flex-row items-center justify-between gap-space-md text-on-surface-variant"><div class="flex items-center gap-space-sm"><span class="font-title-md text-title-md text-primary font-bold">ClinicManager</span><span class="font-body-sm text-body-sm text-outline">© 2024 Metropolis Health System. All rights reserved. HIPAA Compliant.</span></div><div class="flex items-center gap-space-md font-label-md text-label-md text-outline"><a class="hover:text-on-surface transition-colors" href="#">Privacy Practices</a><a class="hover:text-on-surface transition-colors" href="#">Terms of Clinical Care</a><a class="hover:text-on-surface transition-colors" href="#">Emergency Contact</a></div></div></footer></body></html>