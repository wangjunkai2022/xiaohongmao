package com.bumptech.glide.load.model;

import android.net.Uri;
import androidx.annotation.NonNull;
import com.bumptech.glide.load.model.n;
import java.io.InputStream;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashSet;
import java.util.Set;

/* compiled from: UrlUriLoader.java */
/* loaded from: classes.dex */
public class x<Data> implements n<Uri, Data> {

    /* renamed from: b  reason: collision with root package name */
    private static final Set<String> f9147b = Collections.unmodifiableSet(new HashSet(Arrays.asList("http", "https")));

    /* renamed from: a  reason: collision with root package name */
    private final n<g, Data> f9148a;

    /* compiled from: UrlUriLoader.java */
    /* loaded from: classes.dex */
    public static class a implements o<Uri, InputStream> {
        @Override // com.bumptech.glide.load.model.o
        public void a() {
        }

        @Override // com.bumptech.glide.load.model.o
        @NonNull
        public n<Uri, InputStream> c(r rVar) {
            return new x(rVar.d(g.class, InputStream.class));
        }
    }

    public x(n<g, Data> nVar) {
        this.f9148a = nVar;
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: c */
    public n.a<Data> b(@NonNull Uri uri, int i4, int i10, @NonNull com.bumptech.glide.load.f fVar) {
        return this.f9148a.b(new g(uri.toString()), i4, i10, fVar);
    }

    @Override // com.bumptech.glide.load.model.n
    /* renamed from: d */
    public boolean a(@NonNull Uri uri) {
        return f9147b.contains(uri.getScheme());
    }
}
