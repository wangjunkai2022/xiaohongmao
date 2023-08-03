package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import java.util.concurrent.ExecutionException;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
/* loaded from: classes2.dex */
public final class u implements t {

    /* renamed from: a  reason: collision with root package name */
    private final Object f31150a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final int f31151b;

    /* renamed from: c  reason: collision with root package name */
    private final q0<Void> f31152c;
    @s7.a("mLock")

    /* renamed from: d  reason: collision with root package name */
    private int f31153d;
    @s7.a("mLock")

    /* renamed from: e  reason: collision with root package name */
    private int f31154e;
    @s7.a("mLock")

    /* renamed from: f  reason: collision with root package name */
    private int f31155f;
    @s7.a("mLock")

    /* renamed from: g  reason: collision with root package name */
    private Exception f31156g;
    @s7.a("mLock")

    /* renamed from: h  reason: collision with root package name */
    private boolean f31157h;

    public u(int i4, q0<Void> q0Var) {
        this.f31151b = i4;
        this.f31152c = q0Var;
    }

    @s7.a("mLock")
    private final void c() {
        if (this.f31153d + this.f31154e + this.f31155f == this.f31151b) {
            if (this.f31156g == null) {
                if (this.f31157h) {
                    this.f31152c.A();
                    return;
                } else {
                    this.f31152c.z(null);
                    return;
                }
            }
            q0<Void> q0Var = this.f31152c;
            int i4 = this.f31154e;
            int i10 = this.f31151b;
            StringBuilder sb = new StringBuilder(54);
            sb.append(i4);
            sb.append(" out of ");
            sb.append(i10);
            sb.append(" underlying tasks failed");
            q0Var.y(new ExecutionException(sb.toString(), this.f31156g));
        }
    }

    @Override // com.google.android.gms.tasks.f
    public final void a(@NonNull Exception exc) {
        synchronized (this.f31150a) {
            this.f31154e++;
            this.f31156g = exc;
            c();
        }
    }

    @Override // com.google.android.gms.tasks.d
    public final void b() {
        synchronized (this.f31150a) {
            this.f31155f++;
            this.f31157h = true;
            c();
        }
    }

    @Override // com.google.android.gms.tasks.g
    public final void onSuccess(Object obj) {
        synchronized (this.f31150a) {
            this.f31153d++;
            c();
        }
    }
}
