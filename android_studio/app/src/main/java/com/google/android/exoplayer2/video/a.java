package com.google.android.exoplayer2.video;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.b0;
import com.google.android.exoplayer2.util.h0;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AvcConfig.java */
/* loaded from: classes2.dex */
public final class a {

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f27852a;

    /* renamed from: b  reason: collision with root package name */
    public final int f27853b;

    /* renamed from: c  reason: collision with root package name */
    public final int f27854c;

    /* renamed from: d  reason: collision with root package name */
    public final int f27855d;

    /* renamed from: e  reason: collision with root package name */
    public final float f27856e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public final String f27857f;

    private a(List<byte[]> list, int i4, int i10, int i11, float f10, @Nullable String str) {
        this.f27852a = list;
        this.f27853b = i4;
        this.f27854c = i10;
        this.f27855d = i11;
        this.f27856e = f10;
        this.f27857f = str;
    }

    private static byte[] a(h0 h0Var) {
        int M = h0Var.M();
        int e4 = h0Var.e();
        h0Var.T(M);
        return com.google.android.exoplayer2.util.e.d(h0Var.d(), e4, M);
    }

    public static a b(h0 h0Var) throws ParserException {
        String str;
        int i4;
        float f10;
        try {
            h0Var.T(4);
            int G = (h0Var.G() & 3) + 1;
            if (G != 3) {
                ArrayList arrayList = new ArrayList();
                int G2 = h0Var.G() & 31;
                for (int i10 = 0; i10 < G2; i10++) {
                    arrayList.add(a(h0Var));
                }
                int G3 = h0Var.G();
                for (int i11 = 0; i11 < G3; i11++) {
                    arrayList.add(a(h0Var));
                }
                int i12 = -1;
                if (G2 > 0) {
                    b0.b i13 = com.google.android.exoplayer2.util.b0.i((byte[]) arrayList.get(0), G, ((byte[]) arrayList.get(0)).length);
                    int i14 = i13.f27509e;
                    int i15 = i13.f27510f;
                    float f11 = i13.f27511g;
                    str = com.google.android.exoplayer2.util.e.a(i13.f27505a, i13.f27506b, i13.f27507c);
                    i12 = i14;
                    i4 = i15;
                    f10 = f11;
                } else {
                    str = null;
                    i4 = -1;
                    f10 = 1.0f;
                }
                return new a(arrayList, G, i12, i4, f10, str);
            }
            throw new IllegalStateException();
        } catch (ArrayIndexOutOfBoundsException e4) {
            throw new ParserException("Error parsing AVC config", e4);
        }
    }
}
