package com.ksyun.media.streamer.filter.imgtex;

import android.graphics.Point;
import android.graphics.PointF;
import android.opengl.GLES20;
import com.ksyun.media.streamer.util.gles.GLRender;
import com.ksyun.media.streamer.util.gles.GlUtil;
import java.io.IOException;
import java.io.InputStream;
import java.lang.reflect.Array;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Comparator;
import java.util.Iterator;

/* loaded from: classes3.dex */
public class ImgBeautyToneCurveFilter extends ImgTexFilter {
    public static final String TONE_CURVE_FRAGMENT_SHADER = " varying highp vec2 vTextureCoord;\n uniform sampler2D toneCurveTexture;\n\n void main()\n {\n     lowp vec4 textureColor = texture2D(sTexture, vTextureCoord);\n     lowp float redCurveValue = texture2D(toneCurveTexture, vec2(textureColor.r, 0.0)).r;\n     lowp float greenCurveValue = texture2D(toneCurveTexture, vec2(textureColor.g, 0.0)).g;\n     lowp float blueCurveValue = texture2D(toneCurveTexture, vec2(textureColor.b, 0.0)).b;\n\n     gl_FragColor = vec4(redCurveValue, greenCurveValue, blueCurveValue, textureColor.a);\n }";

    /* renamed from: a  reason: collision with root package name */
    private int[] f46404a;

    /* renamed from: b  reason: collision with root package name */
    private int f46405b;

    /* renamed from: c  reason: collision with root package name */
    private PointF[] f46406c;

    /* renamed from: d  reason: collision with root package name */
    private PointF[] f46407d;

    /* renamed from: e  reason: collision with root package name */
    private PointF[] f46408e;

    /* renamed from: f  reason: collision with root package name */
    private PointF[] f46409f;

    /* renamed from: g  reason: collision with root package name */
    private ArrayList<Float> f46410g;

    /* renamed from: h  reason: collision with root package name */
    private ArrayList<Float> f46411h;

    /* renamed from: i  reason: collision with root package name */
    private ArrayList<Float> f46412i;

    /* renamed from: j  reason: collision with root package name */
    private ArrayList<Float> f46413j;

    /* renamed from: k  reason: collision with root package name */
    private boolean f46414k;

    public ImgBeautyToneCurveFilter(GLRender gLRender) {
        super(gLRender, "uniform mat4 uTexMatrix;\nattribute vec4 aPosition;\nattribute vec4 aTextureCoord;\nvarying vec2 vTextureCoord;\nvoid main() {\n    gl_Position = aPosition;\n    vTextureCoord = (uTexMatrix * aTextureCoord).xy;\n}\n", TONE_CURVE_FRAGMENT_SHADER);
        this.f46404a = new int[]{-1};
        this.f46414k = false;
        PointF[] pointFArr = {new PointF(0.0f, 0.0f), new PointF(0.5f, 0.5f), new PointF(1.0f, 1.0f)};
        this.f46406c = pointFArr;
        this.f46407d = pointFArr;
        this.f46408e = pointFArr;
        this.f46409f = pointFArr;
    }

    private short a(InputStream inputStream) {
        return (short) (inputStream.read() | (inputStream.read() << 8));
    }

    private void b(PointF[] pointFArr) {
        this.f46407d = pointFArr;
        this.f46411h = e(pointFArr);
    }

    private void c(PointF[] pointFArr) {
        this.f46408e = pointFArr;
        this.f46412i = e(pointFArr);
    }

    private void d(PointF[] pointFArr) {
        this.f46409f = pointFArr;
        this.f46413j = e(pointFArr);
    }

