package com.airbnb.lottie.parser;

import android.graphics.Color;
import androidx.annotation.IntRange;
import com.airbnb.lottie.parser.moshi.JsonReader;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.util.ArrayList;
import java.util.List;

/* compiled from: GradientColorParser.java */
/* loaded from: classes.dex */
public class l implements k0<com.airbnb.lottie.model.content.c> {

    /* renamed from: a  reason: collision with root package name */
    private int f4645a;

    public l(int i4) {
        this.f4645a = i4;
    }

    private void b(com.airbnb.lottie.model.content.c cVar, List<Float> list) {
        int i4 = this.f4645a * 4;
        if (list.size() <= i4) {
            return;
        }
        int size = (list.size() - i4) / 2;
        double[] dArr = new double[size];
        double[] dArr2 = new double[size];
        int i10 = 0;
        while (i4 < list.size()) {
            if (i4 % 2 == 0) {
                dArr[i10] = list.get(i4).floatValue();
            } else {
                dArr2[i10] = list.get(i4).floatValue();
                i10++;
            }
            i4++;
        }
        for (int i11 = 0; i11 < cVar.c(); i11++) {
            int i12 = cVar.a()[i11];
            cVar.a()[i11] = Color.argb(c(cVar.b()[i11], dArr, dArr2), Color.red(i12), Color.green(i12), Color.blue(i12));
        }
    }

    @IntRange(from = 0, to = KSYMediaMeta.AV_CH_LAYOUT_7POINT1_WIDE_BACK)
    private int c(double d4, double[] dArr, double[] dArr2) {
        double d10;
        int i4 = 1;
        while (true) {
            if (i4 < dArr.length) {
                int i10 = i4 - 1;
                double d11 = dArr[i10];
                double d12 = dArr[i4];
                if (dArr[i4] >= d4) {
                    d10 = com.airbnb.lottie.utils.g.i(dArr2[i10], dArr2[i4], (d4 - d11) / (d12 - d11));
                    break;
                }
                i4++;
            } else {
                d10 = dArr2[dArr2.length - 1];
                break;
            }
        }
        return (int) (d10 * 255.0d);
    }

    @Override // com.airbnb.lottie.parser.k0
    /* renamed from: d */
    public com.airbnb.lottie.model.content.c a(JsonReader jsonReader, float f10) throws IOException {
        ArrayList arrayList = new ArrayList();
        boolean z9 = jsonReader.D() == JsonReader.Token.BEGIN_ARRAY;
        if (z9) {
            jsonReader.b();
        }
        while (jsonReader.k()) {
            arrayList.add(Float.valueOf((float) jsonReader.q()));
        }
        if (z9) {
            jsonReader.h();
        }
        if (this.f4645a == -1) {
            this.f4645a = arrayList.size() / 4;
        }
        int i4 = this.f4645a;
        float[] fArr = new float[i4];
        int[] iArr = new int[i4];
        int i10 = 0;
        int i11 = 0;
        for (int i12 = 0; i12 < this.f4645a * 4; i12++) {
            int i13 = i12 / 4;
            double floatValue = arrayList.get(i12).floatValue();
            int i14 = i12 % 4;
            if (i14 == 0) {
                fArr[i13] = (float) floatValue;
            } else if (i14 == 1) {
                i10 = (int) (floatValue * 255.0d);
            } else if (i14 == 2) {
                i11 = (int) (floatValue * 255.0d);
            } else if (i14 == 3) {
                iArr[i13] = Color.argb(255, i10, i11, (int) (floatValue * 255.0d));
            }
        }
        com.airbnb.lottie.model.content.c cVar = new com.airbnb.lottie.model.content.c(fArr, iArr);
        b(cVar, arrayList);
        return cVar;
    }
}
