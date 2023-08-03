package com.ksyun.media.streamer.util.gles;

import android.graphics.PointF;
import android.opengl.Matrix;
import java.nio.FloatBuffer;

/* loaded from: classes3.dex */
public class TexTransformUtil {
    public static final int COORDS_COUNT = 4;
    public static final int COORDS_PER_VERTEX = 2;
    public static final int COORDS_STRIDE = 8;
    public static final float[] TEX_COORDS;
    public static final FloatBuffer TEX_COORDS_BUF;
    public static final float[] TEX_MIRROR_COORDS;
    public static final FloatBuffer TEX_MIRROR_COORDS_BUF;
    public static final float[] VERTEX_COORDS;
    public static final FloatBuffer VERTEX_COORDS_BUF;
    public static final float[] VERTEX_MIRROR_COORDS;
    public static final FloatBuffer VERTEX_MIRROR_COORDS_BUF;

    /* renamed from: a  reason: collision with root package name */
    protected static final int f46842a = 4;

    static {
        float[] fArr = {0.0f, 0.0f, 1.0f, 0.0f, 0.0f, 1.0f, 1.0f, 1.0f};
        TEX_COORDS = fArr;
        TEX_COORDS_BUF = GlUtil.createFloatBuffer(fArr);
        float[] fArr2 = {1.0f, 0.0f, 0.0f, 0.0f, 1.0f, 1.0f, 0.0f, 1.0f};
        TEX_MIRROR_COORDS = fArr2;
        TEX_MIRROR_COORDS_BUF = GlUtil.createFloatBuffer(fArr2);
        float[] fArr3 = {-1.0f, -1.0f, 1.0f, -1.0f, -1.0f, 1.0f, 1.0f, 1.0f};
        VERTEX_COORDS = fArr3;
        VERTEX_COORDS_BUF = GlUtil.createFloatBuffer(fArr3);
        float[] fArr4 = {1.0f, -1.0f, -1.0f, -1.0f, 1.0f, 1.0f, -1.0f, 1.0f};
        VERTEX_MIRROR_COORDS = fArr4;
        VERTEX_MIRROR_COORDS_BUF = GlUtil.createFloatBuffer(fArr4);
    }

    private TexTransformUtil() {
    }

    private static float a(float f10) {
        return 1.0f - f10;
    }

    private static float a(float f10, float f11) {
        return f10 == 0.0f ? f11 : 1.0f - f11;
    }

    public static PointF calCrop(float f10, float f11) {
        PointF pointF = new PointF();
        if (f10 > f11) {
            pointF.x = 1.0f - (f11 / f10);
            pointF.y = 0.0f;
        } else {
            pointF.x = 0.0f;
            pointF.y = 1.0f - (f10 / f11);
        }
        pointF.x /= 2.0f;
        pointF.y /= 2.0f;
        return pointF;
    }

    public static void calTransformMatrix(float[] fArr, float f10, float f11, int i4) {
        int i10 = i4 % 360;
        if (i10 % 90 != 0) {
            return;
        }
        Matrix.setIdentityM(fArr, 0);
        Matrix.translateM(fArr, 0, 0.0f, f11, 0.0f);
        Matrix.scaleM(fArr, 0, f10, -f11, 1.0f);
        if (i10 == 0) {
            Matrix.translateM(fArr, 0, 0.0f, 0.0f, 0.0f);
        } else if (i10 == 90) {
            Matrix.translateM(fArr, 0, 1.0f, 0.0f, 0.0f);
        } else if (i10 == 180) {
            Matrix.translateM(fArr, 0, 1.0f, 1.0f, 0.0f);
        } else if (i10 == 270) {
            Matrix.translateM(fArr, 0, 0.0f, 1.0f, 0.0f);
        }
        Matrix.rotateM(fArr, 0, i10, 0.0f, 0.0f, 1.0f);
    }

    public static int getCoordsPerVertex() {
        return 2;
    }

    public static FloatBuffer getCropTexCoordsBuf(float f10, float f11) {
        return getTexCoordsBuf(f10, f11, 0, false, false);
    }

    public static FloatBuffer getHFlipTexCoordsBuf() {
        return getTexCoordsBuf(0.0f, 0.0f, 0, true, false);
    }

    public static FloatBuffer getRotateTexCoordsBuf(int i4) {
        return getTexCoordsBuf(0.0f, 0.0f, i4, false, false);
    }

    public static FloatBuffer getTexCoordsBuf() {
        return TEX_COORDS_BUF;
    }

    public static FloatBuffer getTexMirrorCoordsBuf() {
        return TEX_MIRROR_COORDS_BUF;
    }

    public static FloatBuffer getVFlipTexCoordsBuf() {
        return getTexCoordsBuf(0.0f, 0.0f, 0, false, true);
    }

    public static FloatBuffer getVertexArray() {
        return VERTEX_COORDS_BUF;
    }

    public static FloatBuffer getVertexCoordsBuf() {
        return VERTEX_COORDS_BUF;
    }

    public static int getVertexCount() {
        return 4;
    }

    public static FloatBuffer getVertexMirrorCoordsBuf() {
        return VERTEX_MIRROR_COORDS_BUF;
    }

