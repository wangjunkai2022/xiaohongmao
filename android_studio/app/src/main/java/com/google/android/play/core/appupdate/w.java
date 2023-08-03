package com.google.android.play.core.appupdate;

import android.content.Context;
import java.io.File;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class w {

    /* renamed from: a  reason: collision with root package name */
    private final Context f31229a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public w(Context context) {
        this.f31229a = context;
    }

    private static long b(File file) {
        if (!file.isDirectory()) {
            return file.length();
        }
        File[] listFiles = file.listFiles();
        long j4 = 0;
        if (listFiles != null) {
            for (File file2 : listFiles) {
                j4 += b(file2);
            }
        }
        return j4;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final long a() {
        return b(new File(this.f31229a.getFilesDir(), "assetpacks"));
    }
}
