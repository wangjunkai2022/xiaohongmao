package com.bumptech.glide.load.data;

import android.content.res.AssetManager;
import android.util.Log;
import androidx.annotation.NonNull;
import com.bumptech.glide.Priority;
import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.data.d;
import java.io.IOException;

/* compiled from: AssetPathFetcher.java */
/* loaded from: classes.dex */
public abstract class b<T> implements d<T> {

    /* renamed from: d  reason: collision with root package name */
    private static final String f8531d = "AssetPathFetcher";

    /* renamed from: a  reason: collision with root package name */
    private final String f8532a;

    /* renamed from: b  reason: collision with root package name */
    private final AssetManager f8533b;

    /* renamed from: c  reason: collision with root package name */
    private T f8534c;

    public b(AssetManager assetManager, String str) {
        this.f8533b = assetManager;
        this.f8532a = str;
    }

    @Override // com.bumptech.glide.load.data.d
    public void b() {
        T t9 = this.f8534c;
        if (t9 == null) {
            return;
        }
        try {
            c(t9);
        } catch (IOException unused) {
        }
    }

    protected abstract void c(T t9) throws IOException;

    @Override // com.bumptech.glide.load.data.d
    public void cancel() {
    }

    @Override // com.bumptech.glide.load.data.d
    public void d(@NonNull Priority priority, @NonNull d.a<? super T> aVar) {
        try {
            T e4 = e(this.f8533b, this.f8532a);
            this.f8534c = e4;
            aVar.e(e4);
        } catch (IOException e10) {
            if (Log.isLoggable(f8531d, 3)) {
                Log.d(f8531d, "Failed to load data from asset manager", e10);
            }
            aVar.c(e10);
        }
    }

    protected abstract T e(AssetManager assetManager, String str) throws IOException;

    @Override // com.bumptech.glide.load.data.d
    @NonNull
    public DataSource getDataSource() {
        return DataSource.LOCAL;
    }
}
