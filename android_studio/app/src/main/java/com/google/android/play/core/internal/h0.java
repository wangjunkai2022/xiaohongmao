package com.google.android.play.core.internal;

import java.io.File;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class h0 implements z {
    @Override // com.google.android.play.core.internal.z
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z9) {
        return g0.e(classLoader, file, file2, z9, new c0(), "zip", new d0());
    }

    @Override // com.google.android.play.core.internal.z
    public final void b(ClassLoader classLoader, Set set) {
        g0.d(classLoader, set);
    }
}
