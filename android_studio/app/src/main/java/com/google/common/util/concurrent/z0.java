package com.google.common.util.concurrent;

import org.checkerframework.checker.nullness.compatqual.NullableDecl;

/* compiled from: Platform.java */
@h3.b(emulated = true)
/* loaded from: classes2.dex */
final class z0 {
    private z0() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean a(@NullableDecl Throwable th, Class<? extends Throwable> cls) {
        return cls.isInstance(th);
    }
}
