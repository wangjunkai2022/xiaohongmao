package x0;

import com.facebook.imagepipeline.request.ImageRequest;
import com.facebook.infer.annotation.Nullsafe;
import i1.c;

/* compiled from: ImagePerfState.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class l {
    @r7.h
    private String A;
    @r7.h
    private i1.d B;
    @r7.h
    private c.a C;
    @r7.h

    /* renamed from: a  reason: collision with root package name */
    private String f94510a;
    @r7.h

    /* renamed from: b  reason: collision with root package name */
    private String f94511b;
    @r7.h

    /* renamed from: c  reason: collision with root package name */
    private ImageRequest f94512c;
    @r7.h

    /* renamed from: d  reason: collision with root package name */
    private Object f94513d;
    @r7.h

    /* renamed from: e  reason: collision with root package name */
    private com.facebook.imagepipeline.image.g f94514e;
    @r7.h

    /* renamed from: f  reason: collision with root package name */
    private ImageRequest f94515f;
    @r7.h

    /* renamed from: g  reason: collision with root package name */
    private ImageRequest f94516g;
    @r7.h

    /* renamed from: h  reason: collision with root package name */
    private ImageRequest[] f94517h;
    @r7.h

    /* renamed from: q  reason: collision with root package name */
    private String f94526q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f94527r;
    @r7.h

    /* renamed from: u  reason: collision with root package name */
    private Throwable f94530u;

    /* renamed from: i  reason: collision with root package name */
    private long f94518i = -1;

    /* renamed from: j  reason: collision with root package name */
    private long f94519j = -1;

    /* renamed from: k  reason: collision with root package name */
    private long f94520k = -1;

    /* renamed from: l  reason: collision with root package name */
    private long f94521l = -1;

    /* renamed from: m  reason: collision with root package name */
    private long f94522m = -1;

    /* renamed from: n  reason: collision with root package name */
    private long f94523n = -1;

    /* renamed from: o  reason: collision with root package name */
    private long f94524o = -1;

    /* renamed from: p  reason: collision with root package name */
    private int f94525p = 1;

    /* renamed from: s  reason: collision with root package name */
    private int f94528s = -1;

    /* renamed from: t  reason: collision with root package name */
    private int f94529t = -1;

    /* renamed from: v  reason: collision with root package name */
    private int f94531v = -1;

    /* renamed from: w  reason: collision with root package name */
    private int f94532w = -1;

    /* renamed from: x  reason: collision with root package name */
    private long f94533x = -1;

    /* renamed from: y  reason: collision with root package name */
    private long f94534y = -1;

    /* renamed from: z  reason: collision with root package name */
    private long f94535z = -1;

    public void A(int onScreenHeightPx) {
        this.f94529t = onScreenHeightPx;
    }

    public void B(int onScreenWidthPx) {
        this.f94528s = onScreenWidthPx;
    }

    public void C(boolean prefetch) {
        this.f94527r = prefetch;
    }

    public void D(@r7.h String requestId) {
        this.f94511b = requestId;
    }

    public void E(@r7.h String ultimateProducerName) {
        this.f94526q = ultimateProducerName;
    }

    public void F(long visibilityEventTimeMs) {
        this.f94533x = visibilityEventTimeMs;
    }

    public void G(boolean visible) {
        this.f94532w = visible ? 1 : 2;
    }

    public h H() {
        return new h(this.f94510a, this.f94511b, this.f94512c, this.f94513d, this.f94514e, this.f94515f, this.f94516g, this.f94517h, this.f94518i, this.f94519j, this.f94520k, this.f94521l, this.f94522m, this.f94523n, this.f94524o, this.f94525p, this.f94526q, this.f94527r, this.f94528s, this.f94529t, this.f94530u, this.f94532w, this.f94533x, this.f94534y, this.A, this.f94535z, this.B, this.C);
    }

    @r7.h
    public i1.d a() {
        return this.B;
    }

    @r7.h
    public Object b() {
        return this.C;
    }

    public long c() {
        return this.f94535z;
    }

    public int d() {
        return this.f94531v;
    }

    public void e() {
        this.f94511b = null;
        this.f94512c = null;
        this.f94513d = null;
        this.f94514e = null;
        this.f94515f = null;
        this.f94516g = null;
        this.f94517h = null;
        this.f94525p = 1;
        this.f94526q = null;
        this.f94527r = false;
        this.f94528s = -1;
        this.f94529t = -1;
        this.f94530u = null;
        this.f94531v = -1;
        this.f94532w = -1;
        this.A = null;
        this.B = null;
        this.C = null;
        f();
    }

    public void f() {
        this.f94523n = -1L;
        this.f94524o = -1L;
        this.f94518i = -1L;
        this.f94520k = -1L;
        this.f94521l = -1L;
        this.f94522m = -1L;
        this.f94533x = -1L;
        this.f94534y = -1L;
        this.f94535z = -1L;
    }

    public void g(@r7.h Object callerContext) {
        this.f94513d = callerContext;
    }

    public void h(@r7.h String componentTag) {
        this.A = componentTag;
    }

    public void i(long controllerCancelTimeMs) {
        this.f94522m = controllerCancelTimeMs;
    }

    public void j(long controllerFailureTimeMs) {
        this.f94521l = controllerFailureTimeMs;
    }

    public void k(long controllerFinalImageSetTimeMs) {
        this.f94520k = controllerFinalImageSetTimeMs;
    }

    public void l(@r7.h String controllerId) {
        this.f94510a = controllerId;
    }

    public void m(@r7.h ImageRequest imageRequest, @r7.h ImageRequest lowResImageRequest, @r7.h ImageRequest[] firstAvailableImageRequests) {
        this.f94515f = imageRequest;
        this.f94516g = lowResImageRequest;
        this.f94517h = firstAvailableImageRequests;
    }

    public void n(long controllerIntermediateImageSetTimeMs) {
        this.f94519j = controllerIntermediateImageSetTimeMs;
    }

    public void o(long controllerSubmitTimeMs) {
        this.f94518i = controllerSubmitTimeMs;
    }

    public void p(i1.d dimensionsInfo) {
        this.B = dimensionsInfo;
    }

    public void q(@r7.h Throwable errorThrowable) {
        this.f94530u = errorThrowable;
    }

    public void r(@r7.h c.a extraData) {
        this.C = extraData;
    }

    public void s(long imageDrawTimeMs) {
        this.f94535z = imageDrawTimeMs;
    }

    public void t(@r7.h com.facebook.imagepipeline.image.g imageInfo) {
        this.f94514e = imageInfo;
    }

    public void u(int imageLoadStatus) {
        this.f94531v = imageLoadStatus;
    }

    public void v(int imageOrigin) {
        this.f94525p = imageOrigin;
    }

    public void w(@r7.h ImageRequest imageRequest) {
        this.f94512c = imageRequest;
    }

    public void x(long imageRequestEndTimeMs) {
        this.f94524o = imageRequestEndTimeMs;
    }

    public void y(long imageRequestStartTimeMs) {
        this.f94523n = imageRequestStartTimeMs;
    }

    public void z(long invisibilityEventTimeMs) {
        this.f94534y = invisibilityEventTimeMs;
    }
}
