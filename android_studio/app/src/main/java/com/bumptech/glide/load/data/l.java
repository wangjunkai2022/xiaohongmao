package com.bumptech.glide.load.data;

import android.content.ContentResolver;
import android.net.Uri;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import java.io.FileNotFoundException;
import java.io.IOException;

/* compiled from: LocalUriFetcher.java */
/* loaded from: classes.dex */
public abstract class l<T> implements d<T> {

    /* renamed from: d  reason: collision with root package name */
    private static final String f8562d = "LocalUriFetcher";

    /* renamed from: a  reason: collision with root package name */
    private final Uri f8563a;

    /* renamed from: b  reason: collision with root package name */
    private final ContentResolver f8564b;

    /* renamed from: c  reason: collision with root package name */
    private T f8565c;

    public l(ContentResolver contentResolver, Uri uri) {
        this.f8564b = contentResolver;
        this.f8563a = uri;
    }

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        T t9 = this.f8565c;
        if (t9 != null) {
            try {
                c(t9);
            } catch (IOException unused) {
            }
        }
    }

    protected abstract void c(T t9) throws IOException;

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.d
    public final void d(@NonNull Priority priority, @NonNull d.a<? super T> aVar) {
        try {
            T e4 = e(this.f8563a, this.f8564b);
            this.f8565c = e4;
            aVar.e(e4);
        } catch (FileNotFoundException e10) {
            if (Log.isLoggable(f8562d, 3)) {
                Log.d(f8562d, "Failed to open Uri", e10);
            }
            aVar.c(e10);
        }
    }

    protected abstract T e(Uri uri, ContentResolver contentResolver) throws FileNotFoundException;

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public DataSource getDataSource() {
        return DataSource.LOCAL;
    }
}
