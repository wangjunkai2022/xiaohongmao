package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.ArrayDeque;
import java.util.Queue;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
public final class l0<TResult> {

    /* renamed from: a  reason: collision with root package name */
    private final Object f31126a = new Object();
    @s7.a("mLock")

    /* renamed from: b  reason: collision with root package name */
    private Queue<k0<TResult>> f31127b;
    @s7.a("mLock")

    /* renamed from: c  reason: collision with root package name */
    private boolean f31128c;

    public final void a(@NonNull k0<TResult> k0Var) {
        synchronized (this.f31126a) {
            if (this.f31127b == null) {
                this.f31127b = new ArrayDeque();
            }
            this.f31127b.add(k0Var);
        }
    }

    public final void b(@NonNull k<TResult> kVar) {
        k0<TResult> poll;
        synchronized (this.f31126a) {
            if (this.f31127b != null && !this.f31128c) {
                this.f31128c = true;
                while (true) {
                    synchronized (this.f31126a) {
                        poll = this.f31127b.poll();
                        if (poll == null) {
                            this.f31128c = false;
                            return;
                        }
                    }
                    poll.c(kVar);
                }
            }
        }
    }
}
