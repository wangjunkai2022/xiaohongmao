package com.bumptech.glide;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.util.Pools;
import com.bumptech.glide.load.ImageHeaderParser;
import com.bumptech.glide.load.data.e;
import com.bumptech.glide.load.engine.s;
import com.bumptech.glide.load.engine.u;
import com.bumptech.glide.load.model.n;
import com.bumptech.glide.load.model.o;
import com.bumptech.glide.load.model.p;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* loaded from: classes.dex */
public class Registry {

    /* renamed from: k  reason: collision with root package name */
    public static final String f7116k = "Animation";
    @Deprecated

    /* renamed from: l  reason: collision with root package name */
    public static final String f7117l = "Animation";

    /* renamed from: m  reason: collision with root package name */
    public static final String f7118m = "Bitmap";

    /* renamed from: n  reason: collision with root package name */
    public static final String f7119n = "BitmapDrawable";

    /* renamed from: o  reason: collision with root package name */
    private static final String f7120o = "legacy_prepend_all";

    /* renamed from: p  reason: collision with root package name */
    private static final String f7121p = "legacy_append";

    /* renamed from: a  reason: collision with root package name */
    private final p f7122a;

    /* renamed from: b  reason: collision with root package name */
    private final com.bumptech.glide.provider.a f7123b;

    /* renamed from: c  reason: collision with root package name */
    private final com.bumptech.glide.provider.e f7124c;

    /* renamed from: d  reason: collision with root package name */
    private final com.bumptech.glide.provider.f f7125d;

    /* renamed from: e  reason: collision with root package name */
    private final com.bumptech.glide.load.data.f f7126e;

    /* renamed from: f  reason: collision with root package name */
    private final com.bumptech.glide.load.resource.transcode.f f7127f;

    /* renamed from: g  reason: collision with root package name */
    private final com.bumptech.glide.provider.b f7128g;

    /* renamed from: h  reason: collision with root package name */
    private final com.bumptech.glide.provider.d f7129h = new com.bumptech.glide.provider.d();

    /* renamed from: i  reason: collision with root package name */
    private final com.bumptech.glide.provider.c f7130i = new com.bumptech.glide.provider.c();

    /* renamed from: j  reason: collision with root package name */
    private final Pools.Pool<List<Throwable>> f7131j;

    /* loaded from: classes.dex */
    public static class MissingComponentException extends RuntimeException {
        public MissingComponentException(@NonNull String str) {
            super(str);
        }
    }

    /* loaded from: classes.dex */
    public static final class NoImageHeaderParserException extends MissingComponentException {
        public NoImageHeaderParserException() {
            super("Failed to find image header parser.");
        }
    }

    /* loaded from: classes.dex */
    public static class NoModelLoaderAvailableException extends MissingComponentException {
        public NoModelLoaderAvailableException(@NonNull Object obj) {
            super("Failed to find any ModelLoaders registered for model class: " + obj.getClass());
        }

        public <M> NoModelLoaderAvailableException(@NonNull M m9, @NonNull List<n<M, ?>> list) {
            super("Found ModelLoaders for model class: " + list + ", but none that handle this specific model instance: " + m9);
        }

        public NoModelLoaderAvailableException(@NonNull Class<?> cls, @NonNull Class<?> cls2) {
            super("Failed to find any ModelLoaders for model: " + cls + " and data: " + cls2);
        }
    }

    /* loaded from: classes.dex */
    public static class NoResultEncoderAvailableException extends MissingComponentException {
        public NoResultEncoderAvailableException(@NonNull Class<?> cls) {
            super("Failed to find result encoder for resource class: " + cls + ", you may need to consider registering a new Encoder for the requested type or DiskCacheStrategy.DATA/DiskCacheStrategy.NONE if caching your transformed resource is unnecessary.");
        }
    }

