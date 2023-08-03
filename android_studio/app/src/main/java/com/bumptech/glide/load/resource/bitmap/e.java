package com.bumptech.glide.load.resource.bitmap;

import android.graphics.Bitmap;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.EncodeStrategy;

/* compiled from: BitmapEncoder.java */
/* loaded from: classes.dex */
public class e implements com.bumptech.glide.load.h<Bitmap> {

    /* renamed from: b  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<Integer> f9216b = com.bumptech.glide.load.e.g("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionQuality", 90);

    /* renamed from: c  reason: collision with root package name */
    public static final com.bumptech.glide.load.e<Bitmap.CompressFormat> f9217c = com.bumptech.glide.load.e.f("com.bumptech.glide.load.resource.bitmap.BitmapEncoder.CompressionFormat");

    /* renamed from: d  reason: collision with root package name */
    private static final String f9218d = "BitmapEncoder";
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f9219a;

    public e(@NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar) {
        this.f9219a = bVar;
    }

    private Bitmap.CompressFormat d(Bitmap bitmap, com.bumptech.glide.load.f fVar) {
        Bitmap.CompressFormat compressFormat = (Bitmap.CompressFormat) fVar.c(f9217c);
        if (compressFormat != null) {
            return compressFormat;
        }
        if (bitmap.hasAlpha()) {
            return Bitmap.CompressFormat.PNG;
        }
        return Bitmap.CompressFormat.JPEG;
    }

    @Override // com.bumptech.glide.load.h
    @NonNull
    public EncodeStrategy b(@NonNull com.bumptech.glide.load.f fVar) {
        return EncodeStrategy.TRANSFORMED;
    }

    /* JADX WARN: Code restructure failed: missing block: B:19:0x0062, code lost:
        if (r6 != null) goto L11;
     */
    @Override // com.bumptech.glide.load.a
    /* renamed from: c */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    public boolean a(@androidx.annotation.NonNull com.bumptech.glide.load.engine.u<android.graphics.Bitmap> r9, @androidx.annotation.NonNull java.io.File r10, @androidx.annotation.NonNull com.bumptech.glide.load.f r11) {
        /*
            r8 = this;
            java.lang.String r0 = "BitmapEncoder"
            java.lang.Object r9 = r9.get()
            android.graphics.Bitmap r9 = (android.graphics.Bitmap) r9
            android.graphics.Bitmap$CompressFormat r1 = r8.d(r9, r11)
            int r2 = r9.getWidth()
            java.lang.Integer r2 = java.lang.Integer.valueOf(r2)
            int r3 = r9.getHeight()
            java.lang.Integer r3 = java.lang.Integer.valueOf(r3)
            java.lang.String r4 = "encode: [%dx%d] %s"
            com.bumptech.glide.util.pool.b.e(r4, r2, r3, r1)
            long r2 = com.bumptech.glide.util.i.b()     // Catch: java.lang.Throwable -> Lbc
            com.bumptech.glide.load.e<java.lang.Integer> r4 = com.bumptech.glide.load.resource.bitmap.e.f9216b     // Catch: java.lang.Throwable -> Lbc
            java.lang.Object r4 = r11.c(r4)     // Catch: java.lang.Throwable -> Lbc
            java.lang.Integer r4 = (java.lang.Integer) r4     // Catch: java.lang.Throwable -> Lbc
            int r4 = r4.intValue()     // Catch: java.lang.Throwable -> Lbc
            r5 = 0
            r6 = 0
            java.io.FileOutputStream r7 = new java.io.FileOutputStream     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            r7.<init>(r10)     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            java.io.FileOutputStream r6 = io.sentry.instrumentation.file.l.b.a(r7, r10)     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            com.bumptech.glide.load.engine.bitmap_recycle.b r10 = r8.f9219a     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            if (r10 == 0) goto L48
            com.bumptech.glide.load.data.c r10 = new com.bumptech.glide.load.data.c     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            com.bumptech.glide.load.engine.bitmap_recycle.b r7 = r8.f9219a     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            r10.<init>(r6, r7)     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            r6 = r10
        L48:
            r9.compress(r1, r4, r6)     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            r6.close()     // Catch: java.lang.Throwable -> L53 java.io.IOException -> L55
            r5 = 1
        L4f:
            r6.close()     // Catch: java.io.IOException -> L65 java.lang.Throwable -> Lbc
            goto L65
        L53:
            r9 = move-exception
            goto Lb6
        L55:
            r10 = move-exception
            r4 = 3
            boolean r4 = android.util.Log.isLoggable(r0, r4)     // Catch: java.lang.Throwable -> L53
            if (r4 == 0) goto L62
            java.lang.String r4 = "Failed to encode Bitmap"
            android.util.Log.d(r0, r4, r10)     // Catch: java.lang.Throwable -> L53
        L62:
            if (r6 == 0) goto L65
            goto L4f
        L65:
            r10 = 2
            boolean r10 = android.util.Log.isLoggable(r0, r10)     // Catch: java.lang.Throwable -> Lbc
            if (r10 == 0) goto Lb2
            java.lang.StringBuilder r10 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> Lbc
            r10.<init>()     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r4 = "Compressed with type: "
            r10.append(r4)     // Catch: java.lang.Throwable -> Lbc
            r10.append(r1)     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r1 = " of size "
            r10.append(r1)     // Catch: java.lang.Throwable -> Lbc
            int r1 = com.bumptech.glide.util.o.h(r9)     // Catch: java.lang.Throwable -> Lbc
            r10.append(r1)     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r1 = " in "
            r10.append(r1)     // Catch: java.lang.Throwable -> Lbc
            double r1 = com.bumptech.glide.util.i.a(r2)     // Catch: java.lang.Throwable -> Lbc
            r10.append(r1)     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r1 = ", options format: "
            r10.append(r1)     // Catch: java.lang.Throwable -> Lbc
            com.bumptech.glide.load.e<android.graphics.Bitmap$CompressFormat> r1 = com.bumptech.glide.load.resource.bitmap.e.f9217c     // Catch: java.lang.Throwable -> Lbc
            java.lang.Object r11 = r11.c(r1)     // Catch: java.lang.Throwable -> Lbc
            r10.append(r11)     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r11 = ", hasAlpha: "
            r10.append(r11)     // Catch: java.lang.Throwable -> Lbc
            boolean r9 = r9.hasAlpha()     // Catch: java.lang.Throwable -> Lbc
            r10.append(r9)     // Catch: java.lang.Throwable -> Lbc
            java.lang.String r9 = r10.toString()     // Catch: java.lang.Throwable -> Lbc
            android.util.Log.v(r0, r9)     // Catch: java.lang.Throwable -> Lbc
        Lb2:
            com.bumptech.glide.util.pool.b.f()
            return r5
        Lb6:
            if (r6 == 0) goto Lbb
            r6.close()     // Catch: java.io.IOException -> Lbb java.lang.Throwable -> Lbc
        Lbb:
            throw r9     // Catch: java.lang.Throwable -> Lbc
        Lbc:
            r9 = move-exception
            com.bumptech.glide.util.pool.b.f()
            throw r9
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.resource.bitmap.e.a(com.bumptech.glide.load.engine.u, java.io.File, com.bumptech.glide.load.f):boolean");
    }

    @Deprecated
    public e() {
        this.f9219a = null;
    }
}
