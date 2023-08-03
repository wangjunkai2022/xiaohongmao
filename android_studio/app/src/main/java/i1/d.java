package i1;

import com.facebook.infer.annotation.Nullsafe;

/* compiled from: DimensionsInfo.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class d {

    /* renamed from: a  reason: collision with root package name */
    private final int f69252a;

    /* renamed from: b  reason: collision with root package name */
    private final int f69253b;

    /* renamed from: c  reason: collision with root package name */
    private final int f69254c;

    /* renamed from: d  reason: collision with root package name */
    private final int f69255d;

    /* renamed from: e  reason: collision with root package name */
    private final int f69256e;

    /* renamed from: f  reason: collision with root package name */
    private final int f69257f;

    /* renamed from: g  reason: collision with root package name */
    private final String f69258g;

    public d(int viewportWidth, int viewportHeight, int encodedImageWidth, int encodedImageHeight, int decodedImageWidth, int decodedImageHeight, String scaleType) {
        this.f69252a = viewportWidth;
        this.f69253b = viewportHeight;
        this.f69254c = encodedImageWidth;
        this.f69255d = encodedImageHeight;
        this.f69256e = decodedImageWidth;
        this.f69257f = decodedImageHeight;
        this.f69258g = scaleType;
    }

    public int a() {
        return this.f69257f;
    }

    public int b() {
        return this.f69256e;
    }

    public int c() {
        return this.f69255d;
    }

    public int d() {
        return this.f69254c;
    }

    public String e() {
        return this.f69258g;
    }

    public int f() {
        return this.f69253b;
    }

    public int g() {
        return this.f69252a;
    }

    public String toString() {
        return "DimensionsInfo{mViewportWidth=" + this.f69252a + ", mViewportHeight=" + this.f69253b + ", mEncodedImageWidth=" + this.f69254c + ", mEncodedImageHeight=" + this.f69255d + ", mDecodedImageWidth=" + this.f69256e + ", mDecodedImageHeight=" + this.f69257f + ", mScaleType='" + this.f69258g + "'}";
    }
}
