package com.google.android.play.core.internal;

import java.io.File;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class d0 implements e0 {
    @Override // com.google.android.play.core.internal.e0
    public final boolean a(Object obj, File file, File file2) {
        return new File((String) w0.g(obj.getClass(), "optimizedPathFor", String.class, File.class, file, File.class, file2)).exists();
    }
}
