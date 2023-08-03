package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import android.net.Uri;
import android.text.TextUtils;
import android.util.Log;
import com.bumptech.glide.load.ImageHeaderParser;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;
import java.util.List;

/* compiled from: ThumbnailStreamOpener.java */
/* loaded from: classes.dex */
class e {

    /* renamed from: f  reason: collision with root package name */
    private static final String f8578f = "ThumbStreamOpener";

    /* renamed from: g  reason: collision with root package name */
    private static final a f8579g = new a();

    /* renamed from: a  reason: collision with root package name */
    private final a f8580a;

    /* renamed from: b  reason: collision with root package name */
    private final d f8581b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f8582c;

    /* renamed from: d  reason: collision with root package name */
    private final ContentResolver f8583d;

    /* renamed from: e  reason: collision with root package name */
    private final List<ImageHeaderParser> f8584e;

    /* JADX INFO: Access modifiers changed from: package-private */
    public e(List<ImageHeaderParser> list, d dVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar, ContentResolver contentResolver) {
        this(list, f8579g, dVar, bVar, contentResolver);
    }

    /* JADX WARN: Not initialized variable reg: 2, insn: 0x0048: MOVE  (r1 I:??[OBJECT, ARRAY]) = (r2 I:??[OBJECT, ARRAY]), block:B:27:0x0048 */
    /* JADX WARN: Removed duplicated region for block: B:29:0x004b  */
    @androidx.annotation.Nullable
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private java.lang.String b(@androidx.annotation.NonNull android.net.Uri r7) {
        /*
            r6 = this;
            java.lang.String r0 = "ThumbStreamOpener"
            r1 = 0
            com.bumptech.glide.load.data.mediastore.d r2 = r6.f8581b     // Catch: java.lang.Throwable -> L22 java.lang.SecurityException -> L24
            android.database.Cursor r2 = r2.a(r7)     // Catch: java.lang.Throwable -> L22 java.lang.SecurityException -> L24
            if (r2 == 0) goto L1c
            boolean r3 = r2.moveToFirst()     // Catch: java.lang.SecurityException -> L1a java.lang.Throwable -> L47
            if (r3 == 0) goto L1c
            r3 = 0
            java.lang.String r7 = r2.getString(r3)     // Catch: java.lang.SecurityException -> L1a java.lang.Throwable -> L47
            r2.close()
            return r7
        L1a:
            r3 = move-exception
            goto L26
        L1c:
            if (r2 == 0) goto L21
            r2.close()
        L21:
            return r1
        L22:
            r7 = move-exception
            goto L49
        L24:
            r3 = move-exception
            r2 = r1
        L26:
            r4 = 3
            boolean r4 = android.util.Log.isLoggable(r0, r4)     // Catch: java.lang.Throwable -> L47
            if (r4 == 0) goto L41
            java.lang.StringBuilder r4 = new java.lang.StringBuilder     // Catch: java.lang.Throwable -> L47
            r4.<init>()     // Catch: java.lang.Throwable -> L47
            java.lang.String r5 = "Failed to query for thumbnail for Uri: "
            r4.append(r5)     // Catch: java.lang.Throwable -> L47
            r4.append(r7)     // Catch: java.lang.Throwable -> L47
            java.lang.String r7 = r4.toString()     // Catch: java.lang.Throwable -> L47
            android.util.Log.d(r0, r7, r3)     // Catch: java.lang.Throwable -> L47
        L41:
            if (r2 == 0) goto L46
            r2.close()
        L46:
            return r1
        L47:
            r7 = move-exception
            r1 = r2
        L49:
            if (r1 == 0) goto L4e
            r1.close()
        L4e:
            throw r7
        */
        throw new UnsupportedOperationException("Method not decompiled: com.bumptech.glide.load.data.mediastore.e.b(android.net.Uri):java.lang.String");
    }

    private boolean c(File file) {
        return this.f8580a.a(file) && 0 < this.f8580a.c(file);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int a(Uri uri) {
        InputStream inputStream = null;
        try {
            try {
                inputStream = this.f8583d.openInputStream(uri);
                int b10 = com.bumptech.glide.load.b.b(this.f8584e, inputStream, this.f8582c);
                if (inputStream != null) {
                    try {
                        inputStream.close();
                    } catch (IOException unused) {
                    }
                }
                return b10;
            } catch (IOException | NullPointerException e4) {
                if (Log.isLoggable(f8578f, 3)) {
                    Log.d(f8578f, "Failed to open uri: " + uri, e4);
                }
                if (inputStream != null) {
                    try {
                        inputStream.close();
                        return -1;
                    } catch (IOException unused2) {
                        return -1;
                    }
                }
                return -1;
            }
        } catch (Throwable th) {
            if (0 != 0) {
                try {
                    inputStream.close();
                } catch (IOException unused3) {
                }
            }
            throw th;
        }
    }

    public InputStream d(Uri uri) throws FileNotFoundException {
        String b10 = b(uri);
        if (TextUtils.isEmpty(b10)) {
            return null;
        }
        File b11 = this.f8580a.b(b10);
        if (c(b11)) {
            Uri fromFile = Uri.fromFile(b11);
            try {
                return this.f8583d.openInputStream(fromFile);
            } catch (NullPointerException e4) {
                throw ((FileNotFoundException) new FileNotFoundException("NPE opening uri: " + uri + " -> " + fromFile).initCause(e4));
            }
        }
        return null;
    }

    e(List<ImageHeaderParser> list, a aVar, d dVar, com.bumptech.glide.load.engine.bitmap_recycle.b bVar, ContentResolver contentResolver) {
        this.f8580a = aVar;
        this.f8581b = dVar;
        this.f8582c = bVar;
        this.f8583d = contentResolver;
        this.f8584e = list;
    }
}
