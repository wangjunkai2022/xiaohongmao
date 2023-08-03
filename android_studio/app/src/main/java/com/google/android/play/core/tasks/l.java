package com.google.android.play.core.tasks;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class l implements m {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f32042a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f32043b = new Object();
    @Nullable
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: c  reason: collision with root package name */
    private final c f32044c;

    public l(Executor executor, c cVar) {
        this.f32042a = executor;
        this.f32044c = cVar;
    }

    @Override // com.google.android.play.core.tasks.m
    public final void a(d dVar) {
        if (dVar.k()) {
            synchronized (this.f32043b) {
                if (this.f32044c == null) {
                    return;
                }
                this.f32042a.execute(new k(this, dVar));
            }
        }
    }
}
