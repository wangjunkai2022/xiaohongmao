package com.hcaptcha.sdk;

import edu.umd.cs.findbugs.annotations.Nullable;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.Serializable;
import java.util.Locale;
import java.util.Objects;
import lombok.Generated;
import lombok.NonNull;

/* loaded from: classes2.dex */
public class HCaptchaConfig implements Serializable {
    private String apiEndpoint;
    private String assethost;
    private String customTheme;
    private Boolean diagnosticLog;
    private String endpoint;
    private Boolean hideDialog;
    private String host;
    private String imghost;
    private Boolean loading;
    private String locale;
    private String reportapi;
    @Deprecated
    private Boolean resetOnTimeout;
    @com.fasterxml.jackson.annotation.n
    private o retryPredicate;
    private String rqdata;
    private Boolean sentry;
    @NonNull
    private String siteKey;
    private HCaptchaSize size;
    private HCaptchaTheme theme;
    private long tokenExpiration;

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    /* loaded from: classes2.dex */
    public static class a {
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        private boolean A;
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        private o B;
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        private boolean C;
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        private long D;
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        private boolean E;
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        private Boolean F;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: a  reason: collision with root package name */
        private String f38328a;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: b  reason: collision with root package name */
        private boolean f38329b;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: c  reason: collision with root package name */
        private Boolean f38330c;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: d  reason: collision with root package name */
        private boolean f38331d;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: e  reason: collision with root package name */
        private Boolean f38332e;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: f  reason: collision with root package name */
        private boolean f38333f;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: g  reason: collision with root package name */
        private Boolean f38334g;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: h  reason: collision with root package name */
        private String f38335h;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: i  reason: collision with root package name */
        private boolean f38336i;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: j  reason: collision with root package name */
        private String f38337j;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: k  reason: collision with root package name */
        private String f38338k;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: l  reason: collision with root package name */
        private String f38339l;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: m  reason: collision with root package name */
        private String f38340m;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: n  reason: collision with root package name */
        private String f38341n;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: o  reason: collision with root package name */
        private boolean f38342o;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: p  reason: collision with root package name */
        private String f38343p;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: q  reason: collision with root package name */
        private boolean f38344q;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: r  reason: collision with root package name */
        private HCaptchaSize f38345r;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: s  reason: collision with root package name */
        private boolean f38346s;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: t  reason: collision with root package name */
        private HCaptchaTheme f38347t;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: u  reason: collision with root package name */
        private boolean f38348u;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: v  reason: collision with root package name */
        private String f38349v;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: w  reason: collision with root package name */
        private boolean f38350w;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: x  reason: collision with root package name */
        private String f38351x;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: y  reason: collision with root package name */
        private boolean f38352y;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: z  reason: collision with root package name */
        private Boolean f38353z;

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a a(String str) {
            this.f38337j = str;
            this.f38336i = true;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a b(String str) {
            this.f38340m = str;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public HCaptchaConfig c() {
            Boolean bool = this.f38330c;
            if (!this.f38329b) {
                bool = HCaptchaConfig.$default$sentry();
            }
            Boolean bool2 = bool;
            Boolean bool3 = this.f38332e;
            if (!this.f38331d) {
                bool3 = HCaptchaConfig.$default$loading();
            }
            Boolean bool4 = bool3;
            Boolean bool5 = this.f38334g;
            if (!this.f38333f) {
                bool5 = HCaptchaConfig.$default$hideDialog();
            }
            Boolean bool6 = bool5;
            String str = this.f38337j;
            if (!this.f38336i) {
                str = HCaptchaConfig.$default$apiEndpoint();
            }
            String str2 = str;
            String str3 = this.f38343p;
            if (!this.f38342o) {
                str3 = HCaptchaConfig.$default$locale();
            }
            String str4 = str3;
            HCaptchaSize hCaptchaSize = this.f38345r;
            if (!this.f38344q) {
                hCaptchaSize = HCaptchaConfig.$default$size();
            }
            HCaptchaSize hCaptchaSize2 = hCaptchaSize;
            HCaptchaTheme hCaptchaTheme = this.f38347t;
            if (!this.f38346s) {
                hCaptchaTheme = HCaptchaConfig.$default$theme();
            }
            HCaptchaTheme hCaptchaTheme2 = hCaptchaTheme;
            String str5 = this.f38349v;
            if (!this.f38348u) {
                str5 = HCaptchaConfig.$default$host();
            }
            String str6 = str5;
            String str7 = this.f38351x;
            if (!this.f38350w) {
                str7 = HCaptchaConfig.$default$customTheme();
            }
            String str8 = str7;
            Boolean bool7 = this.f38353z;
            if (!this.f38352y) {
                bool7 = HCaptchaConfig.$default$resetOnTimeout();
            }
            Boolean bool8 = bool7;
            o oVar = this.B;
            if (!this.A) {
                oVar = HCaptchaConfig.$default$retryPredicate();
            }
            o oVar2 = oVar;
            long j4 = this.D;
            if (!this.C) {
                j4 = HCaptchaConfig.$default$tokenExpiration();
            }
            long j10 = j4;
            Boolean bool9 = this.F;
            if (!this.E) {
                bool9 = HCaptchaConfig.$default$diagnosticLog();
            }
            return new HCaptchaConfig(this.f38328a, bool2, bool4, bool6, this.f38335h, str2, this.f38338k, this.f38339l, this.f38340m, this.f38341n, str4, hCaptchaSize2, hCaptchaTheme2, str6, str8, bool8, oVar2, j10, bool9);
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a d(String str) {
            this.f38351x = str;
            this.f38350w = true;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a e(Boolean bool) {
            this.F = bool;
            this.E = true;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a f(String str) {
            this.f38338k = str;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a g(Boolean bool) {
            this.f38334g = bool;
            this.f38333f = true;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a h(String str) {
            this.f38349v = str;
            this.f38348u = true;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a i(String str) {
            this.f38341n = str;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a j(Boolean bool) {
            this.f38332e = bool;
            this.f38331d = true;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a k(String str) {
            this.f38343p = str;
            this.f38342o = true;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a l(String str) {
            this.f38339l = str;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        @Deprecated
        public a m(Boolean bool) {
            this.f38353z = bool;
            this.f38352y = true;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        @com.fasterxml.jackson.annotation.n
        public a n(o oVar) {
            this.B = oVar;
            this.A = true;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a o(String str) {
            this.f38335h = str;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a p(Boolean bool) {
            this.f38330c = bool;
            this.f38329b = true;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a q(@NonNull String str) {
            Objects.requireNonNull(str, "siteKey is marked non-null but is null");
            this.f38328a = str;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a r(HCaptchaSize hCaptchaSize) {
            this.f38345r = hCaptchaSize;
            this.f38344q = true;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a s(HCaptchaTheme hCaptchaTheme) {
            this.f38347t = hCaptchaTheme;
            this.f38346s = true;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a t(long j4) {
            this.D = j4;
            this.C = true;
            return this;
        }

        @edu.umd.cs.findbugs.annotations.NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public String toString() {
            return "HCaptchaConfig.HCaptchaConfigBuilder(siteKey=" + this.f38328a + ", sentry$value=" + this.f38330c + ", loading$value=" + this.f38332e + ", hideDialog$value=" + this.f38334g + ", rqdata=" + this.f38335h + ", apiEndpoint$value=" + this.f38337j + ", endpoint=" + this.f38338k + ", reportapi=" + this.f38339l + ", assethost=" + this.f38340m + ", imghost=" + this.f38341n + ", locale$value=" + this.f38343p + ", size$value=" + this.f38345r + ", theme$value=" + this.f38347t + ", host$value=" + this.f38349v + ", customTheme$value=" + this.f38351x + ", resetOnTimeout$value=" + this.f38353z + ", retryPredicate$value=" + this.B + ", tokenExpiration$value=" + this.D + ", diagnosticLog$value=" + this.F + ")";
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static String $default$apiEndpoint() {
        return "https://js.hcaptcha.com/1/api.js";
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static String $default$customTheme() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static Boolean $default$diagnosticLog() {
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static Boolean $default$hideDialog() {
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static String $default$host() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static Boolean $default$loading() {
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static String $default$locale() {
        return Locale.getDefault().getLanguage();
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static Boolean $default$resetOnTimeout() {
        return Boolean.FALSE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static o $default$retryPredicate() {
        return c.f38366a;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static Boolean $default$sentry() {
        return Boolean.TRUE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static HCaptchaSize $default$size() {
        return HCaptchaSize.INVISIBLE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static HCaptchaTheme $default$theme() {
        return HCaptchaTheme.LIGHT;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static long $default$tokenExpiration() {
        return 120L;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public HCaptchaConfig(@NonNull String str, Boolean bool, Boolean bool2, Boolean bool3, String str2, String str3, String str4, String str5, String str6, String str7, String str8, HCaptchaSize hCaptchaSize, HCaptchaTheme hCaptchaTheme, String str9, String str10, Boolean bool4, o oVar, long j4, Boolean bool5) {
        Objects.requireNonNull(str, "siteKey is marked non-null but is null");
        this.siteKey = str;
        this.sentry = bool;
        this.loading = bool2;
        this.hideDialog = bool3;
        this.rqdata = str2;
        this.apiEndpoint = str3;
        this.endpoint = str4;
        this.reportapi = str5;
        this.assethost = str6;
        this.imghost = str7;
        this.locale = str8;
        this.size = hCaptchaSize;
        this.theme = hCaptchaTheme;
        this.host = str9;
        this.customTheme = str10;
        this.resetOnTimeout = bool4;
        this.retryPredicate = oVar;
        this.tokenExpiration = j4;
        this.diagnosticLog = bool5;
    }

    @edu.umd.cs.findbugs.annotations.NonNull
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static a builder() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static /* synthetic */ boolean lambda$$default$retryPredicate$0(HCaptchaConfig hCaptchaConfig, HCaptchaException hCaptchaException) {
        return Boolean.TRUE.equals(hCaptchaConfig.resetOnTimeout) && hCaptchaException.getHCaptchaError() == HCaptchaError.SESSION_TIMEOUT;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public boolean canEqual(@Nullable Object obj) {
        return obj instanceof HCaptchaConfig;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof HCaptchaConfig) {
            HCaptchaConfig hCaptchaConfig = (HCaptchaConfig) obj;
            if (hCaptchaConfig.canEqual(this) && getTokenExpiration() == hCaptchaConfig.getTokenExpiration()) {
                Boolean sentry = getSentry();
                Boolean sentry2 = hCaptchaConfig.getSentry();
                if (sentry != null ? sentry.equals(sentry2) : sentry2 == null) {
                    Boolean loading = getLoading();
                    Boolean loading2 = hCaptchaConfig.getLoading();
                    if (loading != null ? loading.equals(loading2) : loading2 == null) {
                        Boolean hideDialog = getHideDialog();
                        Boolean hideDialog2 = hCaptchaConfig.getHideDialog();
                        if (hideDialog != null ? hideDialog.equals(hideDialog2) : hideDialog2 == null) {
                            Boolean resetOnTimeout = getResetOnTimeout();
                            Boolean resetOnTimeout2 = hCaptchaConfig.getResetOnTimeout();
                            if (resetOnTimeout != null ? resetOnTimeout.equals(resetOnTimeout2) : resetOnTimeout2 == null) {
                                Boolean diagnosticLog = getDiagnosticLog();
                                Boolean diagnosticLog2 = hCaptchaConfig.getDiagnosticLog();
                                if (diagnosticLog != null ? diagnosticLog.equals(diagnosticLog2) : diagnosticLog2 == null) {
                                    String siteKey = getSiteKey();
                                    String siteKey2 = hCaptchaConfig.getSiteKey();
                                    if (siteKey != null ? siteKey.equals(siteKey2) : siteKey2 == null) {
                                        String rqdata = getRqdata();
                                        String rqdata2 = hCaptchaConfig.getRqdata();
                                        if (rqdata != null ? rqdata.equals(rqdata2) : rqdata2 == null) {
                                            String apiEndpoint = getApiEndpoint();
                                            String apiEndpoint2 = hCaptchaConfig.getApiEndpoint();
                                            if (apiEndpoint != null ? apiEndpoint.equals(apiEndpoint2) : apiEndpoint2 == null) {
                                                String endpoint = getEndpoint();
                                                String endpoint2 = hCaptchaConfig.getEndpoint();
                                                if (endpoint != null ? endpoint.equals(endpoint2) : endpoint2 == null) {
                                                    String reportapi = getReportapi();
                                                    String reportapi2 = hCaptchaConfig.getReportapi();
                                                    if (reportapi != null ? reportapi.equals(reportapi2) : reportapi2 == null) {
                                                        String assethost = getAssethost();
                                                        String assethost2 = hCaptchaConfig.getAssethost();
                                                        if (assethost != null ? assethost.equals(assethost2) : assethost2 == null) {
                                                            String imghost = getImghost();
                                                            String imghost2 = hCaptchaConfig.getImghost();
                                                            if (imghost != null ? imghost.equals(imghost2) : imghost2 == null) {
                                                                String locale = getLocale();
                                                                String locale2 = hCaptchaConfig.getLocale();
                                                                if (locale != null ? locale.equals(locale2) : locale2 == null) {
                                                                    HCaptchaSize size = getSize();
                                                                    HCaptchaSize size2 = hCaptchaConfig.getSize();
                                                                    if (size != null ? size.equals(size2) : size2 == null) {
                                                                        HCaptchaTheme theme = getTheme();
                                                                        HCaptchaTheme theme2 = hCaptchaConfig.getTheme();
                                                                        if (theme != null ? theme.equals(theme2) : theme2 == null) {
                                                                            String host = getHost();
                                                                            String host2 = hCaptchaConfig.getHost();
                                                                            if (host != null ? host.equals(host2) : host2 == null) {
                                                                                String customTheme = getCustomTheme();
                                                                                String customTheme2 = hCaptchaConfig.getCustomTheme();
                                                                                if (customTheme != null ? customTheme.equals(customTheme2) : customTheme2 == null) {
                                                                                    o retryPredicate = getRetryPredicate();
                                                                                    o retryPredicate2 = hCaptchaConfig.getRetryPredicate();
                                                                                    return retryPredicate != null ? retryPredicate.equals(retryPredicate2) : retryPredicate2 == null;
                                                                                }
                                                                                return false;
                                                                            }
                                                                            return false;
                                                                        }
                                                                        return false;
                                                                    }
                                                                    return false;
                                                                }
                                                                return false;
                                                            }
                                                            return false;
                                                        }
                                                        return false;
                                                    }
                                                    return false;
                                                }
                                                return false;
                                            }
                                            return false;
                                        }
                                        return false;
                                    }
                                    return false;
                                }
                                return false;
                            }
                            return false;
                        }
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
        return false;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public String getApiEndpoint() {
        return this.apiEndpoint;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public String getAssethost() {
        return this.assethost;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public String getCustomTheme() {
        return this.customTheme;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public Boolean getDiagnosticLog() {
        return this.diagnosticLog;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public String getEndpoint() {
        return this.endpoint;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public Boolean getHideDialog() {
        return this.hideDialog;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public String getHost() {
        return this.host;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public String getImghost() {
        return this.imghost;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public Boolean getLoading() {
        return this.loading;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public String getLocale() {
        return this.locale;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public String getReportapi() {
        return this.reportapi;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    @Deprecated
    public Boolean getResetOnTimeout() {
        return this.resetOnTimeout;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public o getRetryPredicate() {
        return this.retryPredicate;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public String getRqdata() {
        return this.rqdata;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public Boolean getSentry() {
        return this.sentry;
    }

    @NonNull
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public String getSiteKey() {
        return this.siteKey;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public HCaptchaSize getSize() {
        return this.size;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public HCaptchaTheme getTheme() {
        return this.theme;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public long getTokenExpiration() {
        return this.tokenExpiration;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public int hashCode() {
        long tokenExpiration = getTokenExpiration();
        Boolean sentry = getSentry();
        int hashCode = ((((int) (tokenExpiration ^ (tokenExpiration >>> 32))) + 59) * 59) + (sentry == null ? 43 : sentry.hashCode());
        Boolean loading = getLoading();
        int hashCode2 = (hashCode * 59) + (loading == null ? 43 : loading.hashCode());
        Boolean hideDialog = getHideDialog();
        int hashCode3 = (hashCode2 * 59) + (hideDialog == null ? 43 : hideDialog.hashCode());
        Boolean resetOnTimeout = getResetOnTimeout();
        int hashCode4 = (hashCode3 * 59) + (resetOnTimeout == null ? 43 : resetOnTimeout.hashCode());
        Boolean diagnosticLog = getDiagnosticLog();
        int hashCode5 = (hashCode4 * 59) + (diagnosticLog == null ? 43 : diagnosticLog.hashCode());
        String siteKey = getSiteKey();
        int hashCode6 = (hashCode5 * 59) + (siteKey == null ? 43 : siteKey.hashCode());
        String rqdata = getRqdata();
        int hashCode7 = (hashCode6 * 59) + (rqdata == null ? 43 : rqdata.hashCode());
        String apiEndpoint = getApiEndpoint();
        int hashCode8 = (hashCode7 * 59) + (apiEndpoint == null ? 43 : apiEndpoint.hashCode());
        String endpoint = getEndpoint();
        int hashCode9 = (hashCode8 * 59) + (endpoint == null ? 43 : endpoint.hashCode());
        String reportapi = getReportapi();
        int hashCode10 = (hashCode9 * 59) + (reportapi == null ? 43 : reportapi.hashCode());
        String assethost = getAssethost();
        int hashCode11 = (hashCode10 * 59) + (assethost == null ? 43 : assethost.hashCode());
        String imghost = getImghost();
        int hashCode12 = (hashCode11 * 59) + (imghost == null ? 43 : imghost.hashCode());
        String locale = getLocale();
        int hashCode13 = (hashCode12 * 59) + (locale == null ? 43 : locale.hashCode());
        HCaptchaSize size = getSize();
        int hashCode14 = (hashCode13 * 59) + (size == null ? 43 : size.hashCode());
        HCaptchaTheme theme = getTheme();
        int hashCode15 = (hashCode14 * 59) + (theme == null ? 43 : theme.hashCode());
        String host = getHost();
        int hashCode16 = (hashCode15 * 59) + (host == null ? 43 : host.hashCode());
        String customTheme = getCustomTheme();
        int hashCode17 = (hashCode16 * 59) + (customTheme == null ? 43 : customTheme.hashCode());
        o retryPredicate = getRetryPredicate();
        return (hashCode17 * 59) + (retryPredicate != null ? retryPredicate.hashCode() : 43);
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setApiEndpoint(String str) {
        this.apiEndpoint = str;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setAssethost(String str) {
        this.assethost = str;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setCustomTheme(String str) {
        this.customTheme = str;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setDiagnosticLog(Boolean bool) {
        this.diagnosticLog = bool;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setEndpoint(String str) {
        this.endpoint = str;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setHideDialog(Boolean bool) {
        this.hideDialog = bool;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setHost(String str) {
        this.host = str;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setImghost(String str) {
        this.imghost = str;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setLoading(Boolean bool) {
        this.loading = bool;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setLocale(String str) {
        this.locale = str;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setReportapi(String str) {
        this.reportapi = str;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    @Deprecated
    public void setResetOnTimeout(Boolean bool) {
        this.resetOnTimeout = bool;
    }

    @com.fasterxml.jackson.annotation.n
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setRetryPredicate(o oVar) {
        this.retryPredicate = oVar;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setRqdata(String str) {
        this.rqdata = str;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setSentry(Boolean bool) {
        this.sentry = bool;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setSiteKey(@NonNull String str) {
        Objects.requireNonNull(str, "siteKey is marked non-null but is null");
        this.siteKey = str;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setSize(HCaptchaSize hCaptchaSize) {
        this.size = hCaptchaSize;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setTheme(HCaptchaTheme hCaptchaTheme) {
        this.theme = hCaptchaTheme;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void setTokenExpiration(long j4) {
        this.tokenExpiration = j4;
    }

    @edu.umd.cs.findbugs.annotations.NonNull
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public a toBuilder() {
        return new a().q(this.siteKey).p(this.sentry).j(this.loading).g(this.hideDialog).o(this.rqdata).a(this.apiEndpoint).f(this.endpoint).l(this.reportapi).b(this.assethost).i(this.imghost).k(this.locale).r(this.size).s(this.theme).h(this.host).d(this.customTheme).m(this.resetOnTimeout).n(this.retryPredicate).t(this.tokenExpiration).e(this.diagnosticLog);
    }

    @edu.umd.cs.findbugs.annotations.NonNull
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public String toString() {
        return "HCaptchaConfig(siteKey=" + getSiteKey() + ", sentry=" + getSentry() + ", loading=" + getLoading() + ", hideDialog=" + getHideDialog() + ", rqdata=" + getRqdata() + ", apiEndpoint=" + getApiEndpoint() + ", endpoint=" + getEndpoint() + ", reportapi=" + getReportapi() + ", assethost=" + getAssethost() + ", imghost=" + getImghost() + ", locale=" + getLocale() + ", size=" + getSize() + ", theme=" + getTheme() + ", host=" + getHost() + ", customTheme=" + getCustomTheme() + ", resetOnTimeout=" + getResetOnTimeout() + ", retryPredicate=" + getRetryPredicate() + ", tokenExpiration=" + getTokenExpiration() + ", diagnosticLog=" + getDiagnosticLog() + ")";
    }
}