    public static int getVertexStride() {
        return 8;
    }

    public static FloatBuffer getTexCoordsBuf(float f10, float f11, float f12, float f13, int i4, boolean z9, boolean z10) {
        float f14;
        float f15;
        float f16;
        float f17;
        boolean z11;
        boolean z12;
        float[] fArr = TEX_COORDS;
        int length = fArr.length;
        float[] fArr2 = new float[length];
        float[] fArr3 = new float[fArr.length];
        System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        if (i4 % com.facebook.imagepipeline.common.e.f12205e != 0) {
            f17 = f10;
            f16 = f11;
            f15 = f12;
            f14 = f13;
            z12 = z9;
            z11 = z10;
        } else {
            f14 = f10;
            f15 = f11;
            f16 = f12;
            f17 = f13;
            z11 = z9;
            z12 = z10;
        }
        if (f10 != 0.0f || f11 != 0.0f || f12 != 0.0f || f13 != 0.0f) {
            fArr2[0] = f14;
            float f18 = 1.0f - f16;
            fArr2[2] = f18;
            fArr2[4] = f14;
            fArr2[6] = f18;
            fArr2[1] = f17;
            fArr2[3] = f17;
            float f19 = 1.0f - f15;
            fArr2[5] = f19;
            fArr2[7] = f19;
        }
        if (z11) {
            for (int i10 = 0; i10 < length; i10 += 2) {
                fArr2[i10] = a(fArr2[i10]);
            }
        }
        if (z12) {
            for (int i11 = 0; i11 < length; i11 += 2) {
                int i12 = i11 + 1;
                fArr2[i12] = a(fArr2[i12]);
            }
        }
        if (i4 == 90) {
            System.arraycopy(fArr2, 4, fArr3, 0, 2);
            System.arraycopy(fArr2, 0, fArr3, 2, 2);
            System.arraycopy(fArr2, 6, fArr3, 4, 2);
            System.arraycopy(fArr2, 2, fArr3, 6, 2);
        } else if (i4 == 180) {
            System.arraycopy(fArr2, 6, fArr3, 0, 2);
            System.arraycopy(fArr2, 4, fArr3, 2, 2);
            System.arraycopy(fArr2, 2, fArr3, 4, 2);
            System.arraycopy(fArr2, 0, fArr3, 6, 2);
        } else if (i4 != 270) {
            System.arraycopy(fArr2, 0, fArr3, 0, length);
        } else {
            System.arraycopy(fArr2, 2, fArr3, 0, 2);
            System.arraycopy(fArr2, 6, fArr3, 2, 2);
            System.arraycopy(fArr2, 0, fArr3, 4, 2);
            System.arraycopy(fArr2, 4, fArr3, 6, 2);
        }
        return GlUtil.createFloatBuffer(fArr3);
    }

    public static FloatBuffer getTexCoordsBuf(float f10, float f11, int i4, boolean z9, boolean z10) {
        float[] fArr = TEX_COORDS;
        int length = fArr.length;
        float[] fArr2 = new float[length];
        float[] fArr3 = new float[fArr.length];
        System.arraycopy(fArr, 0, fArr2, 0, fArr.length);
        System.arraycopy(fArr, 0, fArr3, 0, fArr.length);
        if (i4 % com.facebook.imagepipeline.common.e.f12205e != 0) {
            f11 = f10;
            f10 = f11;
            z10 = z9;
            z9 = z10;
        }
        if (f10 != 0.0f || f11 != 0.0f) {
            for (int i10 = 0; i10 < length; i10 += 2) {
                fArr2[i10] = a(fArr2[i10], f10);
                int i11 = i10 + 1;
                fArr2[i11] = a(fArr2[i11], f11);
            }
        }
        if (z9) {
            for (int i12 = 0; i12 < length; i12 += 2) {
                fArr2[i12] = a(fArr2[i12]);
            }
        }
        if (z10) {
            for (int i13 = 0; i13 < length; i13 += 2) {
                int i14 = i13 + 1;
                fArr2[i14] = a(fArr2[i14]);
            }
        }
        if (i4 == 90) {
            System.arraycopy(fArr2, 4, fArr3, 0, 2);
            System.arraycopy(fArr2, 0, fArr3, 2, 2);
            System.arraycopy(fArr2, 6, fArr3, 4, 2);
            System.arraycopy(fArr2, 2, fArr3, 6, 2);
        } else if (i4 == 180) {
            System.arraycopy(fArr2, 6, fArr3, 0, 2);
            System.arraycopy(fArr2, 4, fArr3, 2, 2);
            System.arraycopy(fArr2, 2, fArr3, 4, 2);
            System.arraycopy(fArr2, 0, fArr3, 6, 2);
        } else if (i4 != 270) {
            System.arraycopy(fArr2, 0, fArr3, 0, length);
        } else {
            System.arraycopy(fArr2, 2, fArr3, 0, 2);
            System.arraycopy(fArr2, 6, fArr3, 2, 2);
            System.arraycopy(fArr2, 0, fArr3, 4, 2);
            System.arraycopy(fArr2, 4, fArr3, 6, 2);
        }
        return GlUtil.createFloatBuffer(fArr3);
    }
}
