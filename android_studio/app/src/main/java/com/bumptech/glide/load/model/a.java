package com.bumptech.glide.load.model;

import android.content.res.AssetFileDescriptor;
import android.content.res.AssetManager;
import android.net.Uri;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.model.n;
import java.io.InputStream;

/* compiled from: AssetUriLoader.java */
/* loaded from: classes.dex */
public class a<Data> implements n<Uri, Data> {

    /* renamed from: c  reason: collision with root package name */
    private static final String f9017c = "android_asset";

    /* renamed from: d  reason: collision with root package name */
    private static final String f9018d = "file:///android_asset/";

    /* renamed from: e  reason: collision with root package name */
    private static final int f9019e = 22;

    /* renamed from: a  reason: collision with root package name */
    private final AssetManager f9020a;

    /* renamed from: b  reason: collision with root package name */
    private final InterfaceC0056a<Data> f9021b;

    /* compiled from: AssetUriLoader.java */
    /* renamed from: com.bumptech.glide.load.model.a$a  reason: collision with other inner class name */
    /* loaded from: classes.dex */
    public interface InterfaceC0056a<Data> {
        com.bumptech.glide.load.data.d<Data> b(AssetManager assetManager, String str);
    }

    /* compiled from: AssetUriLoader.java */
    /* loaded from: classes.dex */
    public static class b implements o<Uri, AssetFileDescriptor>, InterfaceC0056a<AssetFileDescriptor> {

        /* renamed from: a  reason: collision with root package name */
        private final AssetManager f9022a;

        public b(AssetManager assetManager) {
            this.f9022a = assetManager;
        }

        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.a.InterfaceC0056a
        public com.bumptech.glide.load.data.d<AssetFileDescriptor> b(AssetManager assetManager, String str) {
            return new com.bumptech.glide.load.data.h(assetManager, str);
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Uri, AssetFileDescriptor> c(r rVar) {
            return new a(this.f9022a, this);
        }
    }

    /* compiled from: AssetUriLoader.java */
    /* loaded from: classes.dex */
    public static class c implements o<Uri, InputStream>, InterfaceC0056a<InputStream> {

        /* renamed from: a  reason: collision with root package name */
        private final AssetManager f9023a;

        public c(AssetManager assetManager) {
            this.f9023a = assetManager;
        }

        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.a.InterfaceC0056a
        public com.bumptech.glide.load.data.d<InputStream> b(AssetManager assetManager, String str) {
            return new com.bumptech.glide.load.data.m(assetManager, str);
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Uri, InputStream> c(r rVar) {
            return new a(this.f9023a, this);
        }
    }

    public a(AssetManager assetManager, InterfaceC0056a<Data> interfaceC0056a) {
        this.f9020a = assetManager;
        this.f9021b = interfaceC0056a;
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: c */
    public n.a<Data> b(@NonNull Uri uri, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        return new n.a<>(new com.bumptech.glide.signature.e(uri), this.f9021b.b(this.f9020a, uri.toString().substring(f9019e)));
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: d */
    public boolean a(@NonNull Uri uri) {
        return "file".equals(uri.getScheme()) && !uri.getPathSegments().isEmpty() && f9017c.equals(uri.getPathSegments().get(0));
    }
}
