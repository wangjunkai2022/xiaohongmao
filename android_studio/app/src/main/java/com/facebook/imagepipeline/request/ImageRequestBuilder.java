package com.facebook.imagepipeline.request;

import android.net.Uri;
import com.facebook.common.internal.j;
import com.facebook.imagepipeline.common.Priority;
import com.facebook.imagepipeline.core.i;
import com.facebook.imagepipeline.request.ImageRequest;
import r7.h;

/* loaded from: classes.dex */
public class ImageRequestBuilder {
    @h

    /* renamed from: n  reason: collision with root package name */
    private q1.f f13363n;

    /* renamed from: q  reason: collision with root package name */
    private int f13366q;

    /* renamed from: a  reason: collision with root package name */
    private Uri f13350a = null;

    /* renamed from: b  reason: collision with root package name */
    private ImageRequest.RequestLevel f13351b = ImageRequest.RequestLevel.FULL_FETCH;

    /* renamed from: c  reason: collision with root package name */
    private int f13352c = 0;
    @h

    /* renamed from: d  reason: collision with root package name */
    private com.facebook.imagepipeline.common.d f13353d = null;
    @h

    /* renamed from: e  reason: collision with root package name */
    private com.facebook.imagepipeline.common.e f13354e = null;

    /* renamed from: f  reason: collision with root package name */
    private com.facebook.imagepipeline.common.b f13355f = com.facebook.imagepipeline.common.b.a();

    /* renamed from: g  reason: collision with root package name */
    private ImageRequest.CacheChoice f13356g = ImageRequest.CacheChoice.DEFAULT;

    /* renamed from: h  reason: collision with root package name */
    private boolean f13357h = i.I().a();

    /* renamed from: i  reason: collision with root package name */
    private boolean f13358i = false;

    /* renamed from: j  reason: collision with root package name */
    private boolean f13359j = false;

    /* renamed from: k  reason: collision with root package name */
    private Priority f13360k = Priority.HIGH;
    @h

    /* renamed from: l  reason: collision with root package name */
    private d f13361l = null;
    @h

    /* renamed from: m  reason: collision with root package name */
    private Boolean f13362m = null;
    @h

    /* renamed from: o  reason: collision with root package name */
    private com.facebook.imagepipeline.common.a f13364o = null;
    @h

    /* renamed from: p  reason: collision with root package name */
    private Boolean f13365p = null;

    /* loaded from: classes.dex */
    public static class BuilderException extends RuntimeException {
        public BuilderException(String message) {
            super("Invalid request builder: " + message);
        }
    }

    private ImageRequestBuilder() {
    }

    private ImageRequestBuilder B(int cachesDisabled) {
        this.f13352c = cachesDisabled;
        return this;
    }

    public static ImageRequestBuilder d(ImageRequest imageRequest) {
        return x(imageRequest.w()).D(imageRequest.i()).z(imageRequest.e()).A(imageRequest.f()).F(imageRequest.k()).E(imageRequest.j()).G(imageRequest.l()).B(imageRequest.g()).H(imageRequest.m()).I(imageRequest.q()).K(imageRequest.p()).L(imageRequest.s()).J(imageRequest.r()).N(imageRequest.u()).O(imageRequest.E()).C(imageRequest.h());
    }

    public static ImageRequestBuilder w(int resId) {
        return x(com.facebook.common.util.f.f(resId));
    }

    public static ImageRequestBuilder x(Uri uri) {
        return new ImageRequestBuilder().P(uri);
    }

    public ImageRequestBuilder A(ImageRequest.CacheChoice cacheChoice) {
        this.f13356g = cacheChoice;
        return this;
    }

    public ImageRequestBuilder C(int delayMs) {
        this.f13366q = delayMs;
        return this;
    }

    public ImageRequestBuilder D(com.facebook.imagepipeline.common.b imageDecodeOptions) {
        this.f13355f = imageDecodeOptions;
        return this;
    }

    public ImageRequestBuilder E(boolean loadThumbnailOnly) {
        this.f13359j = loadThumbnailOnly;
        return this;
    }

    public ImageRequestBuilder F(boolean enabled) {
        this.f13358i = enabled;
        return this;
    }

    public ImageRequestBuilder G(ImageRequest.RequestLevel requestLevel) {
        this.f13351b = requestLevel;
        return this;
    }

