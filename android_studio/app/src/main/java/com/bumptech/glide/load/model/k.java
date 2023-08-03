package com.bumptech.glide.load.model;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.model.n;
import java.io.File;
import java.io.FileNotFoundException;

/* compiled from: MediaStoreFileLoader.java */
/* loaded from: classes.dex */
public final class k implements n<Uri, File> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9065a;

    /* compiled from: MediaStoreFileLoader.java */
    /* loaded from: classes.dex */
    public static final class a implements o<Uri, File> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f9066a;

        public a(Context context) {
            this.f9066a = context;
        }

        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Uri, File> c(r rVar) {
            return new k(this.f9066a);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: MediaStoreFileLoader.java */
    /* loaded from: classes.dex */
    public static class b implements com.bumptech.glide.load.data.d<File> {

        /* renamed from: c  reason: collision with root package name */
        private static final String[] f9067c = {"_data"};

        /* renamed from: a  reason: collision with root package name */
        private final Context f9068a;

        /* renamed from: b  reason: collision with root package name */
        private final Uri f9069b;

        b(Context context, Uri uri) {
            this.f9068a = context;
            this.f9069b = uri;
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<File> a() {
            return File.class;
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
        }

        @Override // com.bumptech.glide.load.data.d
        public void d(@NonNull Priority priority, @NonNull d.a<? super File> aVar) {
            Cursor query = this.f9068a.getContentResolver().query(this.f9069b, f9067c, null, null, null);
            if (query != null) {
                try {
                    r0 = query.moveToFirst() ? query.getString(query.getColumnIndexOrThrow("_data")) : null;
                } finally {
                    query.close();
                }
            }
            if (TextUtils.isEmpty(r0)) {
                aVar.c(new FileNotFoundException("Failed to find file path for: " + this.f9069b));
                return;
            }
            aVar.e(new File(r0));
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }
    }

    public k(Context context) {
        this.f9065a = context;
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: c */
    public n.a<File> b(@NonNull Uri uri, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        return new n.a<>(new com.bumptech.glide.signature.e(uri), new b(this.f9065a, uri));
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: d */
    public boolean a(@NonNull Uri uri) {
        return com.bumptech.glide.load.data.mediastore.b.b(uri);
    }
}
