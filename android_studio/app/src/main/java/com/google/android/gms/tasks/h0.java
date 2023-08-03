package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
public final class h0<TResult> implements k0<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f31117a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f31118b = new Object();
    @r7.h
    @s7.a("mLock")

    /* renamed from: c  reason: collision with root package name */
    private g<? super TResult> f31119c;

    public h0(@NonNull Executor executor, @NonNull g<? super TResult> gVar) {
        this.f31117a = executor;
        this.f31119c = gVar;
    }

    @Override // com.google.android.gms.tasks.k0
    public final void c(@NonNull k<TResult> kVar) {
        if (kVar.v()) {
            synchronized (this.f31118b) {
                if (this.f31119c == null) {
                    return;
                }
                this.f31117a.execute(new g0(this, kVar));
            }
        }
    }

    @Override // com.google.android.gms.tasks.k0
    public final void e() {
        synchronized (this.f31118b) {
            this.f31119c = null;
        }
    }
}
