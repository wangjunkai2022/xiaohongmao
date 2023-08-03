package com.google.android.play.core.tasks;

import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import java.util.concurrent.ExecutionException;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class v implements u {

    /* renamed from: a  reason: collision with root package name */
    private final Object f32056a = new Object();

    /* renamed from: b  reason: collision with root package name */
    private final int f32057b;

    /* renamed from: c  reason: collision with root package name */
    private final r f32058c;
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: d  reason: collision with root package name */
    private int f32059d;
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: e  reason: collision with root package name */
    private int f32060e;
    @GuardedBy(org.aspectj.lang.c.f91028k)

    /* renamed from: f  reason: collision with root package name */
    private Exception f32061f;

    public v(int i4, r rVar) {
        this.f32057b = i4;
        this.f32058c = rVar;
    }

    @GuardedBy(org.aspectj.lang.c.f91028k)
    private final void b() {
        if (this.f32059d + this.f32060e == this.f32057b) {
            if (this.f32061f == null) {
                this.f32058c.m(null);
                return;
            }
            r rVar = this.f32058c;
            int i4 = this.f32060e;
            int i10 = this.f32057b;
            StringBuilder sb = new StringBuilder(54);
            sb.append(i4);
            sb.append(" out of ");
            sb.append(i10);
            sb.append(" underlying tasks failed");
            rVar.l(new ExecutionException(sb.toString(), this.f32061f));
        }
    }

    @Override // com.google.android.play.core.tasks.b
    public final void a(@NonNull Exception exc) {
        synchronized (this.f32056a) {
            this.f32060e++;
            this.f32061f = exc;
            b();
        }
    }

    @Override // com.google.android.play.core.tasks.c
    public final void onSuccess(Object obj) {
        synchronized (this.f32056a) {
            this.f32059d++;
            b();
        }
    }
}