    private ArrayList<Float> e(PointF[] pointFArr) {
        if (pointFArr == null || pointFArr.length <= 0) {
            return null;
        }
        PointF[] pointFArr2 = (PointF[]) pointFArr.clone();
        Arrays.sort(pointFArr2, new Comparator<PointF>() { // from class: com.ksyun.media.streamer.filter.imgtex.ImgBeautyToneCurveFilter.1
            @Override // java.util.Comparator
            /* renamed from: a */
            public int compare(PointF pointF, PointF pointF2) {
                float f10 = pointF.x;
                float f11 = pointF2.x;
                if (f10 < f11) {
                    return -1;
                }
                return f10 > f11 ? 1 : 0;
            }
        });
        Point[] pointArr = new Point[pointFArr2.length];
        for (int i4 = 0; i4 < pointFArr.length; i4++) {
            PointF pointF = pointFArr2[i4];
            pointArr[i4] = new Point((int) (pointF.x * 255.0f), (int) (pointF.y * 255.0f));
        }
        ArrayList<Point> a10 = a(pointArr);
        int i10 = a10.get(0).x;
        if (i10 > 0) {
            while (i10 >= 0) {
                a10.add(0, new Point(i10, 0));
                i10--;
            }
        }
        int i11 = a10.get(a10.size() - 1).x;
        if (i11 < 255) {
            while (true) {
                i11++;
                if (i11 > 255) {
                    break;
                }
                a10.add(new Point(i11, 255));
            }
        }
        ArrayList<Float> arrayList = new ArrayList<>(a10.size());
        Iterator<Point> it = a10.iterator();
        while (it.hasNext()) {
            Point next = it.next();
            int i12 = next.x;
            Point point = new Point(i12, i12);
            float sqrt = (float) Math.sqrt(Math.pow(point.x - next.x, 2.0d) + Math.pow(point.y - next.y, 2.0d));
            if (point.y > next.y) {
                sqrt = -sqrt;
            }
            arrayList.add(Float.valueOf(sqrt));
        }
        return arrayList;
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    protected void onDrawArraysAfter() {
        if (this.f46404a[0] != -1) {
            GLES20.glActiveTexture(33987);
            GLES20.glBindTexture(3553, 0);
            GLES20.glActiveTexture(33984);
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    protected void onDrawArraysPre() {
        b();
        if (this.f46404a[0] != -1) {
            GLES20.glActiveTexture(33987);
            GLES20.glBindTexture(3553, this.f46404a[0]);
            GLES20.glUniform1i(this.f46405b, 3);
        }
    }

    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter
    public void onInitialized() {
        this.f46405b = GLES20.glGetUniformLocation(this.mProgramId, "toneCurveTexture");
        this.f46404a[0] = -1;
        a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.filter.imgtex.ImgTexFilter, com.ksyun.media.streamer.filter.imgtex.ImgTexFilterBase
    public void onRelease() {
        super.onRelease();
        GLES20.glDeleteTextures(1, this.f46404a, 0);
        this.f46404a[0] = -1;
    }

    public void setFromCurveFileInputStream(InputStream inputStream) {
        try {
            a(inputStream);
            short a10 = a(inputStream);
            ArrayList arrayList = new ArrayList(a10);
            for (int i4 = 0; i4 < a10; i4++) {
                int a11 = a(inputStream);
                PointF[] pointFArr = new PointF[a11];
                for (int i10 = 0; i10 < a11; i10++) {
                    pointFArr[i10] = new PointF(a(inputStream) * 0.003921569f, a(inputStream) * 0.003921569f);
                }
                arrayList.add(pointFArr);
            }
            inputStream.close();
            this.f46406c = (PointF[]) arrayList.get(0);
            this.f46407d = (PointF[]) arrayList.get(1);
            this.f46408e = (PointF[]) arrayList.get(2);
            this.f46409f = (PointF[]) arrayList.get(3);
        } catch (IOException e4) {
            e4.printStackTrace();
        }
        a();
    }

    private void a(PointF[] pointFArr) {
        this.f46406c = pointFArr;
        this.f46410g = e(pointFArr);
    }

    private void b() {
        if (this.f46414k) {
            GLES20.glActiveTexture(33987);
            GLES20.glBindTexture(3553, this.f46404a[0]);
            if (this.f46411h.size() >= 256 && this.f46412i.size() >= 256 && this.f46413j.size() >= 256 && this.f46410g.size() >= 256) {
                byte[] bArr = new byte[1024];
                for (int i4 = 0; i4 < 256; i4++) {
                    int i10 = i4 * 4;
                    float f10 = i4;
                    bArr[i10 + 2] = (byte) (((int) Math.min(Math.max(this.f46413j.get(i4).floatValue() + f10 + this.f46410g.get(i4).floatValue(), 0.0f), 255.0f)) & 255);
                    bArr[i10 + 1] = (byte) (((int) Math.min(Math.max(this.f46412i.get(i4).floatValue() + f10 + this.f46410g.get(i4).floatValue(), 0.0f), 255.0f)) & 255);
                    bArr[i10] = (byte) (((int) Math.min(Math.max(f10 + this.f46411h.get(i4).floatValue() + this.f46410g.get(i4).floatValue(), 0.0f), 255.0f)) & 255);
                    bArr[i10 + 3] = -1;
                }
                this.f46404a[0] = GlUtil.loadTexture(ByteBuffer.wrap(bArr), 256, 1, this.f46404a[0]);
            }
            this.f46414k = false;
        }
    }

    private void a() {
        a(this.f46406c);
        b(this.f46407d);
        c(this.f46408e);
        d(this.f46409f);
        this.f46414k = true;
    }

    private ArrayList<Point> a(Point[] pointArr) {
        int i4;
        Point[] pointArr2 = pointArr;
        ArrayList<Double> b10 = b(pointArr);
        int size = b10.size();
        if (size < 1) {
            return null;
        }
        double[] dArr = new double[size];
        int i10 = 0;
        for (int i11 = 0; i11 < size; i11++) {
            dArr[i11] = b10.get(i11).doubleValue();
        }
        ArrayList<Point> arrayList = new ArrayList<>(size + 1);
        while (i10 < size - 1) {
            Point point = pointArr2[i10];
            int i12 = i10 + 1;
            Point point2 = pointArr2[i12];
            int i13 = point.x;
            while (true) {
                int i14 = point2.x;
                if (i13 < i14) {
                    double d4 = (i13 - i4) / (i14 - i4);
                    double d10 = 1.0d - d4;
                    double d11 = i14 - point.x;
                    int i15 = size;
                    Point point3 = point;
                    ArrayList<Point> arrayList2 = arrayList;
                    double d12 = (point.y * d10) + (point2.y * d4) + (((d11 * d11) / 6.0d) * (((((d10 * d10) * d10) - d10) * dArr[i10]) + ((((d4 * d4) * d4) - d4) * dArr[i12])));
                    if (d12 > 255.0d) {
                        d12 = 255.0d;
                    } else if (d12 < 0.0d) {
                        d12 = 0.0d;
                    }
                    arrayList = arrayList2;
                    arrayList.add(new Point(i13, (int) Math.round(d12)));
                    i13++;
                    size = i15;
                    point = point3;
                }
            }
            pointArr2 = pointArr;
            i10 = i12;
        }
        if (arrayList.size() == 255) {
            arrayList.add(pointArr[pointArr.length - 1]);
        }
        return arrayList;
    }

    private ArrayList<Double> b(Point[] pointArr) {
        int i4;
        int length = pointArr.length;
        char c10 = 1;
        if (length <= 1) {
            return null;
        }
        char c11 = 0;
        double[][] dArr = (double[][]) Array.newInstance(double.class, length, 3);
        double[] dArr2 = new double[length];
        dArr[0][1] = 1.0d;
        double d4 = 0.0d;
        dArr[0][0] = 0.0d;
        dArr[0][2] = 0.0d;
        int i10 = 1;
        while (true) {
            i4 = length - 1;
            if (i10 >= i4) {
                break;
            }
            Point point = pointArr[i10 - 1];
            Point point2 = pointArr[i10];
            int i11 = i10 + 1;
            Point point3 = pointArr[i11];
            double[] dArr3 = dArr[i10];
            int i12 = point2.x;
            int i13 = point.x;
            dArr3[c11] = (i12 - i13) / 6.0d;
            double[] dArr4 = dArr[i10];
            int i14 = point3.x;
            double[][] dArr5 = dArr;
            dArr4[c10] = (i14 - i13) / 3.0d;
            dArr5[i10][2] = (i14 - i12) / 6.0d;
            int i15 = point3.y;
            int i16 = point2.y;
            dArr2[i10] = ((i15 - i16) / (i14 - i12)) - ((i16 - point.y) / (i12 - i13));
            i10 = i11;
            dArr = dArr5;
            c10 = 1;
            c11 = 0;
            d4 = 0.0d;
        }
        double[][] dArr6 = dArr;
        double d10 = d4;
        char c12 = 0;
        dArr2[0] = d10;
        dArr2[i4] = d10;
        dArr6[i4][1] = 1.0d;
        dArr6[i4][0] = d10;
        dArr6[i4][2] = d10;
        int i17 = 1;
        while (i17 < length) {
            int i18 = i17 - 1;
            double d11 = dArr6[i17][c12] / dArr6[i18][1];
            double[] dArr7 = dArr6[i17];
            dArr7[1] = dArr7[1] - (dArr6[i18][2] * d11);
            dArr6[i17][0] = 0.0d;
            dArr2[i17] = dArr2[i17] - (d11 * dArr2[i18]);
            i17++;
            c12 = 0;
        }
        for (int i19 = length - 2; i19 >= 0; i19--) {
            int i20 = i19 + 1;
            double d12 = dArr6[i19][2] / dArr6[i20][1];
            double[] dArr8 = dArr6[i19];
            dArr8[1] = dArr8[1] - (dArr6[i20][0] * d12);
            dArr6[i19][2] = 0.0d;
            dArr2[i19] = dArr2[i19] - (d12 * dArr2[i20]);
        }
        ArrayList<Double> arrayList = new ArrayList<>(length);
        for (int i21 = 0; i21 < length; i21++) {
            arrayList.add(Double.valueOf(dArr2[i21] / dArr6[i21][1]));
        }
        return arrayList;
    }
}
