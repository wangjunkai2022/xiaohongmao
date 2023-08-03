package com.bumptech.glide.load.model.stream;

import android.content.Context;
import android.database.Cursor;
import android.net.Uri;
import android.os.Build;
import android.os.Environment;
import android.os.ParcelFileDescriptor;
import android.provider.MediaStore;
import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.RequiresApi;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import com.bumptech.glide.load.model.n;
import com.bumptech.glide.load.model.o;
import com.bumptech.glide.load.model.r;
import java.io.File;
import java.io.FileNotFoundException;
import java.io.InputStream;

/* compiled from: QMediaStoreUriLoader.java */
@RequiresApi(29)
/* loaded from: classes.dex */
public final class f<DataT> implements n<Uri, DataT> {

    /* renamed from: a  reason: collision with root package name */
    private final Context f9118a;

    /* renamed from: b  reason: collision with root package name */
    private final n<File, DataT> f9119b;

    /* renamed from: c  reason: collision with root package name */
    private final n<Uri, DataT> f9120c;

    /* renamed from: d  reason: collision with root package name */
    private final Class<DataT> f9121d;

    /* compiled from: QMediaStoreUriLoader.java */
    /* loaded from: classes.dex */
    private static abstract class a<DataT> implements o<Uri, DataT> {

        /* renamed from: a  reason: collision with root package name */
        private final Context f9122a;

        /* renamed from: b  reason: collision with root package name */
        private final Class<DataT> f9123b;

        a(Context context, Class<DataT> cls) {
            this.f9122a = context;
            this.f9123b = cls;
        }

        @Override // com.bumptech.glide.load.model.o
        public final void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public final n<Uri, DataT> c(@NonNull r rVar) {
            return new f(this.f9122a, rVar.d(File.class, this.f9123b), rVar.d(Uri.class, this.f9123b), this.f9123b);
        }
    }

    /* compiled from: QMediaStoreUriLoader.java */
    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static final class b extends a<ParcelFileDescriptor> {
        public b(Context context) {
            super(context, ParcelFileDescriptor.class);
        }
    }

    /* compiled from: QMediaStoreUriLoader.java */
    @RequiresApi(29)
    /* loaded from: classes.dex */
    public static final class c extends a<InputStream> {
        public c(Context context) {
            super(context, InputStream.class);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: QMediaStoreUriLoader.java */
    /* loaded from: classes.dex */
    public static final class d<DataT> implements com.bumptech.glide.load.data.d<DataT> {

        /* renamed from: k  reason: collision with root package name */
        private static final String[] f9124k = {"_data"};

        /* renamed from: a  reason: collision with root package name */
        private final Context f9125a;

        /* renamed from: b  reason: collision with root package name */
        private final n<File, DataT> f9126b;

        /* renamed from: c  reason: collision with root package name */
        private final n<Uri, DataT> f9127c;

        /* renamed from: d  reason: collision with root package name */
        private final Uri f9128d;

        /* renamed from: e  reason: collision with root package name */
        private final int f9129e;

        /* renamed from: f  reason: collision with root package name */
        private final int f9130f;

        /* renamed from: g  reason: collision with root package name */
        private final com.bumptech.glide.load.f f9131g;

        /* renamed from: h  reason: collision with root package name */
        private final Class<DataT> f9132h;

        /* renamed from: i  reason: collision with root package name */
        private volatile boolean f9133i;
        @Nullable

        /* renamed from: j  reason: collision with root package name */
        private volatile com.bumptech.glide.load.data.d<DataT> f9134j;

        d(Context context, n<File, DataT> nVar, n<Uri, DataT> nVar2, Uri uri, int i4, int i10, com.bumptech.glide.load.f fVar, Class<DataT> cls) {
            this.f9125a = context.getApplicationContext();
            this.f9126b = nVar;
            this.f9127c = nVar2;
            this.f9128d = uri;
            this.f9129e = i4;
            this.f9130f = i10;
            this.f9131g = fVar;
            this.f9132h = cls;
        }

        @Nullable
        private n.a<DataT> c() throws FileNotFoundException {
            if (Environment.isExternalStorageLegacy()) {
                return this.f9126b.b(g(this.f9128d), this.f9129e, this.f9130f, this.f9131g);
            }
            return this.f9127c.b(f() ? MediaStore.setRequireOriginal(this.f9128d) : this.f9128d, this.f9129e, this.f9130f, this.f9131g);
        }

        @Nullable
        private com.bumptech.glide.load.data.d<DataT> e() throws FileNotFoundException {
            n.a<DataT> c10 = c();
            if (c10 != null) {
                return c10.f9079c;
            }
            return null;
        }

        private boolean f() {
            return this.f9125a.checkSelfPermission("android.permission.ACCESS_MEDIA_LOCATION") == 0;
        }

        @NonNull
        private File g(Uri uri) throws FileNotFoundException {
            Cursor cursor = null;
            try {
                Cursor query = this.f9125a.getContentResolver().query(uri, f9124k, null, null, null);
                if (query != null && query.moveToFirst()) {
                    String string = query.getString(query.getColumnIndexOrThrow("_data"));
                    if (!TextUtils.isEmpty(string)) {
                        File file = new File(string);
                        query.close();
                        return file;
                    }
                    throw new FileNotFoundException("File path was empty in media store for: " + uri);
                }
                throw new FileNotFoundException("Failed to media store entry for: " + uri);
            } catch (Throwable th) {
                if (0 != 0) {
                    cursor.close();
                }
                throw th;
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public Class<DataT> a() {
            return this.f9132h;
        }

        @Override // com.bumptech.glide.load.data.d
        public void b() {
            com.bumptech.glide.load.data.d<DataT> dVar = this.f9134j;
            if (dVar != null) {
                dVar.b();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public void cancel() {
            this.f9133i = true;
            com.bumptech.glide.load.data.d<DataT> dVar = this.f9134j;
            if (dVar != null) {
                dVar.cancel();
            }
        }

        @Override // com.bumptech.glide.load.data.d
        public void d(@NonNull Priority priority, @NonNull d.a<? super DataT> aVar) {
            try {
                com.bumptech.glide.load.data.d<DataT> e4 = e();
                if (e4 == null) {
                    aVar.c(new IllegalArgumentException("Failed to build fetcher for: " + this.f9128d));
                    return;
                }
                this.f9134j = e4;
                if (this.f9133i) {
                    cancel();
                } else {
                    e4.d(priority, aVar);
                }
            } catch (FileNotFoundException e10) {
                aVar.c(e10);
            }
        }

        @Override // com.bumptech.glide.load.data.d
        @NonNull
        public DataSource getDataSource() {
            return DataSource.LOCAL;
        }
    }

    f(Context context, n<File, DataT> nVar, n<Uri, DataT> nVar2, Class<DataT> cls) {
        this.f9118a = context.getApplicationContext();
        this.f9119b = nVar;
        this.f9120c = nVar2;
        this.f9121d = cls;
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: c */
    public n.a<DataT> b(@NonNull Uri uri, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        return new n.a<>(new com.bumptech.glide.signature.e(uri), new d(this.f9118a, this.f9119b, this.f9120c, uri, i4, i10, fVar, this.f9121d));
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: d */
    public boolean a(@NonNull Uri uri) {
        return Build.VERSION.SDK_INT >= 29 && com.bumptech.glide.load.data.mediastore.b.b(uri);
    }
}
