package com.hcaptcha.sdk;

import android.content.Context;
import android.content.pm.PackageManager;
import androidx.annotation.Nullable;
import androidx.fragment.app.FragmentActivity;
import java.util.Objects;
import lombok.NonNull;

/* loaded from: classes2.dex */
public final class HCaptcha extends com.hcaptcha.sdk.tasks.e<l> implements n {

    /* renamed from: m  reason: collision with root package name */
    public static final String f38321m = "com.hcaptcha.sdk.site-key";

    /* renamed from: n  reason: collision with root package name */
    public static final String f38322n = "hCaptcha";

    /* renamed from: o  reason: collision with root package name */
    public static final /* synthetic */ boolean f38323o = false;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    private final FragmentActivity f38324i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private p f38325j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private HCaptchaConfig f38326k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    private final i f38327l;

    private HCaptcha(@NonNull Context context, i iVar) {
        Objects.requireNonNull(context, "context is marked non-null but is null");
        this.f38324i = (FragmentActivity) context;
        this.f38327l = iVar;
    }

    public static HCaptcha A(@NonNull Context context) {
        Objects.requireNonNull(context, "context is marked non-null but is null");
        return new HCaptcha(context, i.c().a());
    }

    public static HCaptcha B(@NonNull Context context, i iVar) {
        Objects.requireNonNull(context, "context is marked non-null but is null");
        return new HCaptcha(context, iVar);
    }

    private HCaptcha C() {
        k.a("HCaptcha.startVerification");
        this.f39327h.removeCallbacksAndMessages(null);
        this.f38325j.G(this.f38324i);
        return this;
    }

    @Override // com.hcaptcha.sdk.n
    public HCaptcha a() {
        try {
            String string = b.a(this.f38324i).metaData.getString(f38321m);
            if (string != null) {
                return f(string);
            }
            throw new IllegalStateException("Add missing com.hcaptcha.sdk.site-key meta-data to AndroidManifest.xml or call getClient(context, siteKey) method");
        } catch (PackageManager.NameNotFoundException e4) {
            throw new IllegalStateException(e4);
        }
    }

    @Override // com.hcaptcha.sdk.n
    public HCaptcha b(@NonNull HCaptchaConfig hCaptchaConfig) {
        Objects.requireNonNull(hCaptchaConfig, "inputConfig is marked non-null but is null");
        if (this.f38325j == null || !hCaptchaConfig.equals(this.f38326k)) {
            c(hCaptchaConfig);
        }
        return C();
    }

    @Override // com.hcaptcha.sdk.n
    public HCaptcha c(@NonNull HCaptchaConfig hCaptchaConfig) {
        Objects.requireNonNull(hCaptchaConfig, "inputConfig is marked non-null but is null");
        k.f38402b = hCaptchaConfig.getDiagnosticLog().booleanValue();
        k.a("HCaptcha.setup");
        HCaptchaStateListener hCaptchaStateListener = new HCaptchaStateListener() { // from class: com.hcaptcha.sdk.HCaptcha.1
            @Override // com.hcaptcha.sdk.HCaptchaStateListener
            public void onFailure(HCaptchaException hCaptchaException) {
                k.a("HCaptcha.onFailure");
                HCaptcha.this.r(hCaptchaException);
            }

            @Override // com.hcaptcha.sdk.HCaptchaStateListener
            public void onOpen() {
                HCaptcha.this.k();
            }

            @Override // com.hcaptcha.sdk.HCaptchaStateListener
            public void onSuccess(String str) {
                k.a("HCaptcha.onSuccess");
                HCaptcha hCaptcha = HCaptcha.this;
                hCaptcha.q(hCaptcha.f38326k.getTokenExpiration());
                HCaptcha hCaptcha2 = HCaptcha.this;
                hCaptcha2.s(new l(str, hCaptcha2.f39327h));
            }
        };
        if (hCaptchaConfig.getHideDialog().booleanValue()) {
            HCaptchaConfig c10 = hCaptchaConfig.toBuilder().r(HCaptchaSize.INVISIBLE).j(Boolean.FALSE).c();
            this.f38326k = c10;
            this.f38325j = new g(this.f38324i, c10, this.f38327l, hCaptchaStateListener);
        } else {
            this.f38325j = f.Y(hCaptchaConfig, this.f38327l, hCaptchaStateListener);
            this.f38326k = hCaptchaConfig;
        }
        return this;
    }

    @Override // com.hcaptcha.sdk.n
    public HCaptcha d(@NonNull String str) {
        HCaptchaConfig hCaptchaConfig;
        Objects.requireNonNull(str, "siteKey is marked non-null but is null");
        if (this.f38325j == null || (hCaptchaConfig = this.f38326k) == null || !str.equals(hCaptchaConfig.getSiteKey())) {
            f(str);
        }
        return C();
    }

    @Override // com.hcaptcha.sdk.n
    public HCaptcha e() {
        if (this.f38325j == null) {
            a();
        }
        return C();
    }

    @Override // com.hcaptcha.sdk.n
    public HCaptcha f(@NonNull String str) {
        Objects.requireNonNull(str, "siteKey is marked non-null but is null");
        return c(HCaptchaConfig.builder().q(str).c());
    }
}
