package com.bumptech.glide.load.engine.cache;

import com.bumptech.glide.load.engine.cache.a;
import java.io.File;

/* compiled from: DiskLruCacheFactory.java */
/* loaded from: classes.dex */
public class d implements a.InterfaceC0048a {

    /* renamed from: c  reason: collision with root package name */
    private final long f8700c;

    /* renamed from: d  reason: collision with root package name */
    private final c f8701d;

    /* compiled from: DiskLruCacheFactory.java */
    /* loaded from: classes.dex */
    class a implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f8702a;

        a(String str) {
            this.f8702a = str;
        }

        @Override // com.bumptech.glide.load.engine.cache.d.c
        public File a() {
            return new File(this.f8702a);
        }
    }

    /* compiled from: DiskLruCacheFactory.java */
    /* loaded from: classes.dex */
    class b implements c {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ String f8703a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ String f8704b;

        b(String str, String str2) {
            this.f8703a = str;
            this.f8704b = str2;
        }

        @Override // com.bumptech.glide.load.engine.cache.d.c
        public File a() {
            return new File(this.f8703a, this.f8704b);
        }
    }

    /* compiled from: DiskLruCacheFactory.java */
    /* loaded from: classes.dex */
    public interface c {
        File a();
    }

    public d(String str, long j4) {
        this(new a(str), j4);
    }

    @Override // com.bumptech.glide.load.engine.cache.a.InterfaceC0048a
    public com.bumptech.glide.load.engine.cache.a build() {
        File a10 = this.f8701d.a();
        if (a10 == null) {
            return null;
        }
        if (a10.isDirectory() || a10.mkdirs()) {
            return e.d(a10, this.f8700c);
        }
        return null;
    }

    public d(String str, String str2, long j4) {
        this(new b(str, str2), j4);
    }

    public d(c cVar, long j4) {
        this.f8700c = j4;
        this.f8701d = cVar;
    }
}
