package com.google.android.gms.common.api.internal;

import android.os.Looper;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.q;
import java.lang.ref.WeakReference;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class h3<R extends com.google.android.gms.common.api.q> extends com.google.android.gms.common.api.u<R> implements com.google.android.gms.common.api.r<R> {

    /* renamed from: g  reason: collision with root package name */
    private final WeakReference<com.google.android.gms.common.api.i> f28715g;

    /* renamed from: h  reason: collision with root package name */
    private final f3 f28716h;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private com.google.android.gms.common.api.t<? super R, ? extends com.google.android.gms.common.api.q> f28709a = null;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private h3<? extends com.google.android.gms.common.api.q> f28710b = null;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private volatile com.google.android.gms.common.api.s<? super R> f28711c = null;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private com.google.android.gms.common.api.l<R> f28712d = null;

    /* renamed from: e  reason: collision with root package name */
    private final Object f28713e = new Object();
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    private Status f28714f = null;

    /* renamed from: i  reason: collision with root package name */
    private boolean f28717i = false;

    public h3(WeakReference<com.google.android.gms.common.api.i> weakReference) {
        com.google.android.gms.common.internal.u.l(weakReference, "GoogleApiClient reference must not be null");
        this.f28715g = weakReference;
        com.google.android.gms.common.api.i iVar = weakReference.get();
        this.f28716h = new f3(this, iVar != null ? iVar.r() : Looper.getMainLooper());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void m(Status status) {
        synchronized (this.f28713e) {
            this.f28714f = status;
            o(status);
        }
    }

    @s7.a("mSyncToken")
    private final void n() {
        if (this.f28709a == null && this.f28711c == null) {
            return;
        }
        com.google.android.gms.common.api.i iVar = this.f28715g.get();
        if (!this.f28717i && this.f28709a != null && iVar != null) {
            iVar.H(this);
            this.f28717i = true;
        }
        Status status = this.f28714f;
        if (status != null) {
            o(status);
            return;
        }
        com.google.android.gms.common.api.l<R> lVar = this.f28712d;
        if (lVar != null) {
            lVar.h(this);
        }
    }

    private final void o(Status status) {
        synchronized (this.f28713e) {
            com.google.android.gms.common.api.t<? super R, ? extends com.google.android.gms.common.api.q> tVar = this.f28709a;
            if (tVar != null) {
                ((h3) com.google.android.gms.common.internal.u.k(this.f28710b)).m((Status) com.google.android.gms.common.internal.u.l(tVar.b(status), "onFailure must not return null"));
            } else if (p()) {
                ((com.google.android.gms.common.api.s) com.google.android.gms.common.internal.u.k(this.f28711c)).b(status);
            }
        }
    }

    @s7.a("mSyncToken")
    private final boolean p() {
        return (this.f28711c == null || this.f28715g.get() == null) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void q(com.google.android.gms.common.api.q qVar) {
        if (qVar instanceof com.google.android.gms.common.api.n) {
            try {
                ((com.google.android.gms.common.api.n) qVar).release();
            } catch (RuntimeException e4) {
                Log.w("TransformedResultImpl", "Unable to release ".concat(String.valueOf(qVar)), e4);
            }
        }
    }

    @Override // com.google.android.gms.common.api.r
    public final void a(R r9) {
        synchronized (this.f28713e) {
            if (!r9.getStatus().isSuccess()) {
                m(r9.getStatus());
                q(r9);
            } else if (this.f28709a != null) {
                u2.a().submit(new e3(this, r9));
            } else if (p()) {
                ((com.google.android.gms.common.api.s) com.google.android.gms.common.internal.u.k(this.f28711c)).c(r9);
            }
        }
    }

    @Override // com.google.android.gms.common.api.u
    public final void b(@NonNull com.google.android.gms.common.api.s<? super R> sVar) {
        synchronized (this.f28713e) {
            boolean z9 = true;
            com.google.android.gms.common.internal.u.r(this.f28711c == null, "Cannot call andFinally() twice.");
            if (this.f28709a != null) {
                z9 = false;
            }
            com.google.android.gms.common.internal.u.r(z9, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.f28711c = sVar;
            n();
        }
    }

    @Override // com.google.android.gms.common.api.u
    @NonNull
    public final <S extends com.google.android.gms.common.api.q> com.google.android.gms.common.api.u<S> c(@NonNull com.google.android.gms.common.api.t<? super R, ? extends S> tVar) {
        h3<? extends com.google.android.gms.common.api.q> h3Var;
        synchronized (this.f28713e) {
            boolean z9 = true;
            com.google.android.gms.common.internal.u.r(this.f28709a == null, "Cannot call then() twice.");
            if (this.f28711c != null) {
                z9 = false;
            }
            com.google.android.gms.common.internal.u.r(z9, "Cannot call then() and andFinally() on the same TransformedResult.");
            this.f28709a = tVar;
            h3Var = new h3<>(this.f28715g);
            this.f28710b = h3Var;
            n();
        }
        return h3Var;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void k() {
        this.f28711c = null;
    }

    /* JADX WARN: Multi-variable type inference failed */
    public final void l(com.google.android.gms.common.api.l<?> lVar) {
        synchronized (this.f28713e) {
            this.f28712d = lVar;
            n();
        }
    }
}
