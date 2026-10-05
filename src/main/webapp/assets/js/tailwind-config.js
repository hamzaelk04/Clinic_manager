/* Moved from <script id="tailwind-config">. Must load AFTER the Tailwind CDN script. */
tailwind.config = { darkMode: "class", theme: { extend: {
            colors: {
                "on-secondary-container":"#006f66","secondary-container":"#86f2e4","on-surface":"#131b2e","on-primary-container":"#fdfcff","surface-container-high":"#e2e7ff","primary":"#006194","tertiary-fixed-dim":"#b4c5ff","secondary-fixed-dim":"#6bd8cb","background":"#faf8ff","on-tertiary":"#ffffff","tertiary":"#0051d5","outline-variant":"#bfc7d2","surface-container-low":"#f2f3ff","on-error-container":"#93000a","surface-variant":"#dae2fd","on-secondary-fixed-variant":"#005049","on-surface-variant":"#3f4850","on-primary-fixed":"#001d31","secondary-fixed":"#89f5e7","secondary":"#006a61","on-tertiary-fixed":"#00174b","primary-container":"#007bb9","on-background":"#131b2e","outline":"#707881","on-primary":"#ffffff","surface-dim":"#d2d9f4","surface-container-highest":"#dae2fd","tertiary-fixed":"#dbe1ff","surface-tint":"#006398","on-secondary-fixed":"#00201d","inverse-on-surface":"#eef0ff","on-tertiary-container":"#fefcff","surface":"#faf8ff","error":"#ba1a1a","on-secondary":"#ffffff","on-error":"#ffffff","on-primary-fixed-variant":"#004b73","surface-container-lowest":"#ffffff","inverse-surface":"#283044","primary-fixed-dim":"#93ccff","primary-fixed":"#cce5ff","error-container":"#ffdad6","surface-bright":"#faf8ff","inverse-primary":"#93ccff","surface-container":"#eaedff","on-tertiary-fixed-variant":"#003ea8","tertiary-container":"#316bf3"
            },
            borderRadius: { DEFAULT:"0.25rem", lg:"0.5rem", xl:"0.75rem", full:"9999px" },
            spacing: { "margin-md":"1.5rem","space-md":"1rem","space-xs":"0.25rem","gutter":"1rem","space-sm":"0.5rem","gutter-lg":"2rem","space-xxs":"0.125rem","margin":"1rem","space-2xl":"3rem","margin-lg":"2.5rem","gutter-md":"1.5rem","space-xl":"2rem","space-lg":"1.5rem" },
            fontFamily: Object.fromEntries(["data-tabular","body-sm","display-lg","headline-lg","display-lg-mobile","body-md","headline-xl-mobile","headline-sm","label-md","body-lg","headline-md","title-md","label-sm","label-lg","headline-xl"].map(k=>[k,["Inter"]])),
            fontSize: {
                "data-tabular":["14px",{lineHeight:"20px",letterSpacing:"0em",fontWeight:"500"}],
                "body-sm":["12px",{lineHeight:"16px",letterSpacing:"0.01em",fontWeight:"400"}],
                "display-lg":["48px",{lineHeight:"56px",letterSpacing:"-0.025em",fontWeight:"700"}],
                "headline-lg":["28px",{lineHeight:"36px",letterSpacing:"-0.015em",fontWeight:"600"}],
                "display-lg-mobile":["32px",{lineHeight:"40px",letterSpacing:"-0.02em",fontWeight:"700"}],
                "body-md":["14px",{lineHeight:"20px",letterSpacing:"0em",fontWeight:"400"}],
                "headline-xl-mobile":["28px",{lineHeight:"36px",letterSpacing:"-0.015em",fontWeight:"600"}],
                "headline-sm":["18px",{lineHeight:"24px",letterSpacing:"-0.005em",fontWeight:"600"}],
                "label-md":["12px",{lineHeight:"16px",letterSpacing:"0.02em",fontWeight:"500"}],
                "body-lg":["16px",{lineHeight:"24px",letterSpacing:"0em",fontWeight:"400"}],
                "headline-md":["22px",{lineHeight:"28px",letterSpacing:"-0.01em",fontWeight:"600"}],
                "title-md":["16px",{lineHeight:"24px",letterSpacing:"0em",fontWeight:"600"}],
                "label-sm":["11px",{lineHeight:"14px",letterSpacing:"0.03em",fontWeight:"600"}],
                "label-lg":["14px",{lineHeight:"20px",letterSpacing:"0.01em",fontWeight:"500"}],
                "headline-xl":["36px",{lineHeight:"44px",letterSpacing:"-0.02em",fontWeight:"600"}]
            }
        }}};
