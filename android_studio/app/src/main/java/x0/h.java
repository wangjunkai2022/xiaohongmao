package x0;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import i1.c;

/* compiled from: ImagePerfData.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class h {
    public static final int C = -1;
    @r7.h
    private final i1.d A;
    @r7.h
    private c.a B;
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private final String f94473a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private final String f94474b;
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    private final Object f94475c;
    @r7.h

    /* renamed from: d  reason: collision with root package name */
    private final ImageRequest f94476d;
    @r7.h

    /* renamed from: e  reason: collision with root package name */
    private final com.facebook.imagepipeline.image.g f94477e;
    @r7.h

    /* renamed from: f  reason: collision with root package name */
    private final ImageRequest f94478f;
    @r7.h

    /* renamed from: g  reason: collision with root package name */
    private final ImageRequest f94479g;
    @r7.h

    /* renamed from: h  reason: collision with root package name */
    private final ImageRequest[] f94480h;

    /* renamed from: i  reason: collision with root package name */
    private final long f94481i;

    /* renamed from: j  reason: collision with root package name */
    private final long f94482j;

    /* renamed from: k  reason: collision with root package name */
    private final long f94483k;

    /* renamed from: l  reason: collision with root package name */
    private final long f94484l;

    /* renamed from: m  reason: collision with root package name */
    private final long f94485m;

    /* renamed from: n  reason: collision with root package name */
    private final long f94486n;

    /* renamed from: o  reason: collision with root package name */
    private final long f94487o;

    /* renamed from: p  reason: collision with root package name */
    private final int f94488p;
    @r7.h

    /* renamed from: q  reason: collision with root package name */
    private final String f94489q;

    /* renamed from: r  reason: collision with root package name */
    private final boolean f94490r;

    /* renamed from: s  reason: collision with root package name */
    private final int f94491s;

    /* renamed from: t  reason: collision with root package name */
    private final int f94492t;
    @r7.h

    /* renamed from: u  reason: collision with root package name */
    private final Throwable f94493u;

    /* renamed from: v  reason: collision with root package name */
    private final int f94494v;

    /* renamed from: w  reason: collision with root package name */
    private final long f94495w;

    /* renamed from: x  reason: collision with root package name */
    private final long f94496x;
    @r7.h

    /* renamed from: y  reason: collision with root package name */
    private final String f94497y;

    /* renamed from: z  reason: collision with root package name */
    private final long f94498z;

    public h(@r7.h String controllerId, @r7.h String requestId, @r7.h ImageRequest imageRequest, @r7.h Object callerContext, @r7.h com.facebook.imagepipeline.image.g imageInfo, @r7.h ImageRequest controllerImageRequest, @r7.h ImageRequest controllerLowResImageRequest, @r7.h ImageRequest[] controllerFirstAvailableImageRequests, long controllerSubmitTimeMs, long controllerIntermediateImageSetTimeMs, long controllerFinalImageSetTimeMs, long controllerFailureTimeMs, long controllerCancelTimeMs, long imageRequestStartTimeMs, long imageRequestEndTimeMs, int imageOrigin, @r7.h String ultimateProducerName, boolean isPrefetch, int onScreenWidthPx, int onScreenHeightPx, @r7.h Throwable errorThrowable, int visibilityState, long visibilityEventTimeMs, long invisibilityEventTime, @r7.h String componentTag, long imageDrawTimeMs, @r7.h i1.d dimensionsInfo, @r7.h c.a extraData) {
        this.f94473a = controllerId;
        this.f94474b = requestId;
        this.f94476d = imageRequest;
        this.f94475c = callerContext;
        this.f94477e = imageInfo;
        this.f94478f = controllerImageRequest;
        this.f94479g = controllerLowResImageRequest;
        this.f94480h = controllerFirstAvailableImageRequests;
        this.f94481i = controllerSubmitTimeMs;
        this.f94482j = controllerIntermediateImageSetTimeMs;
        this.f94483k = controllerFinalImageSetTimeMs;
        this.f94484l = controllerFailureTimeMs;
        this.f94485m = controllerCancelTimeMs;
        this.f94486n = imageRequestStartTimeMs;
        this.f94487o = imageRequestEndTimeMs;
        this.f94488p = imageOrigin;
        this.f94489q = ultimateProducerName;
        this.f94490r = isPrefetch;
        this.f94491s = onScreenWidthPx;
        this.f94492t = onScreenHeightPx;
        this.f94493u = errorThrowable;
        this.f94494v = visibilityState;
        this.f94495w = visibilityEventTimeMs;
        this.f94496x = invisibilityEventTime;
        this.f94497y = componentTag;
        this.f94498z = imageDrawTimeMs;
        this.A = dimensionsInfo;
        this.B = extraData;
    }

    @r7.h
    public String A() {
        return this.f94489q;
    }

    public long B() {
        return this.f94495w;
    }

    public int C() {
        return this.f94494v;
    }

    public boolean D() {
        return this.f94490r;
    }

    public void E(c.a extraData) {
        this.B = extraData;
    }

    public String a() {
        return com.facebook.common.internal.i.e(this).f("controller ID", this.f94473a).f("request ID", this.f94474b).f("controller image request", this.f94478f).f("controller low res image request", this.f94479g).f("controller first available image requests", this.f94480h).e("controller submit", this.f94481i).e("controller final image", this.f94483k).e("controller failure", this.f94484l).e("controller cancel", this.f94485m).e("start time", this.f94486n).e("end time", this.f94487o).f("origin", g.b(this.f94488p)).f("ultimateProducerName", this.f94489q).g("prefetch", this.f94490r).f("caller context", this.f94475c).f("image request", this.f94476d).f("image info", this.f94477e).d("on-screen width", this.f94491s).d("on-screen height", this.f94492t).d("visibility state", this.f94494v).f("component tag", this.f94497y).e("visibility event", this.f94495w).e("invisibility event", this.f94496x).e("image draw event", this.f94498z).f("dimensions info", this.A).f("extra data", this.B).toString();
    }

    @r7.h
    public Object b() {
        return this.f94475c;
    }

    @r7.h
    public String c() {
        return this.f94497y;
    }

    public long d() {
        return this.f94484l;
    }

    public long e() {
        return this.f94483k;
    }

    @r7.h
    public ImageRequest[] f() {
        return this.f94480h;
    }

    @r7.h
    public String g() {
        return this.f94473a;
    }

    @r7.h
    public ImageRequest h() {
        return this.f94478f;
    }

    public long i() {
        return this.f94482j;
    }

    @r7.h
    public ImageRequest j() {
        return this.f94479g;
    }

    public long k() {
        return this.f94481i;
    }

    @r7.h
    public i1.d l() {
        return this.A;
    }

    @r7.h
    public Throwable m() {
        return this.f94493u;
    }

    @r7.h
    public c.a n() {
        return this.B;
    }

    public long o() {
        if (t() == -1 || u() == -1) {
            return -1L;
        }
        return t() - u();
    }

    public long p() {
        return this.f94498z;
    }

    @r7.h
    public com.facebook.imagepipeline.image.g q() {
        return this.f94477e;
    }

    public int r() {
        return this.f94488p;
    }

    @r7.h
    public ImageRequest s() {
        return this.f94476d;
    }

    public long t() {
        return this.f94487o;
    }

    public long u() {
        return this.f94486n;
    }

    public long v() {
        if (i() == -1 || k() == -1) {
            return -1L;
        }
        return i() - k();
    }

    public long w() {
        return this.f94496x;
    }

    public int x() {
        return this.f94492t;
    }

    public int y() {
        return this.f94491s;
    }

    @r7.h
    public String z() {
        return this.f94474b;
    }
}
