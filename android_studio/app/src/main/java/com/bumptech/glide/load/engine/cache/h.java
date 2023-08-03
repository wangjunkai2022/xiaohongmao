package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import com.bumptech.glide.load.engine.cache.a;
import com.bumptech.glide.load.engine.cache.d;
import java.io.File;

/* compiled from: InternalCacheDiskCacheFactory.java */
/* loaded from: classes.dex */
public final class h extends d {

    /* compiled from: InternalCacheDiskCacheFactory.java */
    /* loaded from: classes.dex */
    class a implements d.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f8718a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f8719b;

        a(Context context, String str) {
            this.f8718a = context;
            this.f8719b = str;
        }

        @Override // com.bumptech.glide.load.engine.cache.d.c
        public File a() {
            File cacheDir = this.f8718a.getCacheDir();
            if (cacheDir == null) {
                return null;
            }
            return this.f8719b != null ? new File(cacheDir, this.f8719b) : cacheDir;
        }
    }

    public h(Context context) {
        this(context, a.InterfaceC0048a.f8693b, 262144000L);
    }

    public h(Context context, long j4) {
        this(context, a.InterfaceC0048a.f8693b, j4);
    }

    public h(Context context, String str, long j4) {
        super(new a(context, str), j4);
    }
}
