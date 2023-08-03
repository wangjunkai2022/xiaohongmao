package androidx.core.content.res;

import android.graphics.Color;
import androidx.annotation.NonNull;
import androidx.core.graphics.ColorUtils;
import androidx.core.view.ViewCompat;

/* loaded from: classes.dex */
final class CamUtils {
    static final float[][] XYZ_TO_CAM16RGB = {new float[]{0.401288f, 0.650173f, -0.051461f}, new float[]{-0.250268f, 1.204414f, 0.045854f}, new float[]{-0.002079f, 0.048952f, 0.953127f}};
    static final float[][] CAM16RGB_TO_XYZ = {new float[]{1.8620678f, -1.0112547f, 0.14918678f}, new float[]{0.38752654f, 0.62144744f, -0.00897398f}, new float[]{-0.0158415f, -0.03412294f, 1.0499644f}};
    static final float[] WHITE_POINT_D65 = {95.047f, 100.0f, 108.883f};
    static final float[][] SRGB_TO_XYZ = {new float[]{0.41233894f, 0.35762063f, 0.18051042f}, new float[]{0.2126f, 0.7152f, 0.0722f}, new float[]{0.01932141f, 0.11916382f, 0.9503448f}};

    private CamUtils() {
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static int intFromLStar(float f10) {
        if (f10 < 1.0f) {
            return ViewCompat.MEASURED_STATE_MASK;
        }
        if (f10 > 99.0f) {
            return -1;
        }
        float f11 = (f10 + 16.0f) / 116.0f;
        float f12 = (f10 > 8.0f ? 1 : (f10 == 8.0f ? 0 : -1)) > 0 ? f11 * f11 * f11 : f10 / 903.2963f;
        float f13 = f11 * f11 * f11;
        boolean z9 = f13 > 0.008856452f;
        float f14 = z9 ? f13 : ((f11 * 116.0f) - 16.0f) / 903.2963f;
        if (!z9) {
            f13 = ((f11 * 116.0f) - 16.0f) / 903.2963f;
        }
        float[] fArr = WHITE_POINT_D65;
        return ColorUtils.XYZToColor(f14 * fArr[0], f12 * fArr[1], f13 * fArr[2]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float lStarFromInt(int i4) {
        return lStarFromY(yFromInt(i4));
    }

    static float lStarFromY(float f10) {
        float f11 = f10 / 100.0f;
        return f11 <= 0.008856452f ? f11 * 903.2963f : (((float) Math.cbrt(f11)) * 116.0f) - 16.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float lerp(float f10, float f11, float f12) {
        return f10 + ((f11 - f10) * f12);
    }

    static float linearized(int i4) {
        float f10 = i4 / 255.0f;
        return (f10 <= 0.04045f ? f10 / 12.92f : (float) Math.pow((f10 + 0.055f) / 1.055f, 2.4000000953674316d)) * 100.0f;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    @NonNull
    public static float[] xyzFromInt(int i4) {
        float linearized = linearized(Color.red(i4));
        float linearized2 = linearized(Color.green(i4));
        float linearized3 = linearized(Color.blue(i4));
        float[][] fArr = SRGB_TO_XYZ;
        return new float[]{(fArr[0][0] * linearized) + (fArr[0][1] * linearized2) + (fArr[0][2] * linearized3), (fArr[1][0] * linearized) + (fArr[1][1] * linearized2) + (fArr[1][2] * linearized3), (linearized * fArr[2][0]) + (linearized2 * fArr[2][1]) + (linearized3 * fArr[2][2])};
    }

    static float yFromInt(int i4) {
        float linearized = linearized(Color.red(i4));
        float linearized2 = linearized(Color.green(i4));
        float linearized3 = linearized(Color.blue(i4));
        float[][] fArr = SRGB_TO_XYZ;
        return (linearized * fArr[1][0]) + (linearized2 * fArr[1][1]) + (linearized3 * fArr[1][2]);
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static float yFromLStar(float f10) {
        return (f10 > 8.0f ? (float) Math.pow((f10 + 16.0d) / 116.0d, 3.0d) : f10 / 903.2963f) * 100.0f;
    }
}
