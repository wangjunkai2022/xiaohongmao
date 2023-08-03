package com.google.android.gms.tasks;

import androidx.annotation.NonNull;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
public final class v extends a {

    /* renamed from: a  reason: collision with root package name */
    private final q0<Void> f31158a = new q0<>();

    @Override // com.google.android.gms.tasks.a
    public final boolean a() {
        return this.f31158a.u();
    }

    @Override // com.google.android.gms.tasks.a
    public final a b(@NonNull h hVar) {
        this.f31158a.l(m.f31129a, new o(this, hVar));
        return this;
    }

    public final void c() {
        this.f31158a.C(null);
    }
}