    /* loaded from: classes.dex */
    public static class NoSourceEncoderAvailableException extends MissingComponentException {
        public NoSourceEncoderAvailableException(@NonNull Class<?> cls) {
            super("Failed to find source encoder for data class: " + cls);
        }
    }

    public Registry() {
        Pools.Pool<List<Throwable>> f10 = com.bumptech.glide.util.pool.a.f();
        this.f7131j = f10;
        this.f7122a = new p(f10);
        this.f7123b = new com.bumptech.glide.provider.a();
        this.f7124c = new com.bumptech.glide.provider.e();
        this.f7125d = new com.bumptech.glide.provider.f();
        this.f7126e = new com.bumptech.glide.load.data.f();
        this.f7127f = new com.bumptech.glide.load.resource.transcode.f();
        this.f7128g = new com.bumptech.glide.provider.b();
        z(Arrays.asList("Animation", f7118m, f7119n));
    }

    @NonNull
    private <Data, TResource, Transcode> List<com.bumptech.glide.load.engine.i<Data, TResource, Transcode>> f(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        ArrayList arrayList = new ArrayList();
        for (Class cls4 : this.f7124c.d(cls, cls2)) {
            for (Class cls5 : this.f7127f.b(cls4, cls3)) {
                arrayList.add(new com.bumptech.glide.load.engine.i(cls, cls4, cls5, this.f7124c.b(cls, cls4), this.f7127f.a(cls4, cls5), this.f7131j));
            }
        }
        return arrayList;
    }

    @NonNull
    public <Data> Registry a(@NonNull Class<Data> cls, @NonNull com.bumptech.glide.load.a<Data> aVar) {
        this.f7123b.a(cls, aVar);
        return this;
    }

