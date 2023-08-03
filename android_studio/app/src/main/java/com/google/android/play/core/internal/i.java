package com.google.android.play.core.internal;

import androidx.annotation.Nullable;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public abstract class i implements Runnable {
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.play.core.tasks.o f31724a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public i() {
        this.f31724a = null;
    }

    public i(@Nullable com.google.android.play.core.tasks.o oVar) {
        this.f31724a = oVar;
    }

    protected abstract void a();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public final com.google.android.play.core.tasks.o b() {
        return this.f31724a;
    }

    public final void c(Exception exc) {
        com.google.android.play.core.tasks.o oVar = this.f31724a;
        if (oVar != null) {
            oVar.d(exc);
        }
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            a();
        } catch (Exception e4) {
            c(e4);
        }
    }
}
