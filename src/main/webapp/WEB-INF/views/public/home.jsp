<%-- Servlet: HomeServlet (GET /home). Request attributes: specialties (List<SpecialtyDTO>), featuredDoctors (List<DoctorDTO>) --%>
<%@ page contentType="text/html;charset=UTF-8" language="java" %>
<%@ taglib prefix="c" uri="jakarta.tags.core" %>
<%@ taglib prefix="fn" uri="jakarta.tags.functions" %>
<c:set var="pageTitle" value="ClinicManager - Your health, managed simply"/>
<c:set var="activeMenu" value="home"/>
<%@ include file="/WEB-INF/views/common/header.jspf" %>
<%@ include file="/WEB-INF/views/common/navbar.jspf" %>

<%-- HERO --%>
<div class="relative w-full overflow-hidden bg-surface-container-lowest">
    <div class="absolute -top-40 right-0 w-[580px] h-[580px] bg-secondary-container/30 rounded-full blur-3xl pointer-events-none"></div>
    <div class="absolute top-20 -left-20 w-[420px] h-[420px] bg-primary-fixed/40 rounded-full blur-3xl pointer-events-none"></div>
    <section class="relative z-10 max-w-7xl mx-auto px-gutter-lg pt-12 pb-20 lg:pt-16 lg:pb-28">
        <div class="grid grid-cols-1 lg:grid-cols-12 gap-gutter-lg items-center">
            <div class="lg:col-span-7 flex flex-col items-start space-y-space-lg">
                <h1 class="font-display-lg text-display-lg text-on-surface font-extrabold tracking-tight max-w-2xl">
                    Your health, <br class="hidden sm:inline"/><span class="text-primary">managed simply.</span>
                </h1>
                <p class="font-body-lg text-body-lg text-on-surface-variant max-w-xl">
                    Book appointments with our specialists, follow your medical history and manage everything from one portal.
                </p>
                <div class="flex flex-wrap items-center gap-space-md pt-space-xs">
                    <a class="px-6 py-3.5 rounded-lg bg-primary text-on-primary font-label-lg text-label-lg shadow-md hover:bg-primary-container transition-all flex items-center gap-space-xs" href="#quick-search">
                        <span class="material-symbols-outlined text-lg">calendar_month</span> Book an appointment
                    </a>
                    <a class="px-6 py-3.5 rounded-lg bg-surface-container-high text-on-surface font-label-lg text-label-lg hover:bg-surface-variant transition-all flex items-center gap-space-xs" href="${ctx}/doctors">
                        <span class="material-symbols-outlined text-lg">person_search</span> Find a doctor
                    </a>
                </div>
            </div>
            <div class="lg:col-span-5 flex justify-center lg:justify-end mt-8 lg:mt-0">
                <div class="w-full max-w-md aspect-[4/5] rounded-3xl overflow-hidden shadow-xl bg-surface-container">
                    <img class="w-full h-full object-cover" alt="Physician in a modern clinic corridor" src="${ctx}/assets/img/hero.jpg"/>
                </div>
            </div>
        </div>
    </section>
</div>

<%-- SEARCH DOCK: plain GET form -> BookAppointmentServlet --%>
<div class="max-w-7xl mx-auto px-gutter-lg w-full -mt-8 relative z-20" id="quick-search">
    <div class="bg-surface-container-lowest rounded-2xl shadow-xl p-space-lg">
        <h2 class="font-title-md text-title-md text-on-surface font-bold pb-space-md">Find a specialist</h2>
        <form class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-space-md items-end" action="${ctx}/patient/appointments/new" method="get">
            <div class="flex flex-col space-y-1.5">
                <label class="font-label-sm text-label-sm text-on-surface-variant" for="specialtyId">Specialty</label>
                <select id="specialtyId" name="specialtyId" class="w-full h-11 px-3 bg-surface-container-low rounded-lg focus:outline-none focus:bg-surface-container-high">
                    <c:forEach var="s" items="${specialties}">
                        <option value="${s.id}"><c:out value="${s.name}"/></option>
                    </c:forEach>
                </select>
            </div>
            <div class="flex flex-col space-y-1.5">
                <label class="font-label-sm text-label-sm text-on-surface-variant" for="doctorName">Physician name</label>
                <input id="doctorName" name="doctorName" type="text" placeholder="e.g. Dr. Reynolds" class="w-full h-11 px-3 bg-surface-container-low rounded-lg focus:outline-none focus:bg-surface-container-high"/>
            </div>
            <div class="flex flex-col space-y-1.5">
                <label class="font-label-sm text-label-sm text-on-surface-variant" for="date">Preferred date</label>
                <input id="date" name="date" type="date" class="w-full h-11 px-3 bg-surface-container-low rounded-lg focus:outline-none focus:bg-surface-container-high"/>
            </div>
            <button class="h-11 w-full bg-primary text-on-primary rounded-lg font-label-lg font-semibold hover:bg-primary-container transition-all flex items-center justify-center gap-space-xs" type="submit">
                <span class="material-symbols-outlined text-lg">search</span> Find specialists
            </button>
        </form>
    </div>
</div>

