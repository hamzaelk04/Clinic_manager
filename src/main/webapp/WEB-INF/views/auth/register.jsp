<%-- Servlet: RegisterServlet (GET /register shows form, POST /register submits). Attributes: error, and pre-filled fields if failed --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<c:set var="pageTitle" value="Create Account - ClinicManager"/>
<c:set var="activeMenu" value="register"/>
<c:set var="hideMenu" value="true"/>
<c:set var="bodyClass"
       value="min-h-screen flex flex-col justify-between bg-background font-body-md text-body-md text-on-surface antialiased"/>
<c:set var="mainClass" value="w-full flex-1 flex items-center justify-center p-gutter"/>
<%@ include file="/WEB-INF/views/common/header.jspf" %>
<%@ include file="/WEB-INF/views/common/navbar.jspf" %>


<div class="w-full max-w-md flex flex-col gap-space-md">
    <a class="inline-flex items-center gap-space-xs text-on-surface-variant hover:text-primary font-label-md transition-colors"
       href="${ctx}/home">
        <span class="material-symbols-outlined text-[18px]">arrow_back</span> Back to home
    </a>
    <div class="flex flex-col w-full items-center justify-center py-space-md">
        <!-- Decorative Ambient Glow Behind Card -->
        <div class="relative w-full max-w-2xl">
            <div class="absolute -top-12 -left-12 w-64 h-64 bg-primary/10 rounded-full blur-3xl pointer-events-none"></div>
            <div class="absolute -bottom-10 -right-10 w-72 h-72 bg-secondary/10 rounded-full blur-3xl pointer-events-none"></div>

            <!-- Main Registration Container -->
            <div class="relative bg-surface-container-lowest rounded-xl shadow-xl p-space-lg sm:p-space-xl transition-all">

                <!-- Header & Branding Block -->
                <div class="text-center flex flex-col items-center">
                    <h1 class="font-headline-md text-headline-md text-on-surface mt-space-xs tracking-tight">
                        Create Secure Patient Profile
                    </h1>
                </div>

                <!-- Error Message Display Area -->
                <c:if test="${not empty error}">
                    <div class="mt-space-md flex items-center gap-space-xs px-space-md py-space-sm rounded-lg bg-error-container text-on-error-container font-body-md"
                         role="alert">
                        <span class="material-symbols-outlined text-[18px]">error</span>
                        <span><c:out value="${error}"/></span>
                    </div>
                </c:if>

                <!-- Registration Form -->
                <form class="mt-space-lg flex flex-col gap-space-md" id="registrationForm" action="${ctx}/register"
                      method="post">
                    <!-- Name Grid -->
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-space-md">
                        <div class="flex flex-col gap-space-xxs">
                            <label class="font-label-md text-label-md text-on-surface font-medium flex items-center justify-between"
                                   for="firstName">
                                <span>Legal First Name <span class="text-error">*</span></span>
                            </label>
                            <div class="relative flex items-center">
                                <span class="material-symbols-outlined absolute left-3 text-outline text-[18px]">badge</span>
                                <input class="w-full h-10 pl-9 pr-3 rounded-lg bg-surface-container-lowest text-on-surface font-body-md text-body-md shadow-sm outline-none transition-all placeholder:text-outline focus:shadow-[0_0_0_2px_rgba(0,97,148,0.25)]"
                                       id="firstName" name="firstName" placeholder="e.g. Sarah" required type="text"
                                       value="<c:out value='${firstName}'/>"/>
                            </div>
                        </div>

                        <div class="flex flex-col gap-space-xxs">
                            <label class="font-label-md text-label-md text-on-surface font-medium flex items-center justify-between"
                                   for="lastName">
                                <span>Legal Last Name <span class="text-error">*</span></span>
                            </label>
                            <div class="relative flex items-center">
                                <span class="material-symbols-outlined absolute left-3 text-outline text-[18px]">person</span>
                                <input class="w-full h-10 pl-9 pr-3 rounded-lg bg-surface-container-lowest text-on-surface font-body-md text-body-md shadow-sm outline-none transition-all placeholder:text-outline focus:shadow-[0_0_0_2px_rgba(0,97,148,0.25)]"
                                       id="lastName" name="lastName" placeholder="e.g. Jenkins" required type="text"
                                       value="<c:out value='${lastName}'/>"/>
                            </div>
                        </div>
                    </div>

                    <!-- Contact Information Grid -->
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-space-md">
                        <div class="flex flex-col gap-space-xxs">
                            <label class="font-label-md text-label-md text-on-surface font-medium flex items-center justify-between"
                                   for="patientEmail">
                                <span>Email Address <span class="text-error">*</span></span>
                            </label>
                            <div class="relative flex items-center">
                                <span class="material-symbols-outlined absolute left-3 text-outline text-[18px]">mail</span>
                                <input class="w-full h-10 pl-9 pr-8 rounded-lg bg-surface-container-lowest text-on-surface font-body-md text-body-md shadow-sm outline-none transition-all placeholder:text-outline focus:shadow-[0_0_0_2px_rgba(0,97,148,0.25)]"
                                       id="patientEmail" name="email" placeholder="sarah.jenkins@patient.org" required
                                       type="email" value="<c:out value='${email}'/>"/>
                                <span class="material-symbols-outlined absolute right-2.5 text-secondary text-[18px] hidden"
                                      id="emailCheck">check_circle</span>
                            </div>
                        </div>

                        <div class="flex flex-col gap-space-xxs">
                            <label class="font-label-md text-label-md text-on-surface font-medium flex items-center justify-between"
                                   for="patientPhone">
                                <span>Mobile Phone Number <span class="text-error">*</span></span>
                            </label>
                            <div class="relative flex items-center">
                                <span class="material-symbols-outlined absolute left-3 text-outline text-[18px]">call</span>
                                <input class="w-full h-10 pl-9 pr-3 rounded-lg bg-surface-container-lowest text-on-surface font-body-md text-body-md shadow-sm outline-none transition-all placeholder:text-outline focus:shadow-[0_0_0_2px_rgba(0,97,148,0.25)]"
                                       id="patientPhone" name="phone" placeholder="+212 658483828" required
                                       type="tel"
                                       value="<c:out value='${phone}'/>"/>
                            </div>
                        </div>
                    </div>

                    <!-- EMR Medical Link Identifier (Optional) -->
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-space-md p-space-sm bg-surface-container-low rounded-lg">
                        <div class="flex flex-col gap-space-xxs">
                            <label class="font-label-md text-label-md text-on-surface font-medium flex items-center justify-between"
                                   for="patientCIN">
                                <span>National Health ID / CIN</span>
                                <span class="font-label-sm text-label-sm text-outline font-normal">Optional</span>
                            </label>
                            <div class="relative flex items-center">
                                <span class="material-symbols-outlined absolute left-3 text-outline text-[18px]">fingerprint</span>
                                <input class="w-full h-10 pl-9 pr-3 rounded-lg bg-surface-container-lowest text-on-surface font-data-tabular text-data-tabular shadow-sm outline-none transition-all placeholder:text-outline focus:shadow-[0_0_0_2px_rgba(0,97,148,0.25)]"
                                       id="patientCIN" name="cin" placeholder="e.g. NH-98214-X" type="text"
                                       value="<c:out value='${cin}'/>"/>
                            </div>
                        </div>
                    </div>

                    <!-- Password Configuration -->
                    <div class="grid grid-cols-1 sm:grid-cols-2 gap-space-md">
                        <div class="flex flex-col gap-space-xxs">
                            <label class="font-label-md text-label-md text-on-surface font-medium flex items-center justify-between"
                                   for="patientPass">
                                <span>Create Password <span class="text-error">*</span></span>
                            </label>
                            <div class="relative flex items-center">
                                <span class="material-symbols-outlined absolute left-3 text-outline text-[18px]">lock</span>
                                <input class="w-full h-10 pl-9 pr-10 rounded-lg bg-surface-container-lowest text-on-surface font-body-md text-body-md shadow-sm outline-none transition-all placeholder:text-outline focus:shadow-[0_0_0_2px_rgba(0,97,148,0.25)]"
                                       id="patientPass" name="password" oninput="validatePassword(this.value)"
                                       placeholder="••••••••••••" required type="password"/>
                                <button class="absolute right-3 text-outline hover:text-on-surface flex items-center transition-colors"
                                        onclick="togglePasswordVisibility('patientPass', 'passEyeIcon')" type="button">
                                    <span class="material-symbols-outlined text-[18px]"
                                          id="passEyeIcon">visibility</span>
                                </button>
                            </div>
                        </div>

                        <div class="flex flex-col gap-space-xxs">
                            <label class="font-label-md text-label-md text-on-surface font-medium flex items-center justify-between"
                                   for="confirmPass">
                                <span>Confirm Password <span class="text-error">*</span></span>
                                <span class="font-label-sm text-label-sm hidden text-secondary font-semibold"
                                      id="matchStatus">Matched</span>
                            </label>
                            <div class="relative flex items-center">
                                <span class="material-symbols-outlined absolute left-3 text-outline text-[18px]">lock_reset</span>
                                <input class="w-full h-10 pl-9 pr-10 rounded-lg bg-surface-container-lowest text-on-surface font-body-md text-body-md shadow-sm outline-none transition-all placeholder:text-outline focus:shadow-[0_0_0_2px_rgba(0,97,148,0.25)]"
                                       id="confirmPass" name="confirmPassword" oninput="checkPasswordMatch()"
                                       placeholder="••••••••••••" required type="password"/>
                                <button class="absolute right-3 text-outline hover:text-on-surface flex items-center transition-colors"
                                        onclick="togglePasswordVisibility('confirmPass', 'confirmEyeIcon')"
                                        type="button">
                                <span class="material-symbols-outlined text-[18px]"
                                      id="confirmEyeIcon">visibility</span>
                                </button>
                            </div>
                        </div>
                    </div>

                    <!-- Password Strength Tracker -->
                    <div class="p-space-sm bg-surface-container rounded-lg flex flex-col gap-space-xs">
                        <div class="flex items-center justify-between">
                            <span class="font-label-sm text-label-sm text-on-surface-variant font-medium">Password Security Strength</span>
                            <span class="font-label-sm text-label-sm font-semibold text-outline" id="strengthLabel">Enter password</span>
                        </div>
                        <div class="w-full h-1.5 bg-surface-container-high rounded-full overflow-hidden flex gap-1">
                            <div class="h-full w-1/4 bg-surface-container-highest transition-all duration-300"
                                 id="meter1"></div>
                            <div class="h-full w-1/4 bg-surface-container-highest transition-all duration-300"
                                 id="meter2"></div>
                            <div class="h-full w-1/4 bg-surface-container-highest transition-all duration-300"
                                 id="meter3"></div>
                            <div class="h-full w-1/4 bg-surface-container-highest transition-all duration-300"
                                 id="meter4"></div>
                        </div>
                        <div class="grid grid-cols-2 sm:grid-cols-4 gap-2 pt-1 font-label-sm text-label-sm text-outline">
                            <div class="flex items-center gap-1" id="req-len">
                                <span class="material-symbols-outlined text-[14px]">radio_button_unchecked</span> 8+
                                Chars
                            </div>
                            <div class="flex items-center gap-1" id="req-upper">
                                <span class="material-symbols-outlined text-[14px]">radio_button_unchecked</span> 1
                                Uppercase
                            </div>
                            <div class="flex items-center gap-1" id="req-num">
                                <span class="material-symbols-outlined text-[14px]">radio_button_unchecked</span> 1
                                Number
                            </div>
                            <div class="flex items-center gap-1" id="req-sym">
                                <span class="material-symbols-outlined text-[14px]">radio_button_unchecked</span> 1
                                Symbol
                            </div>
                        </div>
                    </div>

                    <!-- Submit Button -->
                    <div class="mt-space-sm flex flex-col gap-space-sm">
                        <button class="w-full h-11 bg-primary hover:bg-primary-container text-on-primary font-title-md text-title-md rounded-lg shadow-md transition-all flex items-center justify-center gap-space-sm active:scale-[0.99] focus:outline-none focus:ring-2 focus:ring-offset-2 focus:ring-primary"
                                type="submit">
                            <span>Complete Registration &amp; Create Account</span>
                            <span class="material-symbols-outlined text-[20px]">arrow_forward</span>
                        </button>

                        <div class="text-center mt-space-xs">
                            <span class="font-body-sm text-body-sm text-outline">Already enrolled with ClinicManager?</span>
                            <a class="font-title-md text-body-md text-primary hover:text-primary-container font-semibold ml-1.5 transition-colors"
                               href="${ctx}/login">
                                Sign in to Portal
                            </a>
                        </div>
                    </div>
                </form>

            </div>
        </div>
    </div>
</div>
<script src="${ctx}/assets/js/registration.js"></script>
<%@ include file="/WEB-INF/views/common/footer.jspf" %>