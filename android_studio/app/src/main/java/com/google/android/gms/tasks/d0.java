package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
final class d0<TResult> implements k0<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f31107a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f31108b = new Object();
    @r7.h
    @s7.a("mLock")

    /* renamed from: c  reason: collision with root package name */
    private e<TResult> f31109c;

    public d0(@NonNull Executor executor, @NonNull e<TResult> eVar) {
        this.f31107a = executor;
        this.f31109c = eVar;
    }

    @Override // com.google.android.gms.tasks.k0
    public final void c(@NonNull k<TResult> kVar) {
        synchronized (this.f31108b) {
            if (this.f31109c == null) {
                return;
            }
            this.f31107a.execute(new c0(this, kVar));
        }
    }

    @Override // com.google.android.gms.tasks.k0
    public final void e() {
        synchronized (this.f31108b) {
            this.f31109c = null;
        }
    }
}
