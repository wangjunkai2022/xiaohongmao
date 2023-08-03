package com.google.android.play.core.tasks;

import androidx.annotation.GuardedBy;
import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class n {

    /* renamed from: a  reason: collision with root package name */
    private final Object f32045a = new Object();
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: b  reason: collision with root package name */
    private Queue f32046b;
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: c  reason: collision with root package name */
    private boolean f32047c;

    public final void a(m mVar) {
        synchronized (this.f32045a) {
            if (this.f32046b == null) {
                this.f32046b = new ArrayDeque();
            }
            this.f32046b.add(mVar);
        }
    }

    public final void b(d dVar) {
        m mVar;
        synchronized (this.f32045a) {
            if (this.f32046b != null && !this.f32047c) {
                this.f32047c = true;
                while (true) {
                    synchronized (this.f32045a) {
                        mVar = (m) this.f32046b.poll();
                        if (mVar == null) {
                            this.f32047c = false;
                            return;
                        }
                    }
                    mVar.a(dVar);
                }
            }
        }
    }
}
