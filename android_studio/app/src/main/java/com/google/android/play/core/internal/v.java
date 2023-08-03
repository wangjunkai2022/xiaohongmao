package com.google.android.play.core.internal;

import android.util.Log;
import java.util.List;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class v implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ List f31766a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ com.google.android.play.core.splitinstall.t0 f31767b;

    /* renamed from: c  reason: collision with root package name */
    final /* synthetic */ w f31768c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public v(w wVar, List list, com.google.android.play.core.splitinstall.t0 t0Var) {
        this.f31768c = wVar;
        this.f31766a = list;
        this.f31767b = t0Var;
    }

    @Override // java.lang.Runnable
    public final void run() {
        y yVar;
        try {
            yVar = this.f31768c.f31775c;
            if (yVar.b(this.f31766a)) {
                w.d(this.f31768c, this.f31767b);
            } else {
                w.c(this.f31768c, this.f31766a, this.f31767b);
            }
        } catch (Exception e4) {
            Log.e("SplitCompat", "Error checking verified files.", e4);
            this.f31767b.a(-11);
        }
    }
}
