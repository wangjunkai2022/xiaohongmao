package com.bumptech.glide.load.engine;

import com.bumptech.glide.load.DataSource;
import com.bumptech.glide.load.EncodeStrategy;

/* compiled from: DiskCacheStrategy.java */
/* loaded from: classes.dex */
public abstract class j {

    /* renamed from: a  reason: collision with root package name */
    public static final j f8860a = new a();

    /* renamed from: b  reason: collision with root package name */
    public static final j f8861b = new b();

    /* renamed from: c  reason: collision with root package name */
    public static final j f8862c = new c();

    /* renamed from: d  reason: collision with root package name */
    public static final j f8863d = new d();

    /* renamed from: e  reason: collision with root package name */
    public static final j f8864e = new e();

    /* compiled from: DiskCacheStrategy.java */
    /* loaded from: classes.dex */
    class a extends j {
        a() {
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean b() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean c(DataSource dataSource) {
            return dataSource == DataSource.REMOTE;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean d(boolean z9, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return (dataSource == DataSource.RESOURCE_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
        }
    }

    /* compiled from: DiskCacheStrategy.java */
    /* loaded from: classes.dex */
    class b extends j {
        b() {
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean a() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean b() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean c(DataSource dataSource) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean d(boolean z9, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return false;
        }
    }

    /* compiled from: DiskCacheStrategy.java */
    /* loaded from: classes.dex */
    class c extends j {
        c() {
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean b() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean c(DataSource dataSource) {
            return (dataSource == DataSource.DATA_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean d(boolean z9, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return false;
        }
    }

    /* compiled from: DiskCacheStrategy.java */
    /* loaded from: classes.dex */
    class d extends j {
        d() {
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean a() {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean b() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean c(DataSource dataSource) {
            return false;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean d(boolean z9, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return (dataSource == DataSource.RESOURCE_DISK_CACHE || dataSource == DataSource.MEMORY_CACHE) ? false : true;
        }
    }

    /* compiled from: DiskCacheStrategy.java */
    /* loaded from: classes.dex */
    class e extends j {
        e() {
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean a() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean b() {
            return true;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean c(DataSource dataSource) {
            return dataSource == DataSource.REMOTE;
        }

        @Override // com.bumptech.glide.load.engine.j
        public boolean d(boolean z9, DataSource dataSource, EncodeStrategy encodeStrategy) {
            return ((z9 && dataSource == DataSource.DATA_DISK_CACHE) || dataSource == DataSource.LOCAL) && encodeStrategy == EncodeStrategy.TRANSFORMED;
        }
    }

    public abstract boolean a();

    public abstract boolean b();

    public abstract boolean c(DataSource dataSource);

    public abstract boolean d(boolean z9, DataSource dataSource, EncodeStrategy encodeStrategy);
}
