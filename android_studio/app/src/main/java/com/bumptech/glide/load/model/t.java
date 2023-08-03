package com.bumptech.glide.load.model;

import java.io.InputStream;

/* compiled from: StreamEncoder.java */
/* loaded from: classes.dex */
public class t implements com.bumptech.glide.load.a<InputStream> {

    /* renamed from: b  reason: collision with root package name */
    private static final String f9136b = "StreamEncoder";

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f9137a;

    public t(com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.f9137a = bVar;
    }

    /* JADX WARN: Code restructure failed: missing block: B:16:0x0038, code lost:
        if (r2 != null) goto L10;
     */
    @Override // com.bumptech.glide.load.a
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(@androidx.annotation.NonNull java.io.InputStream r5, @androidx.annotation.NonNull java.io.File r6, @androidx.annotation.NonNull com.bumptech.glide.load.f r7) {
        /*
            r4 = this;
            java.lang.String r7 = "StreamEncoder"
            com.bumptech.glide.load.engine.bitmap_recycle.b r0 = r4.f9137a
            java.lang.Class<byte[]> r1 = byte[].class
            r2 = 65536(0x10000, float:9.18355E-41)
            java.lang.Object r0 = r0.c(r2, r1)
            byte[] r0 = (byte[]) r0
            r1 = 0
            r2 = 0
            java.io.FileOutputStream r3 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L29 java.io.IOException -> L2b
            r3.<init>(r6)     // Catch: java.lang.Throwable -> L29 java.io.IOException -> L2b
            java.io.FileOutputStream r2 = io.sentry.instrumentation.file.l.b.a(r3, r6)     // Catch: java.lang.Throwable -> L29 java.io.IOException -> L2b
        L19:
            int r6 = r5.read(r0)     // Catch: java.lang.Throwable -> L29 java.io.IOException -> L2b
            r3 = -1
            if (r6 == r3) goto L24
            r2.write(r0, r1, r6)     // Catch: java.lang.Throwable -> L29 java.io.IOException -> L2b
            goto L19
        L24:
            r2.close()     // Catch: java.lang.Throwable -> L29 java.io.IOException -> L2b
            r1 = 1
            goto L3a
        L29:
            r5 = move-exception
            goto L43
        L2b:
            r5 = move-exception
            r6 = 3
            boolean r6 = android.util.Log.isLoggable(r7, r6)     // Catch: java.lang.Throwable -> L29
            if (r6 == 0) goto L38
            java.lang.String r6 = "Failed to encode data onto the OutputStream"
            android.util.Log.d(r7, r6, r5)     // Catch: java.lang.Throwable -> L29
        L38:
            if (r2 == 0) goto L3d
        L3a:
            r2.close()     // Catch: java.io.IOException -> L3d
        L3d:
            com.bumptech.glide.load.engine.bitmap_recycle.b r5 = r4.f9137a
            r5.put(r0)
            return r1
        L43:
            if (r2 == 0) goto L48
            r2.close()     // Catch: java.io.IOException -> L48
        L48:
            com.bumptech.glide.load.engine.bitmap_recycle.b r6 = r4.f9137a
            r6.put(r0)
            throw r5
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.model.t.a(java.io.InputStream, java.io.File, com.bumptech.glide.load.f):boolean");
    }
}
