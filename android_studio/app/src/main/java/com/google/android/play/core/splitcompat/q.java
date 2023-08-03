package com.google.android.play.core.splitcompat;

import android.util.Log;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class q implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f31846a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public q(a aVar) {
        this.f31846a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        f fVar;
        try {
            fVar = this.f31846a.f31818a;
            fVar.k();
        } catch (Exception e4) {
            Log.e("SplitCompat", "Failed to cleanup splitcompat storage", e4);
        }
    }
}
