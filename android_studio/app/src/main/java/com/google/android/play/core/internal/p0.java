package com.google.android.play.core.internal;

import android.util.Log;
import java.io.File;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class p0 implements e0 {
    @Override // com.google.android.play.core.internal.e0
    public final boolean a(Object obj, File file, File file2) {
        try {
            return !((Boolean) w0.f(Class.forName("dalvik.system.DexFile"), "isDexOptNeeded", Boolean.class, String.class, file.getPath())).booleanValue();
        } catch (ClassNotFoundException unused) {
            Log.e("SplitCompat", "Unexpected missing dalvik.system.DexFile.");
            return false;
        }
    }
}
