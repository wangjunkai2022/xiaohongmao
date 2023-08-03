package com.bumptech.glide.load.data.mediastore;

import android.content.ContentResolver;
import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.provider.MediaStore;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.data.g;
import java.io.FileNotFoundException;
import java.io.IOException;
import java.io.InputStream;

/* compiled from: ThumbFetcher.java */
/* loaded from: classes.dex */
public class c implements com.bumptech.glide.load.data.d<InputStream> {

    /* renamed from: d  reason: collision with root package name */
    private static final String f8568d = "MediaStoreThumbFetcher";

    /* renamed from: a  reason: collision with root package name */
    private final Uri f8569a;

    /* renamed from: b  reason: collision with root package name */
    private final e f8570b;

    /* renamed from: c  reason: collision with root package name */
    private InputStream f8571c;

    /* compiled from: ThumbFetcher.java */
    /* loaded from: classes.dex */
    static class a implements d {

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f8572b = {"_data"};

        /* renamed from: c  reason: collision with root package name */
        private static final String f8573c = "kind = 1 AND image_id = ?";

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f8574a;

        a(ContentResolver contentResolver) {
            this.f8574a = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.mediastore.d
        public Cursor a(Uri uri) {
            return this.f8574a.query(MediaStore.Images.Thumbnails.EXTERNAL_CONTENT_URI, f8572b, f8573c, new String[]{uri.getLastPathSegment()}, null);
        }
    }

    /* compiled from: ThumbFetcher.java */
    /* loaded from: classes.dex */
    static class b implements d {

        /* renamed from: b  reason: collision with root package name */
        private static final String[] f8575b = {"_data"};

        /* renamed from: c  reason: collision with root package name */
        private static final String f8576c = "kind = 1 AND video_id = ?";

        /* renamed from: a  reason: collision with root package name */
        private final ContentResolver f8577a;

        b(ContentResolver contentResolver) {
            this.f8577a = contentResolver;
        }

        @Override // com.bumptech.glide.load.data.mediastore.d
        public Cursor a(Uri uri) {
            return this.f8577a.query(MediaStore.Video.Thumbnails.EXTERNAL_CONTENT_URI, f8575b, f8576c, new String[]{uri.getLastPathSegment()}, null);
        }
    }

    @VisibleForTesting
    c(Uri uri, e eVar) {
        this.f8569a = uri;
        this.f8570b = eVar;
    }

    private static c c(Context context, Uri uri, d dVar) {
        return new c(uri, new e(com.bumptech.glide.c.e(context).n().g(), dVar, com.bumptech.glide.c.e(context).g(), context.getContentResolver()));
    }

    public static c e(Context context, Uri uri) {
        return c(context, uri, new a(context.getContentResolver()));
    }

    public static c f(Context context, Uri uri) {
        return c(context, uri, new b(context.getContentResolver()));
    }

    private InputStream g() throws FileNotFoundException {
        InputStream d4 = this.f8570b.d(this.f8569a);
        int a10 = d4 != null ? this.f8570b.a(this.f8569a) : -1;
        return a10 != -1 ? new g(d4, a10) : d4;
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public Class<InputStream> a() {
        return InputStream.class;
    }

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        InputStream inputStream = this.f8571c;
        if (inputStream != null) {
            try {
                inputStream.close();
            } catch (IOException unused) {
            }
        }
    }

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.d
    public void d(@NonNull Priority priority, @NonNull d.a<? super InputStream> aVar) {
        try {
            InputStream g4 = g();
            this.f8571c = g4;
            aVar.e(g4);
        } catch (FileNotFoundException e4) {
            if (Log.isLoggable(f8568d, 3)) {
                Log.d(f8568d, "Failed to find thumbnail file", e4);
            }
            aVar.c(e4);
        }
    }

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public DataSource getDataSource() {
        return DataSource.LOCAL;
    }
}
