package com.hcaptcha.sdk;

import android.os.Handler;
import android.os.Looper;
import android.view.ViewGroup;
import androidx.fragment.app.FragmentActivity;
import com.hcaptcha.sdk.q;
import edu.umd.cs.findbugs.annotations.SuppressFBWarnings;
import java.util.Objects;
import lombok.Generated;
import lombok.NonNull;

/* loaded from: classes2.dex */
final class g implements p {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final HCaptchaConfig f38383a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    private final HCaptchaStateListener f38384b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    private final m f38385c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f38386d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f38387e;

    public g(@NonNull FragmentActivity fragmentActivity, @NonNull HCaptchaConfig hCaptchaConfig, @NonNull i iVar, @NonNull HCaptchaStateListener hCaptchaStateListener) {
        Objects.requireNonNull(fragmentActivity, "activity is marked non-null but is null");
        Objects.requireNonNull(hCaptchaConfig, "config is marked non-null but is null");
        Objects.requireNonNull(iVar, "internalConfig is marked non-null but is null");
        Objects.requireNonNull(hCaptchaStateListener, "listener is marked non-null but is null");
        k.a("HeadlessWebView.init");
        this.f38383a = hCaptchaConfig;
        this.f38384b = hCaptchaStateListener;
        HCaptchaWebView hCaptchaWebView = new HCaptchaWebView(fragmentActivity);
        hCaptchaWebView.setId(q.h.X1);
        hCaptchaWebView.setVisibility(8);
        if (hCaptchaWebView.getParent() == null) {
            ((ViewGroup) fragmentActivity.getWindow().getDecorView().getRootView()).addView(hCaptchaWebView);
        }
        this.f38385c = new m(new Handler(Looper.getMainLooper()), fragmentActivity, hCaptchaConfig, iVar, this, hCaptchaStateListener, hCaptchaWebView);
    }

    @Override // com.hcaptcha.sdk.p
    public void G(@NonNull FragmentActivity fragmentActivity) {
        Objects.requireNonNull(fragmentActivity, "activity is marked non-null but is null");
        if (this.f38386d) {
            this.f38385c.f();
        } else {
            this.f38387e = true;
        }
    }

    @Override // com.hcaptcha.sdk.tasks.a
    public void J(@NonNull HCaptchaException hCaptchaException) {
        Objects.requireNonNull(hCaptchaException, "exception is marked non-null but is null");
        if (this.f38385c.h(hCaptchaException)) {
            this.f38385c.f();
        } else {
            this.f38384b.onFailure(hCaptchaException);
        }
    }

    @Override // com.hcaptcha.sdk.tasks.b
    public void N() {
        this.f38386d = true;
        if (this.f38387e) {
            this.f38387e = false;
            this.f38385c.f();
        }
    }

    @NonNull
    @SuppressFBWarnings(justification = "generated code")
    @Generated
    public HCaptchaConfig a() {
        return this.f38383a;
    }

    @Override // com.hcaptcha.sdk.tasks.d
    /* renamed from: b */
    public void onSuccess(String str) {
        this.f38384b.onSuccess(str);
    }

    @Override // com.hcaptcha.sdk.tasks.c
    public void e() {
        this.f38384b.onOpen();
    }
}
