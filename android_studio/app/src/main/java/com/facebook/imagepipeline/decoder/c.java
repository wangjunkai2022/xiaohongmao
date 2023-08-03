package com.facebook.imagepipeline.decoder;

import com.facebook.imageformat.c;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import r7.h;

/* compiled from: ImageDecoderConfig.java */
@Nullsafe(Nullsafe.Mode.LOCAL)
/* loaded from: classes.dex */
public class c {
    @h

    /* renamed from: a  reason: collision with root package name */
    private final Map<com.facebook.imageformat.c, com.facebook.imagepipeline.decoder.b> f12469a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private final List<c.a> f12470b;

    /* compiled from: ImageDecoderConfig.java */
    /* loaded from: classes.dex */
    public static class b {
        @h

        /* renamed from: a  reason: collision with root package name */
        private Map<com.facebook.imageformat.c, com.facebook.imagepipeline.decoder.b> f12471a;
        @h

        /* renamed from: b  reason: collision with root package name */
        private List<c.a> f12472b;

        public b c(com.facebook.imageformat.c imageFormat, c.a imageFormatChecker, com.facebook.imagepipeline.decoder.b decoder) {
            if (this.f12472b == null) {
                this.f12472b = new ArrayList();
            }
            this.f12472b.add(imageFormatChecker);
            e(imageFormat, decoder);
            return this;
        }

        public c d() {
            return new c(this);
        }

        public b e(com.facebook.imageformat.c imageFormat, com.facebook.imagepipeline.decoder.b decoder) {
            if (this.f12471a == null) {
                this.f12471a = new HashMap();
            }
            this.f12471a.put(imageFormat, decoder);
            return this;
        }
    }

    public static b c() {
        return new b();
    }

    @h
    public Map<com.facebook.imageformat.c, com.facebook.imagepipeline.decoder.b> a() {
        return this.f12469a;
    }

    @h
    public List<c.a> b() {
        return this.f12470b;
    }

    private c(b builder) {
        this.f12469a = builder.f12471a;
        this.f12470b = builder.f12472b;
    }
}
