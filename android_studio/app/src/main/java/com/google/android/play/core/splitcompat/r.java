package com.google.android.play.core.splitcompat;

import android.util.Log;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class r implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Set f31847a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ a f31848b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public r(a aVar, Set set) {
        this.f31848b = aVar;
        this.f31847a = set;
    }

    @Override // java.lang.Runnable
    public final void run() {
        try {
            this.f31848b.i(this.f31847a);
        } catch (Exception e4) {
            Log.e("SplitCompat", "Failed to remove from splitcompat storage split that is already installed", e4);
        }
    }
}
