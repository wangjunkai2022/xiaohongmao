package androidx.core.content.res;

import androidx.annotation.ColorInt;
import androidx.annotation.FloatRange;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.core.graphics.ColorUtils;
import kotlin.jvm.internal.DoubleCompanionObject;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public class CamColor {
    private static final float CHROMA_SEARCH_ENDPOINT = 0.4f;
    private static final float DE_MAX = 1.0f;
    private static final float DL_MAX = 0.2f;
    private static final float LIGHTNESS_SEARCH_ENDPOINT = 0.01f;
    private final float mAstar;
    private final float mBstar;
    private final float mChroma;
    private final float mHue;
    private final float mJ;
    private final float mJstar;
    private final float mM;
    private final float mQ;
    private final float mS;

    CamColor(float f10, float f11, float f12, float f13, float f14, float f15, float f16, float f17, float f18) {
        this.mHue = f10;
        this.mChroma = f11;
        this.mJ = f12;
        this.mQ = f13;
        this.mM = f14;
        this.mS = f15;
        this.mJstar = f16;
        this.mAstar = f17;
        this.mBstar = f18;
    }

    @Nullable
    private static CamColor findCamByJ(@FloatRange(from = 0.0d, to = 360.0d) float f10, @FloatRange(from = 0.0d, to = Double.POSITIVE_INFINITY, toInclusive = false) float f11, @FloatRange(from = 0.0d, to = 100.0d) float f12) {
        float f13 = 1000.0f;
        CamColor camColor = null;
        float f14 = 1000.0f;
        float f15 = 100.0f;
        float f16 = 0.0f;
        while (Math.abs(f16 - f15) > 0.01f) {
            float f17 = ((f15 - f16) / 2.0f) + f16;
            int viewedInSrgb = fromJch(f17, f11, f10).viewedInSrgb();
            float lStarFromInt = CamUtils.lStarFromInt(viewedInSrgb);
            float abs = Math.abs(f12 - lStarFromInt);
            if (abs < 0.2f) {
                CamColor fromColor = fromColor(viewedInSrgb);
                float distance = fromColor.distance(fromJch(fromColor.getJ(), fromColor.getChroma(), f10));
                if (distance <= 1.0f) {
                    camColor = fromColor;
                    f13 = abs;
                    f14 = distance;
                }
            }
            if (f13 == 0.0f && f14 == 0.0f) {
                break;
            } else if (lStarFromInt < f12) {
                f16 = f17;
            } else {
                f15 = f17;
            }
        }
        return camColor;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static CamColor fromColor(@ColorInt int i4) {
        return fromColorInViewingConditions(i4, ViewingConditions.DEFAULT);
    }

    @NonNull
    static CamColor fromColorInViewingConditions(@ColorInt int i4, @NonNull ViewingConditions viewingConditions) {
        float pow;
        float[] xyzFromInt = CamUtils.xyzFromInt(i4);
        float[][] fArr = CamUtils.XYZ_TO_CAM16RGB;
        float f10 = (xyzFromInt[0] * fArr[0][0]) + (xyzFromInt[1] * fArr[0][1]) + (xyzFromInt[2] * fArr[0][2]);
        float f11 = (xyzFromInt[0] * fArr[1][0]) + (xyzFromInt[1] * fArr[1][1]) + (xyzFromInt[2] * fArr[1][2]);
        float f12 = (xyzFromInt[0] * fArr[2][0]) + (xyzFromInt[1] * fArr[2][1]) + (xyzFromInt[2] * fArr[2][2]);
        float f13 = viewingConditions.getRgbD()[0] * f10;
        float f14 = viewingConditions.getRgbD()[1] * f11;
        float f15 = viewingConditions.getRgbD()[2] * f12;
        float pow2 = (float) Math.pow((viewingConditions.getFl() * Math.abs(f13)) / 100.0d, 0.42d);
        float pow3 = (float) Math.pow((viewingConditions.getFl() * Math.abs(f14)) / 100.0d, 0.42d);
        float pow4 = (float) Math.pow((viewingConditions.getFl() * Math.abs(f15)) / 100.0d, 0.42d);
        float signum = ((Math.signum(f13) * 400.0f) * pow2) / (pow2 + 27.13f);
        float signum2 = ((Math.signum(f14) * 400.0f) * pow3) / (pow3 + 27.13f);
        float signum3 = ((Math.signum(f15) * 400.0f) * pow4) / (pow4 + 27.13f);
        double d4 = signum3;
        float f16 = ((float) (((signum * 11.0d) + (signum2 * (-12.0d))) + d4)) / 11.0f;
        float f17 = ((float) ((signum + signum2) - (d4 * 2.0d))) / 9.0f;
        float f18 = signum2 * 20.0f;
        float f19 = (((signum * 20.0f) + f18) + (21.0f * signum3)) / 20.0f;
        float f20 = (((signum * 40.0f) + f18) + signum3) / 20.0f;
        float atan2 = (((float) Math.atan2(f17, f16)) * 180.0f) / 3.1415927f;
        if (atan2 < 0.0f) {
            atan2 += 360.0f;
        } else if (atan2 >= 360.0f) {
            atan2 -= 360.0f;
        }
        float f21 = atan2;
        float f22 = (3.1415927f * f21) / 180.0f;
        float pow5 = ((float) Math.pow((f20 * viewingConditions.getNbb()) / viewingConditions.getAw(), viewingConditions.getC() * viewingConditions.getZ())) * 100.0f;
        float flRoot = viewingConditions.getFlRoot() * (4.0f / viewingConditions.getC()) * ((float) Math.sqrt(pow5 / 100.0f)) * (viewingConditions.getAw() + 4.0f);
        float pow6 = ((float) Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d)) * ((float) Math.pow((((((((float) (Math.cos((((((double) f21) < 20.14d ? 360.0f + f21 : f21) * 3.141592653589793d) / 180.0d) + 2.0d) + 3.8d)) * 0.25f) * 3846.1538f) * viewingConditions.getNc()) * viewingConditions.getNcb()) * ((float) Math.sqrt((f16 * f16) + (f17 * f17)))) / (f19 + 0.305f), 0.9d)) * ((float) Math.sqrt(pow5 / 100.0d));
        float flRoot2 = pow6 * viewingConditions.getFlRoot();
        float sqrt = ((float) Math.sqrt((pow * viewingConditions.getC()) / (viewingConditions.getAw() + 4.0f))) * 50.0f;
        float f23 = (1.7f * pow5) / ((0.007f * pow5) + 1.0f);
        float log = ((float) Math.log((0.0228f * flRoot2) + 1.0f)) * 43.85965f;
        double d10 = f22;
        return new CamColor(f21, pow6, pow5, flRoot, flRoot2, sqrt, f23, log * ((float) Math.cos(d10)), log * ((float) Math.sin(d10)));
    }

    @NonNull
    private static CamColor fromJch(@FloatRange(from = 0.0d, to = 100.0d) float f10, @FloatRange(from = 0.0d, to = Double.POSITIVE_INFINITY, toInclusive = false) float f11, @FloatRange(from = 0.0d, to = 360.0d) float f12) {
        return fromJchInFrame(f10, f11, f12, ViewingConditions.DEFAULT);
    }

    @NonNull
    private static CamColor fromJchInFrame(@FloatRange(from = 0.0d, to = 100.0d) float f10, @FloatRange(from = 0.0d, to = Double.POSITIVE_INFINITY, toInclusive = false) float f11, @FloatRange(from = 0.0d, to = 360.0d) float f12, ViewingConditions viewingConditions) {
        double d4;
        float c10 = (4.0f / viewingConditions.getC()) * ((float) Math.sqrt(f10 / 100.0d)) * (viewingConditions.getAw() + 4.0f) * viewingConditions.getFlRoot();
        float flRoot = f11 * viewingConditions.getFlRoot();
        float sqrt = ((float) Math.sqrt(((f11 / ((float) Math.sqrt(d4))) * viewingConditions.getC()) / (viewingConditions.getAw() + 4.0f))) * 50.0f;
        float f13 = (1.7f * f10) / ((0.007f * f10) + 1.0f);
        float log = ((float) Math.log((flRoot * 0.0228d) + 1.0d)) * 43.85965f;
        double d10 = (3.1415927f * f12) / 180.0f;
        return new CamColor(f12, f11, f10, c10, flRoot, sqrt, f13, log * ((float) Math.cos(d10)), log * ((float) Math.sin(d10)));
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int toColor(@FloatRange(from = 0.0d, to = 360.0d) float f10, @FloatRange(from = 0.0d, to = Double.POSITIVE_INFINITY, toInclusive = false) float f11, @FloatRange(from = 0.0d, to = 100.0d) float f12) {
        return toColor(f10, f11, f12, ViewingConditions.DEFAULT);
    }

    float distance(@NonNull CamColor camColor) {
        float jStar = getJStar() - camColor.getJStar();
        float aStar = getAStar() - camColor.getAStar();
        float bStar = getBStar() - camColor.getBStar();
        return (float) (Math.pow(Math.sqrt((jStar * jStar) + (aStar * aStar) + (bStar * bStar)), 0.63d) * 1.41d);
    }

    @FloatRange(from = DoubleCompanionObject.NEGATIVE_INFINITY, fromInclusive = false, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    float getAStar() {
        return this.mAstar;
    }

    @FloatRange(from = DoubleCompanionObject.NEGATIVE_INFINITY, fromInclusive = false, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    float getBStar() {
        return this.mBstar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @FloatRange(from = 0.0d, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    public float getChroma() {
        return this.mChroma;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @FloatRange(from = 0.0d, to = 360.0d, toInclusive = false)
    public float getHue() {
        return this.mHue;
    }

    @FloatRange(from = 0.0d, to = 100.0d)
    float getJ() {
        return this.mJ;
    }

    @FloatRange(from = 0.0d, to = 100.0d)
    float getJStar() {
        return this.mJstar;
    }

    @FloatRange(from = 0.0d, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    float getM() {
        return this.mM;
    }

    @FloatRange(from = 0.0d, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    float getQ() {
        return this.mQ;
    }

    @FloatRange(from = 0.0d, to = DoubleCompanionObject.POSITIVE_INFINITY, toInclusive = false)
    float getS() {
        return this.mS;
    }

    @ColorInt
    int viewed(@NonNull ViewingConditions viewingConditions) {
        float f10;
        float pow = (float) Math.pow(((((double) getChroma()) == 0.0d || ((double) getJ()) == 0.0d) ? 0.0f : getChroma() / ((float) Math.sqrt(getJ() / 100.0d))) / Math.pow(1.64d - Math.pow(0.29d, viewingConditions.getN()), 0.73d), 1.1111111111111112d);
        double hue = (getHue() * 3.1415927f) / 180.0f;
        float aw = viewingConditions.getAw() * ((float) Math.pow(getJ() / 100.0d, (1.0d / viewingConditions.getC()) / viewingConditions.getZ()));
        float cos = ((float) (Math.cos(2.0d + hue) + 3.8d)) * 0.25f * 3846.1538f * viewingConditions.getNc() * viewingConditions.getNcb();
        float nbb = aw / viewingConditions.getNbb();
        float sin = (float) Math.sin(hue);
        float cos2 = (float) Math.cos(hue);
        float f11 = (((0.305f + nbb) * 23.0f) * pow) / (((cos * 23.0f) + ((11.0f * pow) * cos2)) + ((pow * 108.0f) * sin));
        float f12 = cos2 * f11;
        float f13 = f11 * sin;
        float f14 = nbb * 460.0f;
        float f15 = (((451.0f * f12) + f14) + (288.0f * f13)) / 1403.0f;
        float f16 = ((f14 - (891.0f * f12)) - (261.0f * f13)) / 1403.0f;
        float signum = Math.signum(f15) * (100.0f / viewingConditions.getFl()) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f15) * 27.13d) / (400.0d - Math.abs(f15))), 2.380952380952381d));
        float signum2 = Math.signum(f16) * (100.0f / viewingConditions.getFl()) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f16) * 27.13d) / (400.0d - Math.abs(f16))), 2.380952380952381d));
        float signum3 = Math.signum(((f14 - (f12 * 220.0f)) - (f13 * 6300.0f)) / 1403.0f) * (100.0f / viewingConditions.getFl()) * ((float) Math.pow((float) Math.max(0.0d, (Math.abs(f10) * 27.13d) / (400.0d - Math.abs(f10))), 2.380952380952381d));
        float f17 = signum / viewingConditions.getRgbD()[0];
        float f18 = signum2 / viewingConditions.getRgbD()[1];
        float f19 = signum3 / viewingConditions.getRgbD()[2];
        float[][] fArr = CamUtils.CAM16RGB_TO_XYZ;
        return ColorUtils.XYZToColor((fArr[0][0] * f17) + (fArr[0][1] * f18) + (fArr[0][2] * f19), (fArr[1][0] * f17) + (fArr[1][1] * f18) + (fArr[1][2] * f19), (f17 * fArr[2][0]) + (f18 * fArr[2][1]) + (f19 * fArr[2][2]));
    }

    @ColorInt
    int viewedInSrgb() {
        return viewed(ViewingConditions.DEFAULT);
    }

    @ColorInt
    static int toColor(@FloatRange(from = 0.0d, to = 360.0d) float f10, @FloatRange(from = 0.0d, to = Double.POSITIVE_INFINITY, toInclusive = false) float f11, @FloatRange(from = 0.0d, to = 100.0d) float f12, @NonNull ViewingConditions viewingConditions) {
        if (f11 >= 1.0d && Math.round(f12) > 0.0d && Math.round(f12) < 100.0d) {
            float min = f10 < 0.0f ? 0.0f : Math.min(360.0f, f10);
            float f13 = f11;
            CamColor camColor = null;
            float f14 = 0.0f;
            boolean z9 = true;
            while (Math.abs(f14 - f11) >= CHROMA_SEARCH_ENDPOINT) {
                CamColor findCamByJ = findCamByJ(min, f13, f12);
                if (z9) {
                    if (findCamByJ != null) {
                        return findCamByJ.viewed(viewingConditions);
                    }
                    z9 = false;
                } else if (findCamByJ == null) {
                    f11 = f13;
                } else {
                    f14 = f13;
                    camColor = findCamByJ;
                }
                f13 = ((f11 - f14) / 2.0f) + f14;
            }
            if (camColor == null) {
                return CamUtils.intFromLStar(f12);
            }
            return camColor.viewed(viewingConditions);
        }
        return CamUtils.intFromLStar(f12);
    }
}
