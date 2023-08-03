package u4;

import android.widget.ImageView;
import com.facebook.common.callercontext.ContextChain;
import kotlin.Metadata;
import m8.g;

/* compiled from: SVGAScaleInfo.kt */
@Metadata(bv = {}, d1 = {"\u0000&\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0007\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0014\n\u0002\u0010\u000b\n\u0002\b\t\u0018\u00002\u00020\u0001B\u0007¢\u0006\u0004\b%\u0010&J\b\u0010\u0003\u001a\u00020\u0002H\u0002J.\u0010\u000b\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tR\"\u0010\f\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\f\u0010\r\u001a\u0004\b\u000e\u0010\u000f\"\u0004\b\u0010\u0010\u0011R\"\u0010\u0012\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0012\u0010\r\u001a\u0004\b\u0013\u0010\u000f\"\u0004\b\u0014\u0010\u0011R\"\u0010\u0015\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0015\u0010\r\u001a\u0004\b\u0016\u0010\u000f\"\u0004\b\u0017\u0010\u0011R\"\u0010\u0018\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u0018\u0010\r\u001a\u0004\b\u0019\u0010\u000f\"\u0004\b\u001a\u0010\u0011R\"\u0010\u001b\u001a\u00020\u00048\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\r\u001a\u0004\b\u001c\u0010\u000f\"\u0004\b\u001d\u0010\u0011R\"\u0010\u001f\u001a\u00020\u001e8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001f\u0010 \u001a\u0004\b!\u0010\"\"\u0004\b#\u0010$¨\u0006'"}, d2 = {"Lu4/f;", "", "", "h", "", "canvasWidth", "canvasHeight", "videoWidth", "videoHeight", "Landroid/widget/ImageView$ScaleType;", "scaleType", "g", "tranFx", "F", "e", "()F", "m", "(F)V", "tranFy", "f", "n", "scaleFx", "c", "k", "scaleFy", "d", "l", "ratio", "a", ContextChain.TAG_INFRA, "", "ratioX", "Z", "b", "()Z", "j", "(Z)V", "<init>", "()V", com.opensource.svgaplayer.a.f47177b}, k = 1, mv = {1, 4, 0})
/* loaded from: classes3.dex */
public final class f {

    /* renamed from: a  reason: collision with root package name */
    private float f94013a;

    /* renamed from: b  reason: collision with root package name */
    private float f94014b;

    /* renamed from: c  reason: collision with root package name */
    private float f94015c = 1.0f;

    /* renamed from: d  reason: collision with root package name */
    private float f94016d = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    private float f94017e = 1.0f;

    /* renamed from: f  reason: collision with root package name */
    private boolean f94018f;

    private final void h() {
        this.f94013a = 0.0f;
        this.f94014b = 0.0f;
        this.f94015c = 1.0f;
        this.f94016d = 1.0f;
        this.f94017e = 1.0f;
        this.f94018f = false;
    }

    public final float a() {
        return this.f94017e;
    }

    public final boolean b() {
        return this.f94018f;
    }

    public final float c() {
        return this.f94015c;
    }

    public final float d() {
        return this.f94016d;
    }

    public final float e() {
        return this.f94013a;
    }

    public final float f() {
        return this.f94014b;
    }

    public final void g(float f10, float f11, float f12, float f13, @g ImageView.ScaleType scaleType) {
        if (f10 == 0.0f || f11 == 0.0f || f12 == 0.0f || f13 == 0.0f) {
            return;
        }
        h();
        float f14 = (f10 - f12) / 2.0f;
        float f15 = (f11 - f13) / 2.0f;
        float f16 = f12 / f13;
        float f17 = f10 / f11;
        float f18 = f11 / f13;
        float f19 = f10 / f12;
        switch (e.$EnumSwitchMapping$0[scaleType.ordinal()]) {
            case 1:
                this.f94013a = f14;
                this.f94014b = f15;
                return;
            case 2:
                if (f16 > f17) {
                    this.f94017e = f18;
                    this.f94018f = false;
                    this.f94015c = f18;
                    this.f94016d = f18;
                    this.f94013a = (f10 - (f12 * f18)) / 2.0f;
                    return;
                }
                this.f94017e = f19;
                this.f94018f = true;
                this.f94015c = f19;
                this.f94016d = f19;
                this.f94014b = (f11 - (f13 * f19)) / 2.0f;
                return;
            case 3:
                if (f12 < f10 && f13 < f11) {
                    this.f94013a = f14;
                    this.f94014b = f15;
                    return;
                } else if (f16 > f17) {
                    this.f94017e = f19;
                    this.f94018f = true;
                    this.f94015c = f19;
                    this.f94016d = f19;
                    this.f94014b = (f11 - (f13 * f19)) / 2.0f;
                    return;
                } else {
                    this.f94017e = f18;
                    this.f94018f = false;
                    this.f94015c = f18;
                    this.f94016d = f18;
                    this.f94013a = (f10 - (f12 * f18)) / 2.0f;
                    return;
                }
            case 4:
                if (f16 > f17) {
                    this.f94017e = f19;
                    this.f94018f = true;
                    this.f94015c = f19;
                    this.f94016d = f19;
                    this.f94014b = (f11 - (f13 * f19)) / 2.0f;
                    return;
                }
                this.f94017e = f18;
                this.f94018f = false;
                this.f94015c = f18;
                this.f94016d = f18;
                this.f94013a = (f10 - (f12 * f18)) / 2.0f;
                return;
            case 5:
                if (f16 > f17) {
                    this.f94017e = f19;
                    this.f94018f = true;
                    this.f94015c = f19;
                    this.f94016d = f19;
                    return;
                }
                this.f94017e = f18;
                this.f94018f = false;
                this.f94015c = f18;
                this.f94016d = f18;
                return;
            case 6:
                if (f16 > f17) {
                    this.f94017e = f19;
                    this.f94018f = true;
                    this.f94015c = f19;
                    this.f94016d = f19;
                    this.f94014b = f11 - (f13 * f19);
                    return;
                }
                this.f94017e = f18;
                this.f94018f = false;
                this.f94015c = f18;
                this.f94016d = f18;
                this.f94013a = f10 - (f12 * f18);
                return;
            case 7:
                this.f94017e = Math.max(f19, f18);
                this.f94018f = f19 > f18;
                this.f94015c = f19;
                this.f94016d = f18;
                return;
            default:
                this.f94017e = f19;
                this.f94018f = true;
                this.f94015c = f19;
                this.f94016d = f19;
                return;
        }
    }

    public final void i(float f10) {
        this.f94017e = f10;
    }

    public final void j(boolean z9) {
        this.f94018f = z9;
    }

    public final void k(float f10) {
        this.f94015c = f10;
    }

    public final void l(float f10) {
        this.f94016d = f10;
    }

    public final void m(float f10) {
        this.f94013a = f10;
    }

    public final void n(float f10) {
        this.f94014b = f10;
    }
}
