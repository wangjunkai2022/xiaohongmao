package com.bumptech.glide.request.transition;

import android.graphics.drawable.Drawable;
import com.bumptech.glide.load.DataSource;

/* compiled from: DrawableCrossFadeFactory.java */
/* loaded from: classes.dex */
public class c implements g<Drawable> {

    /* renamed from: a  reason: collision with root package name */
    private final int f9663a;

    /* renamed from: b  reason: collision with root package name */
    private final boolean f9664b;

    /* renamed from: c  reason: collision with root package name */
    private d f9665c;

    /* compiled from: DrawableCrossFadeFactory.java */
    /* loaded from: classes.dex */
    public static class a {

        /* renamed from: c  reason: collision with root package name */
        private static final int f9666c = 300;

        /* renamed from: a  reason: collision with root package name */
        private final int f9667a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f9668b;

        public a() {
            this(300);
        }

        public c a() {
            return new c(this.f9667a, this.f9668b);
        }

        public a b(boolean z9) {
            this.f9668b = z9;
            return this;
        }

        public a(int i4) {
            this.f9667a = i4;
        }
    }

    protected c(int i4, boolean z9) {
        this.f9663a = i4;
        this.f9664b = z9;
    }

    private f<Drawable> b() {
        if (this.f9665c == null) {
            this.f9665c = new d(this.f9663a, this.f9664b);
        }
        return this.f9665c;
    }

    @Override // com.bumptech.glide.request.transition.g
    public f<Drawable> a(DataSource dataSource, boolean z9) {
        if (dataSource == DataSource.MEMORY_CACHE) {
            return e.b();
        }
        return b();
    }
}
