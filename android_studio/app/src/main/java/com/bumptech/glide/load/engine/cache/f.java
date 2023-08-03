package com.bumptech.glide.load.engine.cache;

import android.content.Context;
import com.bumptech.glide.load.engine.cache.a;
import com.bumptech.glide.load.engine.cache.d;
import java.io.File;

/* compiled from: ExternalCacheDiskCacheFactory.java */
@Deprecated
/* loaded from: classes.dex */
public final class f extends d {

    /* compiled from: ExternalCacheDiskCacheFactory.java */
    /* loaded from: classes.dex */
    class a implements d.c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ Context f8714a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f8715b;

        a(Context context, String str) {
            this.f8714a = context;
            this.f8715b = str;
        }

        @Override // com.bumptech.glide.load.engine.cache.d.c
        public File a() {
            File externalCacheDir = this.f8714a.getExternalCacheDir();
            if (externalCacheDir == null) {
                return null;
            }
            return this.f8715b != null ? new File(externalCacheDir, this.f8715b) : externalCacheDir;
        }
    }

    public f(Context context) {
        this(context, a.InterfaceC0048a.f8693b, a.InterfaceC0048a.f8692a);
    }

    public f(Context context, int i4) {
        this(context, a.InterfaceC0048a.f8693b, i4);
    }

    public f(Context context, String str, int i4) {
        super(new a(context, str), i4);
    }
}