    @NonNull
    public <TResource> Registry b(@NonNull Class<TResource> cls, @NonNull com.bumptech.glide.load.h<TResource> hVar) {
        this.f7125d.a(cls, hVar);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry c(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull com.bumptech.glide.load.g<Data, TResource> gVar) {
        e(f7121p, cls, cls2, gVar);
        return this;
    }

    @NonNull
    public <Model, Data> Registry d(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<Model, Data> oVar) {
        this.f7122a.a(cls, cls2, oVar);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry e(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull com.bumptech.glide.load.g<Data, TResource> gVar) {
        this.f7124c.a(str, gVar, cls, cls2);
        return this;
    }

    @NonNull
    public List<ImageHeaderParser> g() {
        List<ImageHeaderParser> b10 = this.f7128g.b();
        if (b10.isEmpty()) {
            throw new NoImageHeaderParserException();
        }
        return b10;
    }

    @Nullable
    public <Data, TResource, Transcode> s<Data, TResource, Transcode> h(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        s<Data, TResource, Transcode> a10 = this.f7130i.a(cls, cls2, cls3);
        if (this.f7130i.c(a10)) {
            return null;
        }
        if (a10 == null) {
            List<com.bumptech.glide.load.engine.i<Data, TResource, Transcode>> f10 = f(cls, cls2, cls3);
            a10 = f10.isEmpty() ? null : new s<>(cls, cls2, cls3, f10, this.f7131j);
            this.f7130i.d(cls, cls2, cls3, a10);
        }
        return a10;
    }

    @NonNull
    public <Model> List<n<Model, ?>> i(@NonNull Model model) {
        return this.f7122a.e(model);
    }

    @NonNull
    public <Model, TResource, Transcode> List<Class<?>> j(@NonNull Class<Model> cls, @NonNull Class<TResource> cls2, @NonNull Class<Transcode> cls3) {
        List<Class<?>> b10 = this.f7129h.b(cls, cls2, cls3);
        if (b10 == null) {
            b10 = new ArrayList<>();
            for (Class<?> cls4 : this.f7122a.d(cls)) {
                for (Class<?> cls5 : this.f7124c.d(cls4, cls2)) {
                    if (!this.f7127f.b(cls5, cls3).isEmpty() && !b10.contains(cls5)) {
                        b10.add(cls5);
                    }
                }
            }
            this.f7129h.c(cls, cls2, cls3, Collections.unmodifiableList(b10));
        }
        return b10;
    }

    @NonNull
    public <X> com.bumptech.glide.load.h<X> k(@NonNull u<X> uVar) throws NoResultEncoderAvailableException {
        com.bumptech.glide.load.h<X> b10 = this.f7125d.b(uVar.a());
        if (b10 != null) {
            return b10;
        }
        throw new NoResultEncoderAvailableException(uVar.a());
    }

    @NonNull
    public <X> com.bumptech.glide.load.data.e<X> l(@NonNull X x9) {
        return this.f7126e.a(x9);
    }

    @NonNull
    public <X> com.bumptech.glide.load.a<X> m(@NonNull X x9) throws NoSourceEncoderAvailableException {
        com.bumptech.glide.load.a<X> b10 = this.f7123b.b(x9.getClass());
        if (b10 != null) {
            return b10;
        }
        throw new NoSourceEncoderAvailableException(x9.getClass());
    }

    public boolean n(@NonNull u<?> uVar) {
        return this.f7125d.b(uVar.a()) != null;
    }

    @NonNull
    public <Data> Registry o(@NonNull Class<Data> cls, @NonNull com.bumptech.glide.load.a<Data> aVar) {
        this.f7123b.c(cls, aVar);
        return this;
    }

    @NonNull
    public <TResource> Registry p(@NonNull Class<TResource> cls, @NonNull com.bumptech.glide.load.h<TResource> hVar) {
        this.f7125d.c(cls, hVar);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry q(@NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull com.bumptech.glide.load.g<Data, TResource> gVar) {
        s(f7120o, cls, cls2, gVar);
        return this;
    }

    @NonNull
    public <Model, Data> Registry r(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<Model, Data> oVar) {
        this.f7122a.g(cls, cls2, oVar);
        return this;
    }

    @NonNull
    public <Data, TResource> Registry s(@NonNull String str, @NonNull Class<Data> cls, @NonNull Class<TResource> cls2, @NonNull com.bumptech.glide.load.g<Data, TResource> gVar) {
        this.f7124c.e(str, gVar, cls, cls2);
        return this;
    }

    @NonNull
    public Registry t(@NonNull ImageHeaderParser imageHeaderParser) {
        this.f7128g.a(imageHeaderParser);
        return this;
    }

    @NonNull
    public Registry u(@NonNull e.a<?> aVar) {
        this.f7126e.b(aVar);
        return this;
    }

    @NonNull
    @Deprecated
    public <Data> Registry v(@NonNull Class<Data> cls, @NonNull com.bumptech.glide.load.a<Data> aVar) {
        return a(cls, aVar);
    }

    @NonNull
    @Deprecated
    public <TResource> Registry w(@NonNull Class<TResource> cls, @NonNull com.bumptech.glide.load.h<TResource> hVar) {
        return b(cls, hVar);
    }

    @NonNull
    public <TResource, Transcode> Registry x(@NonNull Class<TResource> cls, @NonNull Class<Transcode> cls2, @NonNull com.bumptech.glide.load.resource.transcode.e<TResource, Transcode> eVar) {
        this.f7127f.c(cls, cls2, eVar);
        return this;
    }

    @NonNull
    public <Model, Data> Registry y(@NonNull Class<Model> cls, @NonNull Class<Data> cls2, @NonNull o<? extends Model, ? extends Data> oVar) {
        this.f7122a.i(cls, cls2, oVar);
        return this;
    }

    @NonNull
    public final Registry z(@NonNull List<String> list) {
        ArrayList arrayList = new ArrayList(list.size());
        arrayList.add(f7120o);
        for (String str : list) {
            arrayList.add(str);
        }
        arrayList.add(f7121p);
        this.f7124c.f(arrayList);
        return this;
    }
}
