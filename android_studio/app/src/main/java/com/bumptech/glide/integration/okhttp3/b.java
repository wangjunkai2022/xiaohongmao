package com.bumptech.glide.integration.okhttp3;

import androidx.annotation.NonNull;
import com.bumptech.glide.load.f;
import com.bumptech.glide.load.model.g;
import com.bumptech.glide.load.model.n;
import com.bumptech.glide.load.model.o;
import com.bumptech.glide.load.model.r;
import java.io.InputStream;
import okhttp3.Call;
import okhttp3.OkHttpClient;

/* compiled from: OkHttpUrlLoader.java */
/* loaded from: classes.dex */
public class b implements n<g, InputStream> {

    /* renamed from: a  reason: collision with root package name */
    private final Call.Factory f8213a;

    /* compiled from: OkHttpUrlLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<g, InputStream> {

        /* renamed from: b  reason: collision with root package name */
        private static volatile Call.Factory f8214b;

        /* renamed from: a  reason: collision with root package name */
        private final Call.Factory f8215a;

        public a() {
            this(b());
        }

        private static Call.Factory b() {
            if (f8214b == null) {
                synchronized (a.class) {
                    if (f8214b == null) {
                        f8214b = new OkHttpClient();
                    }
                }
            }
            return f8214b;
        }

        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<g, InputStream> c(r rVar) {
            return new b(this.f8215a);
        }

        public a(@NonNull Call.Factory factory) {
            this.f8215a = factory;
        }
    }

    public b(@NonNull Call.Factory factory) {
        this.f8213a = factory;
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: c */
    public n.a<InputStream> b(@NonNull g gVar, int i4, int i10, @NonNull f fVar) {
        return new n.a<>(gVar, new d0.a(this.f8213a, gVar));
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: d */
    public boolean a(@NonNull g gVar) {
        return true;
    }
}
