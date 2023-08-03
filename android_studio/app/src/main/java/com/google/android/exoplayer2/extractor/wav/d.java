package com.google.android.exoplayer2.extractor.wav;

import android.util.Pair;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.util.h0;
import com.google.android.exoplayer2.util.w;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;

/* compiled from: WavHeaderReader.java */
/* loaded from: classes2.dex */
final class d {

    /* renamed from: a  reason: collision with root package name */
    private static final String f23530a = "WavHeaderReader";

    /* compiled from: WavHeaderReader.java */
    /* loaded from: classes2.dex */
    private static final class a {

        /* renamed from: c  reason: collision with root package name */
        public static final int f23531c = 8;

        /* renamed from: a  reason: collision with root package name */
        public final int f23532a;

        /* renamed from: b  reason: collision with root package name */
        public final long f23533b;

        private a(int i4, long j4) {
            this.f23532a = i4;
            this.f23533b = j4;
        }

        public static a a(l lVar, h0 h0Var) throws IOException {
            lVar.s(h0Var.d(), 0, 8);
            h0Var.S(0);
            return new a(h0Var.o(), h0Var.v());
        }
    }

    private d() {
    }

    @Nullable
    public static c a(l lVar) throws IOException {
        byte[] bArr;
        com.google.android.exoplayer2.util.a.g(lVar);
        h0 h0Var = new h0(16);
        if (a.a(lVar, h0Var).f23532a != 1380533830) {
            return null;
        }
        lVar.s(h0Var.d(), 0, 4);
        h0Var.S(0);
        int o9 = h0Var.o();
        if (o9 != 1463899717) {
            StringBuilder sb = new StringBuilder(36);
            sb.append("Unsupported RIFF format: ");
            sb.append(o9);
            w.d(f23530a, sb.toString());
            return null;
        }
        a a10 = a.a(lVar, h0Var);
        while (a10.f23532a != 1718449184) {
            lVar.k((int) a10.f23533b);
            a10 = a.a(lVar, h0Var);
        }
        com.google.android.exoplayer2.util.a.i(a10.f23533b >= 16);
        lVar.s(h0Var.d(), 0, 16);
        h0Var.S(0);
        int y9 = h0Var.y();
        int y10 = h0Var.y();
        int x9 = h0Var.x();
        int x10 = h0Var.x();
        int y11 = h0Var.y();
        int y12 = h0Var.y();
        int i4 = ((int) a10.f23533b) - 16;
        if (i4 > 0) {
            byte[] bArr2 = new byte[i4];
            lVar.s(bArr2, 0, i4);
            bArr = bArr2;
        } else {
            bArr = z0.f27748f;
        }
        return new c(y9, y10, x9, x10, y11, y12, bArr);
    }

    public static Pair<Long, Long> b(l lVar) throws IOException {
        com.google.android.exoplayer2.util.a.g(lVar);
        lVar.h();
        h0 h0Var = new h0(8);
        a a10 = a.a(lVar, h0Var);
        while (true) {
            int i4 = a10.f23532a;
            if (i4 != 1684108385) {
                if (i4 != 1380533830 && i4 != 1718449184) {
                    StringBuilder sb = new StringBuilder(39);
                    sb.append("Ignoring unknown WAV chunk: ");
                    sb.append(i4);
                    w.n(f23530a, sb.toString());
                }
                long j4 = a10.f23533b + 8;
                if (a10.f23532a == 1380533830) {
                    j4 = 12;
                }
                if (j4 <= 2147483647L) {
                    lVar.o((int) j4);
                    a10 = a.a(lVar, h0Var);
                } else {
                    int i10 = a10.f23532a;
                    StringBuilder sb2 = new StringBuilder(51);
                    sb2.append("Chunk is too large (~2GB+) to skip; id: ");
                    sb2.append(i10);
                    throw new ParserException(sb2.toString());
                }
            } else {
                lVar.o(8);
                long position = lVar.getPosition();
                long j10 = a10.f23533b + position;
                long length = lVar.getLength();
                if (length != -1 && j10 > length) {
                    StringBuilder sb3 = new StringBuilder(69);
                    sb3.append("Data exceeds input length: ");
                    sb3.append(j10);
                    sb3.append(", ");
                    sb3.append(length);
                    w.n(f23530a, sb3.toString());
                    j10 = length;
                }
                return Pair.create(Long.valueOf(position), Long.valueOf(j10));
            }
        }
    }
}
