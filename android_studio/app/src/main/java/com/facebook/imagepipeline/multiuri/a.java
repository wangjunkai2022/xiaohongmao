package com.facebook.imagepipeline.multiuri;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import r7.h;

/* compiled from: MultiUri.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class a {
    @h

    /* renamed from: a  reason: collision with root package name */
    private ImageRequest f12680a;
    @h

    /* renamed from: b  reason: collision with root package name */
    private ImageRequest[] f12681b;
    @h

    /* renamed from: c  reason: collision with root package name */
    private ImageRequest f12682c;

    /* compiled from: MultiUri.java */
    /* loaded from: classes.dex */
    public static class b {
        @h

        /* renamed from: a  reason: collision with root package name */
        private ImageRequest f12683a;
        @h

        /* renamed from: b  reason: collision with root package name */
        private ImageRequest f12684b;
        @h

        /* renamed from: c  reason: collision with root package name */
        private ImageRequest[] f12685c;

        public a d() {
            return new a(this);
        }

        public b e(@h ImageRequest highResImageRequest) {
            this.f12684b = highResImageRequest;
            return this;
        }

        public b f(@h ImageRequest... multiImageRequests) {
            this.f12685c = multiImageRequests;
            return this;
        }

        public b g(@h ImageRequest lowResImageRequest) {
            this.f12683a = lowResImageRequest;
            return this;
        }

        private b() {
        }
    }

    public static b a() {
        return new b();
    }

    @h
    public ImageRequest b() {
        return this.f12682c;
    }

    @h
    public ImageRequest c() {
        return this.f12680a;
    }

    @h
    public ImageRequest[] d() {
        return this.f12681b;
    }

    private a(b builder) {
        this.f12680a = builder.f12683a;
        this.f12682c = builder.f12684b;
        this.f12681b = builder.f12685c;
    }
}
