<%-- Servlet: LoginServlet (GET /login shows form, POST /login submits). Attributes: error, email (kept after a failed attempt) --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<c:set var="pageTitle" value="Sign in - ClinicManager"/>
<c:set var="activeMenu" value="login"/>
<c:set var="hideMenu" value="true"/>
<c:set var="bodyClass" value="min-h-screen flex flex-col"/>
<c:set var="mainClass" value="flex-1 flex items-center justify-center p-gutter"/>
<%@ include file="/WEB-INF/views/common/header.jspf" %>
<%@ include file="/WEB-INF/views/common/navbar.jspf" %>

<div class="w-full max-w-md flex flex-col gap-space-md">
    <a class="inline-flex items-center gap-space-xs text-on-surface-variant hover:text-primary font-label-md transition-colors"
       href="${ctx}/home">
        <span class="material-symbols-outlined text-[18px]">arrow_back</span> Back to home
    </a>

    <div class="bg-surface-container-lowest rounded-xl shadow-xl shadow-surface-dim/40 overflow-hidden">
        <div class="h-1.5 w-full bg-gradient-to-r from-primary via-secondary to-primary-container"></div>
        <div class="p-gutter-lg flex flex-col gap-space-lg">

            <div class="text-center">
                <h1 class="font-headline-lg text-headline-lg font-bold text-on-surface">Sign in</h1>
                <p class="font-body-md text-on-surface-variant mt-1">Access your appointments and medical history.</p>
            </div>

            <c:if test="${not empty error}">
                <div class="flex items-center gap-space-xs px-space-md py-space-sm rounded-lg bg-error-container text-on-error-container font-body-md"
                     role="alert">
                    <span class="material-symbols-outlined text-[18px]">error</span>
                    <span><c:out value="${error}"/></span>
                </div>
            </c:if>
            <c:if test="${param.registered == '1'}">
                <div class="flex items-center gap-space-xs px-space-md py-space-sm rounded-lg bg-secondary-container text-on-secondary-container font-body-md"
                     role="status">
                    <span class="material-symbols-outlined text-[18px]">check_circle</span>
                    <span>Account created. You can now sign in.</span>
                </div>
            </c:if>

            <%-- Submit = POST /login --%>
            <form class="flex flex-col gap-space-md" action="${ctx}/login" method="post">
                <div class="flex flex-col gap-1.5">
                    <label class="font-label-md text-on-surface font-semibold" for="email">Email</label>
                    <div class="relative flex items-center">
                        <span class="material-symbols-outlined absolute left-3 text-outline text-[20px] pointer-events-none">mail</span>
                        <input class="w-full pl-10 pr-3 py-2 bg-surface-container-low text-on-surface rounded-lg placeholder:text-outline focus:outline-none focus:ring-2 focus:ring-primary transition-all"
                               id="email" name="email" type="email" required autocomplete="email"
                               placeholder="name@example.com" value="<c:out value='${email}'/>"/>
                    </div>
                </div>

                <div class="flex flex-col gap-1.5">
                    <label class="font-label-md text-on-surface font-semibold" for="password">Password</label>
                    <div class="relative flex items-center">
                        <span class="material-symbols-outlined absolute left-3 text-outline text-[20px] pointer-events-none">lock</span>
                        <input class="w-full pl-10 pr-10 py-2 bg-surface-container-low text-on-surface rounded-lg placeholder:text-outline focus:outline-none focus:ring-2 focus:ring-primary transition-all"
                               id="password" name="password" type="password" required minlength="6"
                               autocomplete="current-password"
                               placeholder="At least 6 characters"/>
                        <button class="absolute right-3 text-outline hover:text-on-surface p-1 rounded transition-colors"
                                type="button"
                                title="Show or hide password" onclick="togglePassword('password','pwd-eye')">
                            <span class="material-symbols-outlined text-[18px]" id="pwd-eye">visibility</span>
                        </button>
                    </div>
                </div>

                <button class="w-full h-11 bg-primary hover:bg-primary-container text-on-primary font-label-lg rounded-lg shadow-md transition-all flex items-center justify-center gap-2"
                        type="submit">
                    Sign in <span class="material-symbols-outlined text-[20px]">arrow_forward</span>
                </button>
            </form>

            <p class="text-center font-body-md text-on-surface-variant">
                New patient? <a class="text-primary font-semibold hover:underline" href="${ctx}/register">Create an
                account</a>
            </p>
        </div>
    </div>
</div>

<%@ include file="/WEB-INF/views/common/footer.jspf" %>