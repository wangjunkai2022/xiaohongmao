package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import androidx.annotation.Nullable;
import com.bumptech.glide.load.engine.cache.a;
import com.bumptech.glide.load.engine.cache.d;
import java.io.File;

/* compiled from: ExternalPreferredCacheDiskCacheFactory.java */
/* loaded from: classes.dex */
public final class g extends d {

    /* compiled from: ExternalPreferredCacheDiskCacheFactory.java */
    /* loaded from: classes.dex */
    class a implements d.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f8716a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f8717b;

        a(Context context, String str) {
            this.f8716a = context;
            this.f8717b = str;
        }

        @Nullable
        private File b() {
            File cacheDir = this.f8716a.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.f8717b != null ? new File(cacheDir, this.f8717b) : cacheDir;
        }

        @Override // com.bumptech.glide.load.engine.cache.d.c
        public File a() {
            File externalCacheDir;
            File b10 = b();
            return ((b10 == null || !b10.exists()) && (externalCacheDir = this.f8716a.getExternalCacheDir()) != null && externalCacheDir.canWrite()) ? this.f8717b != null ? new File(externalCacheDir, this.f8717b) : externalCacheDir : b10;
        }
    }

    public g(Context context) {
        this(context, a.InterfaceC0048a.f8693b, 262144000L);
    }

    public g(Context context, long j4) {
        this(context, a.InterfaceC0048a.f8693b, j4);
    }

    public g(Context context, String str, long j4) {
        super(new a(context, str), j4);
    }
}
