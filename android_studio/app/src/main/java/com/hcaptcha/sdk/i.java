package com.hcaptcha.sdk;

import edu.umd.cs.findbugs.annotations.NonNull;
import edu.umd.cs.findbugs.annotations.Nullable;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.io.Serializable;
import lombok.Generated;

/* loaded from: classes2.dex */
class i implements Serializable {

    /* renamed from: a  reason: collision with root package name */
    private IHCaptchaHtmlProvider f38388a;

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    /* loaded from: classes2.dex */
    public static class a {
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: a  reason: collision with root package name */
        private boolean f38389a;
        @SuppressFBWarnings(justification = "generated code")
        @Generated

        /* renamed from: b  reason: collision with root package name */
        private IHCaptchaHtmlProvider f38390b;

        @NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public i a() {
            IHCaptchaHtmlProvider iHCaptchaHtmlProvider = this.f38390b;
            if (!this.f38389a) {
                iHCaptchaHtmlProvider = i.a();
            }
            return new i(iHCaptchaHtmlProvider);
        }

        @NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public a b(IHCaptchaHtmlProvider iHCaptchaHtmlProvider) {
            this.f38390b = iHCaptchaHtmlProvider;
            this.f38389a = true;
            return this;
        }

        @NonNull
        @SuppressFBWarnings(justification = "generated code")
        @Generated
        public String toString() {
            return "HCaptchaInternalConfig.HCaptchaInternalConfigBuilder(htmlProvider$value=" + this.f38390b + ")";
        }
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public i(IHCaptchaHtmlProvider iHCaptchaHtmlProvider) {
        this.f38388a = iHCaptchaHtmlProvider;
    }

    /* JADX INFO: Access modifiers changed from: private */
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static IHCaptchaHtmlProvider a() {
        return new h();
    }

    @NonNull
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public static a c() {
        return new a();
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public boolean d(@Nullable Object obj) {
        return obj instanceof i;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public IHCaptchaHtmlProvider e() {
        return this.f38388a;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public boolean equals(@Nullable Object obj) {
        if (obj == this) {
            return true;
        }
        if (obj instanceof i) {
            i iVar = (i) obj;
            if (iVar.d(this)) {
                IHCaptchaHtmlProvider e4 = e();
                IHCaptchaHtmlProvider e10 = iVar.e();
                return e4 != null ? e4.equals(e10) : e10 == null;
            }
            return false;
        }
        return false;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public void h(IHCaptchaHtmlProvider iHCaptchaHtmlProvider) {
        this.f38388a = iHCaptchaHtmlProvider;
    }

    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public int hashCode() {
        IHCaptchaHtmlProvider e4 = e();
        return (e4 == null ? 43 : e4.hashCode()) + 59;
    }

    @NonNull
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public a i() {
        return new a().b(this.f38388a);
    }

    @NonNull
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public String toString() {
        return "HCaptchaInternalConfig(htmlProvider=" + e() + ")";
    }
}
