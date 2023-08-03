package com.google.android.gms.common.api.internal;

import android.content.Context;
import android.os.Looper;
import androidx.annotation.NonNull;
import com.google.android.gms.common.api.a;
import com.google.android.gms.common.api.a.d;
import com.google.android.gms.common.api.internal.e;
import org.checkerframework.checker.initialization.qual.NotOnlyInitialized;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class a2<O extends a.d> extends k0 {
    @NotOnlyInitialized

    /* renamed from: f  reason: collision with root package name */
    private final com.google.android.gms.common.api.h<O> f28644f;

    public a2(com.google.android.gms.common.api.h<O> hVar) {
        super("Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.");
        this.f28644f = hVar;
    }

    @Override // com.google.android.gms.common.api.i
    public final void H(h3 h3Var) {
    }

    @Override // com.google.android.gms.common.api.i
    public final void I(h3 h3Var) {
    }

    @Override // com.google.android.gms.common.api.i
    public final <A extends a.b, R extends com.google.android.gms.common.api.q, T extends e.a<R, A>> T l(@NonNull T t9) {
        return (T) this.f28644f.h(t9);
    }

    @Override // com.google.android.gms.common.api.i
    public final <A extends a.b, T extends e.a<? extends com.google.android.gms.common.api.q, A>> T m(@NonNull T t9) {
        return (T) this.f28644f.n(t9);
    }

    @Override // com.google.android.gms.common.api.i
    public final Context q() {
        return this.f28644f.q();
    }

    @Override // com.google.android.gms.common.api.i
    public final Looper r() {
        return this.f28644f.t();
    }
}
