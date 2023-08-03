package com.google.android.play.core.tasks;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class h implements m {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f32032a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f32033b = new Object();
    @Nullable
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: c  reason: collision with root package name */
    private final a f32034c;

    public h(Executor executor, a aVar) {
        this.f32032a = executor;
        this.f32034c = aVar;
    }

    @Override // com.google.android.play.core.tasks.m
    public final void a(d dVar) {
        synchronized (this.f32033b) {
            if (this.f32034c == null) {
                return;
            }
            this.f32032a.execute(new g(this, dVar));
        }
    }
}