    public ImageRequestBuilder H(@h d postprocessor) {
        this.f13361l = postprocessor;
        return this;
    }

    public ImageRequestBuilder I(boolean enabled) {
        this.f13357h = enabled;
        return this;
    }

    public ImageRequestBuilder J(@h q1.f requestListener) {
        this.f13363n = requestListener;
        return this;
    }

    public ImageRequestBuilder K(Priority requestPriority) {
        this.f13360k = requestPriority;
        return this;
    }

    public ImageRequestBuilder L(@h com.facebook.imagepipeline.common.d resizeOptions) {
        this.f13353d = resizeOptions;
        return this;
    }

    public ImageRequestBuilder M(@h Boolean resizingAllowedOverride) {
        this.f13365p = resizingAllowedOverride;
        return this;
    }

    public ImageRequestBuilder N(@h com.facebook.imagepipeline.common.e rotationOptions) {
        this.f13354e = rotationOptions;
        return this;
    }

    public ImageRequestBuilder O(@h Boolean shouldDecodePrefetches) {
        this.f13362m = shouldDecodePrefetches;
        return this;
    }

    public ImageRequestBuilder P(Uri uri) {
        j.i(uri);
        this.f13350a = uri;
        return this;
    }

    @h
    public Boolean Q() {
        return this.f13362m;
    }

    protected void R() {
        Uri uri = this.f13350a;
        if (uri != null) {
            if (com.facebook.common.util.f.m(uri)) {
                if (this.f13350a.isAbsolute()) {
                    if (!this.f13350a.getPath().isEmpty()) {
                        try {
                            Integer.parseInt(this.f13350a.getPath().substring(1));
                        } catch (NumberFormatException unused) {
                            throw new BuilderException("Resource URI path must be a resource id.");
                        }
                    } else {
                        throw new BuilderException("Resource URI must not be empty");
                    }
                } else {
                    throw new BuilderException("Resource URI path must be absolute.");
                }
            }
            if (com.facebook.common.util.f.h(this.f13350a) && !this.f13350a.isAbsolute()) {
                throw new BuilderException("Asset URI path must be absolute.");
            }
            return;
        }
        throw new BuilderException("Source must be set!");
    }

    public ImageRequest a() {
        R();
        return new ImageRequest(this);
    }

    public ImageRequestBuilder b() {
        this.f13352c |= 48;
        return this;
    }

    public ImageRequestBuilder c() {
        this.f13352c |= 15;
        return this;
    }

    @h
    public com.facebook.imagepipeline.common.a e() {
        return this.f13364o;
    }

    public ImageRequest.CacheChoice f() {
        return this.f13356g;
    }

    public int g() {
        return this.f13352c;
    }

    public int h() {
        return this.f13366q;
    }

    public com.facebook.imagepipeline.common.b i() {
        return this.f13355f;
    }

    public boolean j() {
        return this.f13359j;
    }

    public ImageRequest.RequestLevel k() {
        return this.f13351b;
    }

    @h
    public d l() {
        return this.f13361l;
    }

    @h
    public q1.f m() {
        return this.f13363n;
    }

    public Priority n() {
        return this.f13360k;
    }

    @h
    public com.facebook.imagepipeline.common.d o() {
        return this.f13353d;
    }

    @h
    public Boolean p() {
        return this.f13365p;
    }

    @h
    public com.facebook.imagepipeline.common.e q() {
        return this.f13354e;
    }

    public Uri r() {
        return this.f13350a;
    }

    public boolean s() {
        return (this.f13352c & 48) == 0 && com.facebook.common.util.f.n(this.f13350a);
    }

    public boolean t() {
        return this.f13358i;
    }

    public boolean u() {
        return (this.f13352c & 15) == 0;
    }

    public boolean v() {
        return this.f13357h;
    }

    @Deprecated
    public ImageRequestBuilder y(boolean enabled) {
        if (enabled) {
            return N(com.facebook.imagepipeline.common.e.a());
        }
        return N(com.facebook.imagepipeline.common.e.d());
    }

    public ImageRequestBuilder z(@h com.facebook.imagepipeline.common.a bytesRange) {
        this.f13364o = bytesRange;
        return this;
    }
}
