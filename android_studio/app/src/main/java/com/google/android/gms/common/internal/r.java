package com.google.android.gms.common.internal;

import androidx.annotation.NonNull;
import java.util.concurrent.ConcurrentHashMap;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class r {

    /* renamed from: b  reason: collision with root package name */
    private static final k f29170b = new k("LibraryVersion", "");

    /* renamed from: c  reason: collision with root package name */
    private static r f29171c = new r();

    /* renamed from: a  reason: collision with root package name */
    private ConcurrentHashMap<String, String> f29172a = new ConcurrentHashMap<>();

    @y2.d0
    protected r() {
    }

    @NonNull
    @u2.a
    public static r a() {
        return f29171c;
    }

    /* JADX WARN: Removed duplicated region for block: B:34:0x00b7  */
    @androidx.annotation.NonNull
    @u2.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public java.lang.String b(@androidx.annotation.NonNull java.lang.String r10) {
        /*
            r9 = this;
            java.lang.String r0 = "Failed to get app version for libraryName: "
            java.lang.String r1 = "LibraryVersion"
            java.lang.String r2 = "Please provide a valid libraryName"
            com.google.android.gms.common.internal.u.h(r10, r2)
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> r2 = r9.f29172a
            boolean r2 = r2.containsKey(r10)
            if (r2 == 0) goto L1a
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> r0 = r9.f29172a
            java.lang.Object r10 = r0.get(r10)
            java.lang.String r10 = (java.lang.String) r10
            return r10
        L1a:
            java.util.Properties r2 = new java.util.Properties
            r2.<init>()
            r3 = 1
            r4 = 0
            java.lang.Object[] r3 = new java.lang.Object[r3]     // Catch: java.lang.Throwable -> L91 java.io.IOException -> L93
            r5 = 0
            r3[r5] = r10     // Catch: java.lang.Throwable -> L91 java.io.IOException -> L93
            java.lang.Class<com.google.android.gms.common.internal.r> r5 = com.google.android.gms.common.internal.r.class
            java.lang.String r6 = "/%s.properties"
            java.lang.String r3 = java.lang.String.format(r6, r3)     // Catch: java.lang.Throwable -> L91 java.io.IOException -> L93
            java.io.InputStream r3 = r5.getResourceAsStream(r3)     // Catch: java.lang.Throwable -> L91 java.io.IOException -> L93
            if (r3 == 0) goto L6a
            r2.load(r3)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            java.lang.String r5 = "version"
            java.lang.String r4 = r2.getProperty(r5, r4)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            com.google.android.gms.common.internal.k r2 = com.google.android.gms.common.internal.r.f29170b     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            java.lang.String r5 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            int r5 = r5.length()     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            int r5 = r5 + 12
            java.lang.String r6 = java.lang.String.valueOf(r4)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            int r6 = r6.length()     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            int r5 = r5 + r6
            java.lang.StringBuilder r6 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            r6.<init>(r5)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            r6.append(r10)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            java.lang.String r5 = " version is "
            r6.append(r5)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            r6.append(r4)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            java.lang.String r5 = r6.toString()     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            r2.l(r1, r5)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            goto L83
        L6a:
            com.google.android.gms.common.internal.k r2 = com.google.android.gms.common.internal.r.f29170b     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            java.lang.String r5 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            int r6 = r5.length()     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            if (r6 == 0) goto L7b
            java.lang.String r5 = r0.concat(r5)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            goto L80
        L7b:
            java.lang.String r5 = new java.lang.String     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
            r5.<init>(r0)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
        L80:
            r2.n(r1, r5)     // Catch: java.lang.Throwable -> L89 java.io.IOException -> L8c
        L83:
            if (r3 == 0) goto Lb5
            y2.q.b(r3)
            goto Lb5
        L89:
            r10 = move-exception
            r4 = r3
            goto Lc6
        L8c:
            r2 = move-exception
            r8 = r4
            r4 = r3
            r3 = r8
            goto L95
        L91:
            r10 = move-exception
            goto Lc6
        L93:
            r2 = move-exception
            r3 = r4
        L95:
            com.google.android.gms.common.internal.k r5 = com.google.android.gms.common.internal.r.f29170b     // Catch: java.lang.Throwable -> L91
            java.lang.String r6 = java.lang.String.valueOf(r10)     // Catch: java.lang.Throwable -> L91
            int r7 = r6.length()     // Catch: java.lang.Throwable -> L91
            if (r7 == 0) goto La6
            java.lang.String r0 = r0.concat(r6)     // Catch: java.lang.Throwable -> L91
            goto Lac
        La6:
            java.lang.String r6 = new java.lang.String     // Catch: java.lang.Throwable -> L91
            r6.<init>(r0)     // Catch: java.lang.Throwable -> L91
            r0 = r6
        Lac:
            r5.f(r1, r0, r2)     // Catch: java.lang.Throwable -> L91
            if (r4 == 0) goto Lb4
            y2.q.b(r4)
        Lb4:
            r4 = r3
        Lb5:
            if (r4 != 0) goto Lc0
            com.google.android.gms.common.internal.k r0 = com.google.android.gms.common.internal.r.f29170b
            java.lang.String r2 = ".properties file is dropped during release process. Failure to read app version is expected during Google internal testing where locally-built libraries are used"
            r0.c(r1, r2)
            java.lang.String r4 = "UNKNOWN"
        Lc0:
            java.util.concurrent.ConcurrentHashMap<java.lang.String, java.lang.String> r0 = r9.f29172a
            r0.put(r10, r4)
            return r4
        Lc6:
            if (r4 == 0) goto Lcb
            y2.q.b(r4)
        Lcb:
            throw r10
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.gms.common.internal.r.b(java.lang.String):java.lang.String");
    }
}
