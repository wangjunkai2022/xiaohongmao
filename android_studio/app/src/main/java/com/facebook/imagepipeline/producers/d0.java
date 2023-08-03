package com.facebook.imagepipeline.producers;

import android.content.ContentResolver;
import android.database.Cursor;
import android.graphics.Rect;
import android.media.ExifInterface;
import android.net.Uri;
import android.provider.MediaStore;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import io.sentry.instrumentation.file.h;
import java.io.File;
import java.io.FileInputStream;
import java.io.IOException;
import java.util.concurrent.Executor;

/* compiled from: LocalContentUriThumbnailFetchProducer.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class d0 extends e0 implements h1<com.facebook.imagepipeline.image.e> {

    /* renamed from: e  reason: collision with root package name */
    public static final String f12937e = "LocalContentUriThumbnailFetchProducer";

    /* renamed from: j  reason: collision with root package name */
    private static final int f12942j = 0;

    /* renamed from: c  reason: collision with root package name */
    private final ContentResolver f12943c;

    /* renamed from: d  reason: collision with root package name */
    private static final Class<?> f12936d = d0.class;

    /* renamed from: f  reason: collision with root package name */
    private static final String[] f12938f = {"_id", "_data"};

    /* renamed from: g  reason: collision with root package name */
    private static final String[] f12939g = {"_data"};

    /* renamed from: h  reason: collision with root package name */
    private static final Rect f12940h = new Rect(0, 0, 512, com.facebook.imagepipeline.memory.c.f12563b);

    /* renamed from: i  reason: collision with root package name */
    private static final Rect f12941i = new Rect(0, 0, 96, 96);

    public d0(Executor executor, com.facebook.common.memory.g pooledByteBufferFactory, ContentResolver contentResolver) {
        super(executor, pooledByteBufferFactory);
        this.f12943c = contentResolver;
    }

    @r7.h
    private com.facebook.imagepipeline.image.e g(Uri uri, @r7.h com.facebook.imagepipeline.common.d resizeOptions) throws IOException {
        Cursor query;
        com.facebook.imagepipeline.image.e j4;
        if (resizeOptions == null || (query = this.f12943c.query(uri, f12938f, null, null, null)) == null) {
            return null;
        }
        try {
            if (!query.moveToFirst() || (j4 = j(resizeOptions, query.getLong(query.getColumnIndex("_id")))) == null) {
                return null;
            }
            j4.r0(i(query.getString(query.getColumnIndex("_data"))));
            return j4;
        } finally {
            query.close();
        }
    }

    private static int h(String pathname) {
        if (pathname == null) {
            return -1;
        }
        return (int) new File(pathname).length();
    }

    private static int i(@r7.h String pathname) {
        if (pathname != null) {
            try {
                return com.facebook.imageutils.c.a(new ExifInterface(pathname).getAttributeInt(androidx.exifinterface.media.ExifInterface.TAG_ORIENTATION, 1));
            } catch (IOException e4) {
                p0.a.t(f12936d, e4, "Unable to retrieve thumbnail rotation for %s", pathname);
            }
        }
        return 0;
    }

    @r7.h
    private com.facebook.imagepipeline.image.e j(com.facebook.imagepipeline.common.d resizeOptions, long imageId) throws IOException {
        Cursor queryMiniThumbnail;
        int k10 = k(resizeOptions);
        if (k10 == 0 || (queryMiniThumbnail = MediaStore.Images.Thumbnails.queryMiniThumbnail(this.f12943c, imageId, k10, f12939g)) == null) {
            return null;
        }
        try {
            if (queryMiniThumbnail.moveToFirst()) {
                String str = (String) com.facebook.common.internal.j.i(queryMiniThumbnail.getString(queryMiniThumbnail.getColumnIndex("_data")));
                if (new File(str).exists()) {
                    return e(h.b.d(new FileInputStream(str), str), h(str));
                }
            }
            return null;
        } finally {
            queryMiniThumbnail.close();
        }
    }

    private static int k(com.facebook.imagepipeline.common.d resizeOptions) {
        Rect rect = f12941i;
        if (i1.b(rect.width(), rect.height(), resizeOptions)) {
            return 3;
        }
        Rect rect2 = f12940h;
        return i1.b(rect2.width(), rect2.height(), resizeOptions) ? 1 : 0;
    }

    @Override // com.facebook.imagepipeline.producers.h1
    public boolean a(@r7.h com.facebook.imagepipeline.common.d resizeOptions) {
        Rect rect = f12940h;
        return i1.b(rect.width(), rect.height(), resizeOptions);
    }

    @Override // com.facebook.imagepipeline.producers.e0
    @r7.h
    protected com.facebook.imagepipeline.image.e d(ImageRequest imageRequest) throws IOException {
        Uri w9 = imageRequest.w();
        if (com.facebook.common.util.f.i(w9)) {
            return g(w9, imageRequest.s());
        }
        return null;
    }

    @Override // com.facebook.imagepipeline.producers.e0
    protected String f() {
        return f12937e;
    }
}
