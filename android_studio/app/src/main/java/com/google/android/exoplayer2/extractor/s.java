package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.u;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.flac.PictureFrame;
import java.io.IOException;
import java.util.Arrays;
import java.util.Collections;
import java.util.List;

/* compiled from: FlacMetadataReader.java */
/* loaded from: classes2.dex */
public final class s {

    /* renamed from: a  reason: collision with root package name */
    private static final int f22964a = 1716281667;

    /* renamed from: b  reason: collision with root package name */
    private static final int f22965b = 16382;

    /* renamed from: c  reason: collision with root package name */
    private static final int f22966c = 18;

    /* compiled from: FlacMetadataReader.java */
    /* loaded from: classes2.dex */
    public static final class a {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        public u f22967a;

        public a(@Nullable u uVar) {
            this.f22967a = uVar;
        }
    }

    private s() {
    }

    public static boolean a(l lVar) throws IOException {
        com.google.android.exoplayer2.util.h0 h0Var = new com.google.android.exoplayer2.util.h0(4);
        lVar.s(h0Var.d(), 0, 4);
        return h0Var.I() == 1716281667;
    }

    public static int b(l lVar) throws IOException {
        lVar.h();
        com.google.android.exoplayer2.util.h0 h0Var = new com.google.android.exoplayer2.util.h0(2);
        lVar.s(h0Var.d(), 0, 2);
        int M = h0Var.M();
        if ((M >> 2) == f22965b) {
            lVar.h();
            return M;
        }
        lVar.h();
        throw new ParserException("First frame does not start with sync code.");
    }

    @Nullable
    public static Metadata c(l lVar, boolean z9) throws IOException {
        Metadata a10 = new x().a(lVar, z9 ? null : com.google.android.exoplayer2.metadata.id3.b.f24126b);
        if (a10 == null || a10.length() == 0) {
            return null;
        }
        return a10;
    }

    @Nullable
    public static Metadata d(l lVar, boolean z9) throws IOException {
        lVar.h();
        long j4 = lVar.j();
        Metadata c10 = c(lVar, z9);
        lVar.o((int) (lVar.j() - j4));
        return c10;
    }

    public static boolean e(l lVar, a aVar) throws IOException {
        lVar.h();
        com.google.android.exoplayer2.util.g0 g0Var = new com.google.android.exoplayer2.util.g0(new byte[4]);
        lVar.s(g0Var.f27547a, 0, 4);
        boolean g4 = g0Var.g();
        int h4 = g0Var.h(7);
        int h10 = g0Var.h(24) + 4;
        if (h4 == 0) {
            aVar.f22967a = i(lVar);
        } else {
            u uVar = aVar.f22967a;
            if (uVar == null) {
                throw new IllegalArgumentException();
            }
            if (h4 == 3) {
                aVar.f22967a = uVar.c(g(lVar, h10));
            } else if (h4 == 4) {
                aVar.f22967a = uVar.d(k(lVar, h10));
            } else if (h4 == 6) {
                aVar.f22967a = uVar.b(Collections.singletonList(f(lVar, h10)));
            } else {
                lVar.o(h10);
            }
        }
        return g4;
    }

    private static PictureFrame f(l lVar, int i4) throws IOException {
        com.google.android.exoplayer2.util.h0 h0Var = new com.google.android.exoplayer2.util.h0(i4);
        lVar.readFully(h0Var.d(), 0, i4);
        h0Var.T(4);
        int o9 = h0Var.o();
        String E = h0Var.E(h0Var.o(), com.google.common.base.e.f32188a);
        String D = h0Var.D(h0Var.o());
        int o10 = h0Var.o();
        int o11 = h0Var.o();
        int o12 = h0Var.o();
        int o13 = h0Var.o();
        int o14 = h0Var.o();
        byte[] bArr = new byte[o14];
        h0Var.k(bArr, 0, o14);
        return new PictureFrame(o9, E, D, o10, o11, o12, o13, bArr);
    }

    private static u.a g(l lVar, int i4) throws IOException {
        com.google.android.exoplayer2.util.h0 h0Var = new com.google.android.exoplayer2.util.h0(i4);
        lVar.readFully(h0Var.d(), 0, i4);
        return h(h0Var);
    }

    public static u.a h(com.google.android.exoplayer2.util.h0 h0Var) {
        h0Var.T(1);
        int J = h0Var.J();
        long e4 = h0Var.e() + J;
        int i4 = J / 18;
        long[] jArr = new long[i4];
        long[] jArr2 = new long[i4];
        int i10 = 0;
        while (true) {
            if (i10 >= i4) {
                break;
            }
            long z9 = h0Var.z();
            if (z9 == -1) {
                jArr = Arrays.copyOf(jArr, i10);
                jArr2 = Arrays.copyOf(jArr2, i10);
                break;
            }
            jArr[i10] = z9;
            jArr2[i10] = h0Var.z();
            h0Var.T(2);
            i10++;
        }
        h0Var.T((int) (e4 - h0Var.e()));
        return new u.a(jArr, jArr2);
    }

    private static u i(l lVar) throws IOException {
        byte[] bArr = new byte[38];
        lVar.readFully(bArr, 0, 38);
        return new u(bArr, 4);
    }

    public static void j(l lVar) throws IOException {
        com.google.android.exoplayer2.util.h0 h0Var = new com.google.android.exoplayer2.util.h0(4);
        lVar.readFully(h0Var.d(), 0, 4);
        if (h0Var.I() != 1716281667) {
            throw new ParserException("Failed to read FLAC stream marker.");
        }
    }

    private static List<String> k(l lVar, int i4) throws IOException {
        com.google.android.exoplayer2.util.h0 h0Var = new com.google.android.exoplayer2.util.h0(i4);
        lVar.readFully(h0Var.d(), 0, i4);
        h0Var.T(4);
        return Arrays.asList(g0.i(h0Var, false, false).f22263b);
    }
}
