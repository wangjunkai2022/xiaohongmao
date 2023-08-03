package com.facebook.imagepipeline.producers;

import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.image.EncodedImageOrigin;
import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Map;

/* compiled from: ProducerContext.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public interface s0 {

    /* compiled from: ProducerContext.java */
    /* loaded from: classes.dex */
    public @interface a {

        /* renamed from: f0  reason: collision with root package name */
        public static final String f13224f0 = "origin";

        /* renamed from: g0  reason: collision with root package name */
        public static final String f13225g0 = "origin_sub";

        /* renamed from: h0  reason: collision with root package name */
        public static final String f13226h0 = "uri_source";

        /* renamed from: i0  reason: collision with root package name */
        public static final String f13227i0 = "uri_norm";

        /* renamed from: j0  reason: collision with root package name */
        public static final String f13228j0 = "image_format";

        /* renamed from: k0  reason: collision with root package name */
        public static final String f13229k0 = "encoded_width";

        /* renamed from: l0  reason: collision with root package name */
        public static final String f13230l0 = "encoded_height";

        /* renamed from: m0  reason: collision with root package name */
        public static final String f13231m0 = "encoded_size";

        /* renamed from: n0  reason: collision with root package name */
        public static final String f13232n0 = "multiplex_bmp_cnt";

        /* renamed from: o0  reason: collision with root package name */
        public static final String f13233o0 = "multiplex_enc_cnt";
    }

    ImageRequest c();

    Object d();

    <E> void e(String key, @r7.h E value);

    void f(t0 callbacks);

    com.facebook.imagepipeline.core.j g();

    Map<String, Object> getExtras();

    String getId();

    Priority getPriority();

    void h(@r7.h String origin, @r7.h String subcategory);

    @r7.h
    String i();

    void j(@r7.h String origin);

    u0 k();

    boolean l();

    @r7.h
    <E> E m(String key, @r7.h E valueIfNotFound);

    EncodedImageOrigin n();

    void o(EncodedImageOrigin encodedImageOrigin);

    void p(@r7.h Map<String, ?> extras);

    boolean q();

    @r7.h
    <E> E r(String key);

    ImageRequest.RequestLevel s();
}
