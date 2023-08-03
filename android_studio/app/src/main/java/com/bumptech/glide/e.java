package com.bumptech.glide;

import android.content.Context;
import android.content.ContextWrapper;
import android.widget.ImageView;
import androidx.annotation.GuardedBy;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import com.bumptech.glide.c;
import com.bumptech.glide.request.target.r;
import java.util.List;
import java.util.Map;

/* compiled from: GlideContext.java */
/* loaded from: classes.dex */
public class e extends ContextWrapper {
    @VisibleForTesting

    /* renamed from: k  reason: collision with root package name */
    static final l<?, ?> f7221k = new b();

    /* renamed from: a  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.bitmap_recycle.b f7222a;

    /* renamed from: b  reason: collision with root package name */
    private final Registry f7223b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.request.target.k f7224c;

    /* renamed from: d  reason: collision with root package name */
    private final c.a f7225d;

    /* renamed from: e  reason: collision with root package name */
    private final List<com.bumptech.glide.request.g<Object>> f7226e;

    /* renamed from: f  reason: collision with root package name */
    private final Map<Class<?>, l<?, ?>> f7227f;

    /* renamed from: g  reason: collision with root package name */
    private final com.bumptech.glide.load.engine.k f7228g;

    /* renamed from: h  reason: collision with root package name */
    private final f f7229h;

    /* renamed from: i  reason: collision with root package name */
    private final int f7230i;
    @Nullable
    @GuardedBy("this")

    /* renamed from: j  reason: collision with root package name */
    private com.bumptech.glide.request.h f7231j;

    public e(@NonNull Context context, @NonNull com.bumptech.glide.load.engine.bitmap_recycle.b bVar, @NonNull Registry registry, @NonNull com.bumptech.glide.request.target.k kVar, @NonNull c.a aVar, @NonNull Map<Class<?>, l<?, ?>> map, @NonNull List<com.bumptech.glide.request.g<Object>> list, @NonNull com.bumptech.glide.load.engine.k kVar2, @NonNull f fVar, int i4) {
        super(context.getApplicationContext());
        this.f7222a = bVar;
        this.f7223b = registry;
        this.f7224c = kVar;
        this.f7225d = aVar;
        this.f7226e = list;
        this.f7227f = map;
        this.f7228g = kVar2;
        this.f7229h = fVar;
        this.f7230i = i4;
    }

    @NonNull
    public <X> r<ImageView, X> a(@NonNull ImageView imageView, @NonNull Class<X> cls) {
        return this.f7224c.a(imageView, cls);
    }

    @NonNull
    public com.bumptech.glide.load.engine.bitmap_recycle.b b() {
        return this.f7222a;
    }

    public List<com.bumptech.glide.request.g<Object>> c() {
        return this.f7226e;
    }

    public synchronized com.bumptech.glide.request.h d() {
        if (this.f7231j == null) {
            this.f7231j = this.f7225d.build().k0();
        }
        return this.f7231j;
    }

    @NonNull
    public <T> l<?, T> e(@NonNull Class<T> cls) {
        l<?, T> lVar = (l<?, T>) this.f7227f.get(cls);
        if (lVar == null) {
            for (Map.Entry<Class<?>, l<?, ?>> entry : this.f7227f.entrySet()) {
                if (entry.getKey().isAssignableFrom(cls)) {
                    lVar = (l<?, T>) entry.getValue();
                }
            }
        }
        return lVar == null ? (l<?, T>) f7221k : lVar;
    }

    @NonNull
    public com.bumptech.glide.load.engine.k f() {
        return this.f7228g;
    }

    public f g() {
        return this.f7229h;
    }

    public int h() {
        return this.f7230i;
    }

    @NonNull
    public Registry i() {
        return this.f7223b;
    }
}
