package com.google.android.play.core.tasks;

import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import java.util.concurrent.Executor;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class j implements m {

    /* renamed from: a  reason: collision with root package name */
    private final Executor f32037a;

    /* renamed from: b  reason: collision with root package name */
    private final Object f32038b = new Object();
    @Nullable
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: c  reason: collision with root package name */
    private final b f32039c;

    public j(Executor executor, b bVar) {
        this.f32037a = executor;
        this.f32039c = bVar;
    }

    @Override // com.google.android.play.core.tasks.m
    public final void a(d dVar) {
        if (dVar.k()) {
            return;
        }
        synchronized (this.f32038b) {
            if (this.f32039c == null) {
                return;
            }
            this.f32037a.execute(new i(this, dVar));
        }
    }
}