<%-- SPECIALTIES (dynamic) --%>
<section class="max-w-7xl mx-auto px-gutter-lg pt-24 pb-16 w-full">
    <h2 class="font-headline-lg text-headline-lg text-on-surface font-bold tracking-tight mb-space-xl">Explore our specialties</h2>
    <div class="grid grid-cols-2 md:grid-cols-3 lg:grid-cols-6 gap-space-md">
        <c:forEach var="s" items="${specialties}">
            <a class="group bg-surface-container-lowest p-space-lg rounded-2xl shadow-sm hover:shadow-md hover:bg-surface-container-low transition-all flex flex-col items-center text-center"
               href="${ctx}/patient/appointments/new?specialtyId=${s.id}">
                <div class="w-14 h-14 rounded-xl bg-primary-fixed text-primary flex items-center justify-center mb-space-md group-hover:scale-110 transition-transform">
                    <span class="material-symbols-outlined text-3xl"><c:out value="${empty s.icon ? 'medical_services' : s.icon}"/></span>
                </div>
                <h3 class="font-title-md text-title-md text-on-surface font-semibold group-hover:text-primary transition-colors"><c:out value="${s.name}"/></h3>
                <p class="font-label-sm text-label-sm text-outline mt-1">${s.doctorCount} doctors</p>
            </a>
        </c:forEach>
    </div>
</section>

<%-- FEATURED DOCTORS (dynamic) --%>
<section class="bg-surface-container-low py-20 w-full" id="doctors">
    <div class="max-w-7xl mx-auto px-gutter-lg">
        <h2 class="font-headline-lg text-headline-lg text-on-surface font-bold tracking-tight mb-space-xl">Available soon</h2>
        <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-space-lg">
            <c:forEach var="d" items="${featuredDoctors}">
                <div class="bg-surface-container-lowest rounded-2xl overflow-hidden shadow-sm hover:shadow-lg transition-all flex flex-col">
                    <div class="relative w-full h-56 bg-surface-container">
                        <img class="w-full h-full object-cover" alt="<c:out value='${d.fullName}'/>" src="${ctx}/assets/img/doctors/${empty d.photo ? 'default.png' : d.photo}"/>
                        <c:if test="${not empty d.nextSlot}">
                            <span class="absolute top-3 right-3 bg-surface-container-lowest/90 px-2.5 py-1 rounded-full font-label-sm text-secondary font-bold">${d.nextSlot}</span>
                        </c:if>
                    </div>
                    <div class="p-space-lg flex-1 flex flex-col justify-between space-y-space-md">
                        <div>
                            <span class="font-label-sm text-label-sm text-primary font-semibold"><c:out value="${d.specialtyName}"/></span>
                            <h3 class="font-title-md text-title-md text-on-surface font-bold mt-1"><c:out value="${d.title} ${d.fullName}"/></h3>
                            <p class="font-body-sm text-body-sm text-on-surface-variant mt-1"><c:out value="${d.departmentName}"/></p>
                        </div>
                        <a class="w-full py-2.5 bg-primary text-on-primary font-label-lg rounded-lg hover:bg-primary-container transition-colors text-center"
                           href="${ctx}/patient/appointments/new?specialtyId=${d.specialtyId}&doctorId=${d.id}">Book a slot</a>
                    </div>
                </div>
            </c:forEach>
            <c:if test="${empty featuredDoctors}">
                <p class="text-on-surface-variant">No doctors available yet.</p>
            </c:if>
        </div>
    </div>
</section>

<%-- HOW IT WORKS (static: it really is a sequence) --%>
<section class="max-w-7xl mx-auto px-gutter-lg py-24 w-full">
    <h2 class="font-headline-lg text-headline-lg text-on-surface font-bold tracking-tight text-center mb-space-2xl">Care in 4 steps</h2>
    <div class="grid grid-cols-1 md:grid-cols-2 lg:grid-cols-4 gap-space-lg">
        <c:forEach var="step" items="${['category|Choose a specialty|Pick the department that matches your needs.','person_search|Select a physician|Browse our doctors in that specialty.','schedule|Pick a time slot|Choose among the free 30-minute slots.','mark_email_read|Get confirmation|Your appointment appears in My appointments.']}" varStatus="st">
            <c:set var="p" value="${fn:split(step, '|')}"/>
            <div class="bg-surface-container-lowest p-space-xl rounded-2xl shadow-sm relative">
                <span class="font-display-lg text-surface-container-high font-black absolute top-4 right-4 leading-none select-none">0${st.count}</span>
                <div class="w-12 h-12 rounded-xl bg-primary-fixed text-primary flex items-center justify-center mb-space-lg">
                    <span class="material-symbols-outlined text-2xl">${p[0]}</span>
                </div>
                <h3 class="font-title-md text-title-md text-on-surface font-bold">${p[1]}</h3>
                <p class="text-on-surface-variant mt-space-sm">${p[2]}</p>
            </div>
        </c:forEach>
    </div>
</section>

<%-- FAQ --%>
<section class="bg-surface-container-low py-24 w-full">
    <div class="max-w-3xl mx-auto px-gutter-lg">
        <h2 class="font-headline-md text-headline-md text-on-surface font-bold mb-space-lg">Frequently asked questions</h2>
        <div class="space-y-space-sm" id="faq-container">
            <c:forEach var="qa" items="${['How far ahead must I book?|Appointments must start at least 2 hours from now.','Can I cancel an appointment?|Yes, up to 12 hours before it starts. It stays in your history.','Can two appointments overlap?|No. Taken slots are hidden automatically.']}">
                <c:set var="p" value="${fn:split(qa, '|')}"/>
                <div class="rounded-xl bg-surface-container-lowest overflow-hidden">
                    <button type="button" class="w-full p-space-md text-left flex items-center justify-between font-title-md font-semibold" onclick="toggleFaq(this)">
                        <span>${p[0]}</span>
                        <span class="material-symbols-outlined faq-icon transition-transform duration-200 text-outline">expand_more</span>
                    </button>
                    <div class="faq-body px-space-md pb-space-md text-on-surface-variant hidden">${p[1]}</div>
                </div>
            </c:forEach>
        </div>
    </div>
</section>

<%@ include file="/WEB-INF/views/common/footer.jspf" %>
