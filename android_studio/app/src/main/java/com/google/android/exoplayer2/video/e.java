package com.google.android.exoplayer2.video;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.i0;
import java.util.Collections;
import java.util.List;

/* compiled from: HevcConfig.java */
/* loaded from: classes2.dex */
public final class e {

    /* renamed from: d  reason: collision with root package name */
    private static final int f27908d = 33;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    public final List<byte[]> f27909a;

    /* renamed from: b  reason: collision with root package name */
    public final int f27910b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public final String f27911c;

    private e(@Nullable List<byte[]> list, int i4, @Nullable String str) {
        this.f27909a = list;
        this.f27910b = i4;
        this.f27911c = str;
    }

    public static e a(h0 h0Var) throws ParserException {
        try {
            h0Var.T(21);
            int G = h0Var.G() & 3;
            int G2 = h0Var.G();
            int e4 = h0Var.e();
            int i4 = 0;
            for (int i10 = 0; i10 < G2; i10++) {
                h0Var.T(1);
                int M = h0Var.M();
                for (int i11 = 0; i11 < M; i11++) {
                    int M2 = h0Var.M();
                    i4 += M2 + 4;
                    h0Var.T(M2);
                }
            }
            h0Var.S(e4);
            byte[] bArr = new byte[i4];
            String str = null;
            int i12 = 0;
            for (int i13 = 0; i13 < G2; i13++) {
                int G3 = h0Var.G() & 127;
                int M3 = h0Var.M();
                for (int i14 = 0; i14 < M3; i14++) {
                    int M4 = h0Var.M();
                    byte[] bArr2 = com.google.android.exoplayer2.util.b0.f27494b;
                    System.arraycopy(bArr2, 0, bArr, i12, bArr2.length);
                    int length = i12 + bArr2.length;
                    System.arraycopy(h0Var.d(), h0Var.e(), bArr, length, M4);
                    if (G3 == 33 && i14 == 0) {
                        str = com.google.android.exoplayer2.util.e.c(new i0(bArr, length, length + M4));
                    }
                    i12 = length + M4;
                    h0Var.T(M4);
                }
            }
            return new e(i4 == 0 ? null : Collections.singletonList(bArr), G + 1, str);
        } catch (ArrayIndexOutOfBoundsException e10) {
            throw new ParserException("Error parsing HEVC config", e10);
        }
    }
}
