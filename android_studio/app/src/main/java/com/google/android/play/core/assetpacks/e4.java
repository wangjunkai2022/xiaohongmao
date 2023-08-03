package com.google.android.play.core.assetpacks;

import androidx.annotation.Nullable;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
abstract class e4 {
    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract int a();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract long b();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public abstract String c();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean d();

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract boolean e();

    /* JADX INFO: Access modifiers changed from: package-private */
    @Nullable
    public abstract byte[] f();

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean g() {
        if (c() == null) {
            return false;
        }
        return c().endsWith("/");
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final boolean h() {
        return a() == 0;
    }
}
