package i2;

import android.content.Context;
import androidx.core.content.ContextCompat;
import androidx.exifinterface.media.ExifInterface;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.ui.p;
import io.sentry.protocol.y;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;
import m8.g;

/* compiled from: DarkTheme.kt */
@Metadata(bv = {}, d1 = {"\u0000\u001c\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0002\b-\bÀ\u0002\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b1\u00102J\u000e\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002R\"\u0010\u0007\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0007\u0010\b\u001a\u0004\b\t\u0010\n\"\u0004\b\u000b\u0010\fR\"\u0010\r\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\r\u0010\b\u001a\u0004\b\u000e\u0010\n\"\u0004\b\u000f\u0010\fR\"\u0010\u0010\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0010\u0010\b\u001a\u0004\b\u0011\u0010\n\"\u0004\b\u0012\u0010\fR\"\u0010\u0013\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0013\u0010\b\u001a\u0004\b\u0014\u0010\n\"\u0004\b\u0015\u0010\fR\"\u0010\u0016\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0016\u0010\b\u001a\u0004\b\u0017\u0010\n\"\u0004\b\u0018\u0010\fR\"\u0010\u0019\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010\b\u001a\u0004\b\u001a\u0010\n\"\u0004\b\u001b\u0010\fR\"\u0010\u001c\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001c\u0010\b\u001a\u0004\b\u001d\u0010\n\"\u0004\b\u001e\u0010\fR\"\u0010\u001f\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010\b\u001a\u0004\b \u0010\n\"\u0004\b!\u0010\fR\"\u0010\"\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b\"\u0010\b\u001a\u0004\b#\u0010\n\"\u0004\b$\u0010\fR\"\u0010%\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b%\u0010\b\u001a\u0004\b&\u0010\n\"\u0004\b'\u0010\fR\"\u0010(\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b(\u0010\b\u001a\u0004\b)\u0010\n\"\u0004\b*\u0010\fR\"\u0010+\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b+\u0010\b\u001a\u0004\b,\u0010\n\"\u0004\b-\u0010\fR\"\u0010.\u001a\u00020\u00068\u0016@\u0016X\u0096\u000e¢\u0006\u0012\n\u0004\b.\u0010\b\u001a\u0004\b/\u0010\n\"\u0004\b0\u0010\f¨\u00063"}, d2 = {"Li2/a;", "Li2/e;", "Landroid/content/Context;", "context", "", "n", "", "channelColor", "I", "e", "()I", "s", "(I)V", "handleBarColor", "g", "u", com.google.android.exoplayer2.text.ttml.d.H, "d", "r", "dialogOverlayBackgroundColor", "f", "t", "textColor", "m", ExifInterface.GPS_MEASUREMENT_IN_PROGRESS, "activeTextColor", "b", "p", "imageColor", "h", "v", "activeImageColor", "a", "o", "searchBackgroundColor", "j", y.b.f83919g, "searchQueryColor", "k", y.b.f83920h, "suggestionBackgroundColor", "l", "z", "moreByYouBackgroundColor", ContextChain.TAG_INFRA, "w", "backButtonColor", "c", "q", "<init>", "()V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class a extends e {

    /* renamed from: f  reason: collision with root package name */
    private static int f69266f;

    /* renamed from: h  reason: collision with root package name */
    private static int f69268h;
    @g

    /* renamed from: n  reason: collision with root package name */
    public static final a f69274n = new a();

    /* renamed from: a  reason: collision with root package name */
    private static int f69261a = (int) 4292401368L;

    /* renamed from: b  reason: collision with root package name */
    private static int f69262b = (int) 4287137928L;

    /* renamed from: c  reason: collision with root package name */
    private static int f69263c = (int) 4279374354L;

    /* renamed from: d  reason: collision with root package name */
    private static int f69264d = 5131854;

    /* renamed from: e  reason: collision with root package name */
    private static int f69265e = (int) 4289111718L;

    /* renamed from: g  reason: collision with root package name */
    private static int f69267g = (int) 3231357594L;

    /* renamed from: i  reason: collision with root package name */
    private static int f69269i = -1;

    /* renamed from: j  reason: collision with root package name */
    private static int f69270j = -12303292;

    /* renamed from: k  reason: collision with root package name */
    private static int f69271k = 2171169;

    /* renamed from: l  reason: collision with root package name */
    private static int f69272l = 15856113;

    /* renamed from: m  reason: collision with root package name */
    private static int f69273m = 16777215;

    static {
        int i4 = (int) 4278255513L;
        f69266f = i4;
        f69268h = i4;
    }

    private a() {
    }

    public void A(int i4) {
        f69265e = i4;
    }

    @Override // i2.e
    public int a() {
        return f69268h;
    }

    @Override // i2.e
    public int b() {
        return f69266f;
    }

    @Override // i2.e
    public int c() {
        return f69273m;
    }

    @Override // i2.e
    public int d() {
        return f69263c;
    }

    @Override // i2.e
    public int e() {
        return f69261a;
    }

    @Override // i2.e
    public int f() {
        return f69264d;
    }

    @Override // i2.e
    public int g() {
        return f69262b;
    }

    @Override // i2.e
    public int h() {
        return f69267g;
    }

    @Override // i2.e
    public int i() {
        return f69272l;
    }

    @Override // i2.e
    public int j() {
        return f69269i;
    }

    @Override // i2.e
    public int k() {
        return f69270j;
    }

    @Override // i2.e
    public int l() {
        return f69271k;
    }

    @Override // i2.e
    public int m() {
        return f69265e;
    }

    public final void n(@g Context context) {
        Intrinsics.checkNotNullParameter(context, "context");
        s(ContextCompat.getColor(context, p.f.f17407c1));
        u(ContextCompat.getColor(context, p.f.f17442j1));
        r(ContextCompat.getColor(context, p.f.f17397a1));
        A(ContextCompat.getColor(context, p.f.f17507x1));
        p(ContextCompat.getColor(context, p.f.W0));
        v(ContextCompat.getColor(context, p.f.f17452l1));
        o(ContextCompat.getColor(context, p.f.U0));
        x(ContextCompat.getColor(context, p.f.f17482r1));
        y(ContextCompat.getColor(context, p.f.f17491t1));
        z(ContextCompat.getColor(context, p.f.f17499v1));
        w(ContextCompat.getColor(context, p.f.f17462n1));
        q(ContextCompat.getColor(context, p.f.Y0));
        t(ContextCompat.getColor(context, p.f.f17427g1));
    }

    public void o(int i4) {
        f69268h = i4;
    }

    public void p(int i4) {
        f69266f = i4;
    }

    public void q(int i4) {
        f69273m = i4;
    }

    public void r(int i4) {
        f69263c = i4;
    }

    public void s(int i4) {
        f69261a = i4;
    }

    public void t(int i4) {
        f69264d = i4;
    }

    public void u(int i4) {
        f69262b = i4;
    }

    public void v(int i4) {
        f69267g = i4;
    }

    public void w(int i4) {
        f69272l = i4;
    }

    public void x(int i4) {
        f69269i = i4;
    }

    public void y(int i4) {
        f69270j = i4;
    }

    public void z(int i4) {
        f69271k = i4;
    }
}
