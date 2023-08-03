package com.google.android.play.core.splitcompat;

import android.content.Context;
import android.content.res.AssetManager;
import android.util.Log;
import com.google.android.play.core.internal.w0;
import java.io.File;
import java.util.Iterator;
import java.util.Set;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class b {

    /* renamed from: a  reason: collision with root package name */
    private final f f31822a;

    public b(f fVar) {
        this.f31822a = fVar;
    }

    public static final int c(AssetManager assetManager, File file) {
        int intValue = ((Integer) w0.d(assetManager, "addAssetPath", Integer.class, String.class, file.getPath())).intValue();
        StringBuilder sb = new StringBuilder(39);
        sb.append("addAssetPath completed with ");
        sb.append(intValue);
        Log.d("SplitCompat", sb.toString());
        return intValue;
    }

    public final synchronized void a(Context context, Set set) {
        AssetManager assets = context.getAssets();
        Iterator it = set.iterator();
        while (it.hasNext()) {
            c(assets, (File) it.next());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: Removed duplicated region for block: B:16:0x0028 A[Catch: all -> 0x0043, Exception -> 0x0045, LOOP:0: B:14:0x0022->B:16:0x0028, LOOP_END, TryCatch #3 {Exception -> 0x0045, blocks: (B:13:0x0019, B:14:0x0022, B:16:0x0028, B:17:0x0038), top: B:40:0x0019, outer: #1 }] */
    /* JADX WARN: Removed duplicated region for block: B:19:0x003d A[Catch: all -> 0x000e, TRY_ENTER, TRY_LEAVE, TryCatch #4 {, blocks: (B:3:0x0001, B:4:0x0005, B:19:0x003d, B:28:0x004f, B:12:0x0012, B:13:0x0019, B:14:0x0022, B:16:0x0028, B:17:0x0038, B:26:0x0046), top: B:36:0x0001 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public final synchronized boolean b(android.content.Context r5, java.util.Set r6) {
        /*
            r4 = this;
            monitor-enter(r4)
            android.os.StrictMode$ThreadPolicy r0 = android.os.StrictMode.getThreadPolicy()     // Catch: java.lang.Throwable -> Le java.lang.Exception -> L10
            android.os.StrictMode.allowThreadDiskReads()     // Catch: java.lang.Exception -> Lc java.lang.Throwable -> Le
            android.os.StrictMode.allowThreadDiskWrites()     // Catch: java.lang.Exception -> Lc java.lang.Throwable -> Le
            goto L19
        Lc:
            r1 = move-exception
            goto L12
        Le:
            r5 = move-exception
            goto L5b
        L10:
            r1 = move-exception
            r0 = 0
        L12:
            java.lang.String r2 = "SplitCompat"
            java.lang.String r3 = "Unable to set up strict mode."
            android.util.Log.i(r2, r3, r1)     // Catch: java.lang.Throwable -> Le
        L19:
            java.util.HashSet r1 = new java.util.HashSet     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            r1.<init>()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            java.util.Iterator r6 = r6.iterator()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
        L22:
            boolean r2 = r6.hasNext()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            if (r2 == 0) goto L38
            java.lang.Object r2 = r6.next()     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            java.lang.String r2 = (java.lang.String) r2     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            com.google.android.play.core.splitcompat.f r3 = r4.f31822a     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            java.io.File r2 = r3.g(r2)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            r1.add(r2)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            goto L22
        L38:
            r4.a(r5, r1)     // Catch: java.lang.Throwable -> L43 java.lang.Exception -> L45
            if (r0 == 0) goto L40
            android.os.StrictMode.setThreadPolicy(r0)     // Catch: java.lang.Throwable -> Le
        L40:
            r5 = 1
        L41:
            monitor-exit(r4)
            return r5
        L43:
            r5 = move-exception
            goto L54
        L45:
            r5 = move-exception
            java.lang.String r6 = "SplitCompat"
            java.lang.String r1 = "Error installing additional splits"
            android.util.Log.e(r6, r1, r5)     // Catch: java.lang.Throwable -> L43
            if (r0 == 0) goto L52
            android.os.StrictMode.setThreadPolicy(r0)     // Catch: java.lang.Throwable -> Le
        L52:
            r5 = 0
            goto L41
        L54:
            if (r0 != 0) goto L57
            goto L5a
        L57:
            android.os.StrictMode.setThreadPolicy(r0)     // Catch: java.lang.Throwable -> Le
        L5a:
            throw r5     // Catch: java.lang.Throwable -> Le
        L5b:
            monitor-exit(r4)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.splitcompat.b.b(android.content.Context, java.util.Set):boolean");
    }
}
