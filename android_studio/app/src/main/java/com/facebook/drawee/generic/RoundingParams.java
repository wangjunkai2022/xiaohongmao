package com.facebook.drawee.generic;

import androidx.annotation.ColorInt;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import java.util.Arrays;
import r7.h;

@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class RoundingParams {

    /* renamed from: a  reason: collision with root package name */
    private RoundingMethod f11580a = RoundingMethod.BITMAP_ONLY;

    /* renamed from: b  reason: collision with root package name */
    private boolean f11581b = false;
    @h

    /* renamed from: c  reason: collision with root package name */
    private float[] f11582c = null;

    /* renamed from: d  reason: collision with root package name */
    private int f11583d = 0;

    /* renamed from: e  reason: collision with root package name */
    private float f11584e = 0.0f;

    /* renamed from: f  reason: collision with root package name */
    private int f11585f = 0;

    /* renamed from: g  reason: collision with root package name */
    private float f11586g = 0.0f;

    /* renamed from: h  reason: collision with root package name */
    private boolean f11587h = false;

    /* renamed from: i  reason: collision with root package name */
    private boolean f11588i = false;

    /* loaded from: classes.dex */
    public enum RoundingMethod {
        OVERLAY_COLOR,
        BITMAP_ONLY
    }

    public static RoundingParams a() {
        return new RoundingParams().x(true);
    }

    public static RoundingParams b(float topLeft, float topRight, float bottomRight, float bottomLeft) {
        return new RoundingParams().r(topLeft, topRight, bottomRight, bottomLeft);
    }

    public static RoundingParams c(float[] radii) {
        return new RoundingParams().s(radii);
    }

    public static RoundingParams d(float radius) {
        return new RoundingParams().t(radius);
    }

    private float[] h() {
        if (this.f11582c == null) {
            this.f11582c = new float[8];
        }
        return this.f11582c;
    }

    public int e() {
        return this.f11585f;
    }

    public boolean equals(@h Object o9) {
        if (this == o9) {
            return true;
        }
        if (o9 == null || getClass() != o9.getClass()) {
            return false;
        }
        RoundingParams roundingParams = (RoundingParams) o9;
        if (this.f11581b == roundingParams.f11581b && this.f11583d == roundingParams.f11583d && Float.compare(roundingParams.f11584e, this.f11584e) == 0 && this.f11585f == roundingParams.f11585f && Float.compare(roundingParams.f11586g, this.f11586g) == 0 && this.f11580a == roundingParams.f11580a && this.f11587h == roundingParams.f11587h && this.f11588i == roundingParams.f11588i) {
            return Arrays.equals(this.f11582c, roundingParams.f11582c);
        }
        return false;
    }

    public float f() {
        return this.f11584e;
    }

    @h
    public float[] g() {
        return this.f11582c;
    }

    public int hashCode() {
        RoundingMethod roundingMethod = this.f11580a;
        int hashCode = (((roundingMethod != null ? roundingMethod.hashCode() : 0) * 31) + (this.f11581b ? 1 : 0)) * 31;
        float[] fArr = this.f11582c;
        int hashCode2 = (((hashCode + (fArr != null ? Arrays.hashCode(fArr) : 0)) * 31) + this.f11583d) * 31;
        float f10 = this.f11584e;
        int floatToIntBits = (((hashCode2 + (f10 != 0.0f ? Float.floatToIntBits(f10) : 0)) * 31) + this.f11585f) * 31;
        float f11 = this.f11586g;
        return ((((floatToIntBits + (f11 != 0.0f ? Float.floatToIntBits(f11) : 0)) * 31) + (this.f11587h ? 1 : 0)) * 31) + (this.f11588i ? 1 : 0);
    }

    public int i() {
        return this.f11583d;
    }

    public float j() {
        return this.f11586g;
    }

    public boolean k() {
        return this.f11588i;
    }

    public boolean l() {
        return this.f11581b;
    }

    public RoundingMethod m() {
        return this.f11580a;
    }

    public boolean n() {
        return this.f11587h;
    }

    public RoundingParams o(@ColorInt int color, float width) {
        j.e(width >= 0.0f, "the border width cannot be < 0");
        this.f11584e = width;
        this.f11585f = color;
        return this;
    }

    public RoundingParams p(@ColorInt int color) {
        this.f11585f = color;
        return this;
    }

    public RoundingParams q(float width) {
        j.e(width >= 0.0f, "the border width cannot be < 0");
        this.f11584e = width;
        return this;
    }

    public RoundingParams r(float topLeft, float topRight, float bottomRight, float bottomLeft) {
        float[] h4 = h();
        h4[1] = topLeft;
        h4[0] = topLeft;
        h4[3] = topRight;
        h4[2] = topRight;
        h4[5] = bottomRight;
        h4[4] = bottomRight;
        h4[7] = bottomLeft;
        h4[6] = bottomLeft;
        return this;
    }

    public RoundingParams s(float[] radii) {
        j.i(radii);
        j.e(radii.length == 8, "radii should have exactly 8 values");
        System.arraycopy(radii, 0, h(), 0, 8);
        return this;
    }

    public RoundingParams t(float radius) {
        Arrays.fill(h(), radius);
        return this;
    }

    public RoundingParams u(@ColorInt int overlayColor) {
        this.f11583d = overlayColor;
        this.f11580a = RoundingMethod.OVERLAY_COLOR;
        return this;
    }

    public RoundingParams v(float padding) {
        j.e(padding >= 0.0f, "the padding cannot be < 0");
        this.f11586g = padding;
        return this;
    }

    public RoundingParams w(boolean paintFilterBitmap) {
        this.f11588i = paintFilterBitmap;
        return this;
    }

    public RoundingParams x(boolean roundAsCircle) {
        this.f11581b = roundAsCircle;
        return this;
    }

    public RoundingParams y(RoundingMethod roundingMethod) {
        this.f11580a = roundingMethod;
        return this;
    }

    public RoundingParams z(boolean scaleDownInsideBorders) {
        this.f11587h = scaleDownInsideBorders;
        return this;
    }
}
