package com.bumptech.glide.load.engine.executor;

import android.os.StrictMode;
import android.util.Log;
import java.io.File;
import java.io.FilenameFilter;
import java.util.regex.Pattern;

/* compiled from: RuntimeCompat.java */
/* loaded from: classes.dex */
final class b {

    /* renamed from: a  reason: collision with root package name */
    private static final String f8784a = "GlideRuntimeCompat";

    /* renamed from: b  reason: collision with root package name */
    private static final String f8785b = "cpu[0-9]+";

    /* renamed from: c  reason: collision with root package name */
    private static final String f8786c = "/sys/devices/system/cpu/";

    /* compiled from: RuntimeCompat.java */
    /* loaded from: classes.dex */
    class a implements FilenameFilter {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Pattern f8787a;

        a(Pattern pattern) {
            this.f8787a = pattern;
        }

        @Override // java.io.FilenameFilter
        public boolean accept(File file, String str) {
            return this.f8787a.matcher(str).matches();
        }
    }

    private b() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int a() {
        return Runtime.getRuntime().availableProcessors();
    }

    private static int b() {
        File[] fileArr;
        StrictMode.ThreadPolicy allowThreadDiskReads = StrictMode.allowThreadDiskReads();
        try {
            fileArr = new File(f8786c).listFiles(new a(Pattern.compile(f8785b)));
        } catch (Throwable th) {
            try {
                if (Log.isLoggable(f8784a, 6)) {
                    Log.e(f8784a, "Failed to calculate accurate cpu count", th);
                }
                StrictMode.setThreadPolicy(allowThreadDiskReads);
                fileArr = null;
            } finally {
                StrictMode.setThreadPolicy(allowThreadDiskReads);
            }
        }
        return Math.max(1, fileArr != null ? fileArr.length : 0);
    }
}
