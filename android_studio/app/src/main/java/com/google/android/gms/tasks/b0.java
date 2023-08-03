package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
final class b0<TResult> implements k0<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f31102a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f31103b = new Object();
    @r7.h
    @s7.a("mLock")

    /* renamed from: c  reason: collision with root package name */
    private d f31104c;

    public b0(@NonNull Executor executor, @NonNull d dVar) {
        this.f31102a = executor;
        this.f31104c = dVar;
    }

    @Override // com.google.android.gms.tasks.k0
    public final void c(@NonNull k<TResult> kVar) {
        if (kVar.t()) {
            synchronized (this.f31103b) {
                if (this.f31104c == null) {
                    return;
                }
                this.f31102a.execute(new a0(this));
            }
        }
    }

    @Override // com.google.android.gms.tasks.k0
    public final void e() {
        synchronized (this.f31103b) {
            this.f31104c = null;
        }
    }
}
