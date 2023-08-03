package com.google.android.play.core.internal;

import java.io.File;
import java.util.Set;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class m0 implements z {
    @Override // com.google.android.play.core.internal.z
    public final boolean a(ClassLoader classLoader, File file, File file2, boolean z9) {
        return l0.d(classLoader, file, file2, z9, "zip");
    }

    @Override // com.google.android.play.core.internal.z
    public final void b(ClassLoader classLoader, Set set) {
        l0.c(classLoader, set, new j0());
    }
}
