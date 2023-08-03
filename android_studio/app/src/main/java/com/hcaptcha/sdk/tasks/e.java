package com.hcaptcha.sdk.tasks;

import android.os.Handler;
import android.os.Looper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.hcaptcha.sdk.HCaptchaError;
import com.hcaptcha.sdk.HCaptchaException;
import java.util.ArrayList;
import java.util.List;
import java.util.concurrent.TimeUnit;

/* loaded from: classes2.dex */
public abstract class e<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private boolean f39320a;

    /* renamed from: b  reason: collision with root package name */
    private boolean f39321b;

    /* renamed from: c  reason: collision with root package name */
    private TResult f39322c;

    /* renamed from: d  reason: collision with root package name */
    private HCaptchaException f39323d;

    /* renamed from: h  reason: collision with root package name */
    public final Handler f39327h = new Handler(Looper.getMainLooper());

    /* renamed from: e  reason: collision with root package name */
    private final List<d<TResult>> f39324e = new ArrayList();

    /* renamed from: f  reason: collision with root package name */
    private final List<com.hcaptcha.sdk.tasks.a> f39325f = new ArrayList();

    /* renamed from: g  reason: collision with root package name */
    private final List<c> f39326g = new ArrayList();

    /* loaded from: classes2.dex */
    public class a implements Runnable {
        public a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            for (com.hcaptcha.sdk.tasks.a aVar : e.this.f39325f) {
                aVar.J(new HCaptchaException(HCaptchaError.TOKEN_TIMEOUT));
            }
        }
    }

    public e() {
        p();
    }

    private void p() {
        this.f39320a = false;
        this.f39321b = false;
        this.f39322c = null;
        this.f39323d = null;
    }

    private void t() {
        boolean z9 = false;
        if (m() != null) {
            for (d<TResult> dVar : this.f39324e) {
                dVar.onSuccess(m());
                z9 = true;
            }
        }
        if (l() != null) {
            for (com.hcaptcha.sdk.tasks.a aVar : this.f39325f) {
                aVar.J(l());
                z9 = true;
            }
        }
        if (z9) {
            p();
        }
    }

    public e<TResult> h(@NonNull com.hcaptcha.sdk.tasks.a aVar) {
        this.f39325f.add(aVar);
        t();
        return this;
    }

    public e<TResult> i(@NonNull c cVar) {
        this.f39326g.add(cVar);
        t();
        return this;
    }

    public e<TResult> j(@NonNull d<TResult> dVar) {
        this.f39324e.add(dVar);
        t();
        return this;
    }

    public void k() {
        for (c cVar : this.f39326g) {
            cVar.e();
        }
    }

    @Nullable
    public HCaptchaException l() {
        return this.f39323d;
    }

    @Nullable
    public TResult m() {
        return this.f39322c;
    }

    public boolean n() {
        return this.f39320a;
    }

    public boolean o() {
        return this.f39321b;
    }

    public void q(long j4) {
        this.f39327h.postDelayed(new a(), TimeUnit.SECONDS.toMillis(j4));
    }

    public void r(@NonNull HCaptchaException hCaptchaException) {
        this.f39323d = hCaptchaException;
        this.f39321b = false;
        this.f39320a = true;
        t();
    }

    public void s(TResult tresult) {
        this.f39322c = tresult;
        this.f39321b = true;
        this.f39320a = true;
        t();
    }
}
