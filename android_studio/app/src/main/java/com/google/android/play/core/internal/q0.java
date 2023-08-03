package com.google.android.play.core.internal;

import java.io.File;
import java.util.Set;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class q0 implements z {
    /* JADX INFO: Access modifiers changed from: package-private */
    public static void c(ClassLoader classLoader, Set set) {
        l0.c(classLoader, set, new o0());
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static boolean d(ClassLoader classLoader, File file, File file2, boolean z9) {
        return g0.e(classLoader, file, file2, z9, new i0(), "path", new p0());
    }

    @Override // com.google.android.play.core.internal.z
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z9) {
        return d(classLoader, file, file2, z9);
    }

    @Override // com.google.android.play.core.internal.z
    public final void b(ClassLoader classLoader, Set set) {
        c(classLoader, set);
    }
}
