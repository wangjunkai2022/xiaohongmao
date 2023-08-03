package com.google.android.exoplayer2.extractor.mp4;

import com.google.android.exoplayer2.util.h0;
import java.io.IOException;

/* compiled from: Sniffer.java */
/* loaded from: classes2.dex */
final class n {

    /* renamed from: b  reason: collision with root package name */
    public static final int f22807b = 1751476579;

    /* renamed from: c  reason: collision with root package name */
    private static final int f22808c = 4096;

    /* renamed from: a  reason: collision with root package name */
    public static final int f22806a = 1903435808;

    /* renamed from: d  reason: collision with root package name */
    private static final int[] f22809d = {1769172845, 1769172786, 1769172787, 1769172788, 1769172789, 1769172790, 1769172793, a.f22580h, a.f22589k, a.f22592l, a.f22607q, 1836069937, 1836069938, 862401121, 862401122, 862417462, 862417718, 862414134, 862414646, 1295275552, 1295270176, 1714714144, 1801741417, 1295275600, f22806a, 1297305174, 1684175153, 1769172332, 1885955686};

    private n() {
    }

    private static boolean a(int i4, boolean z9) {
        if ((i4 >>> 8) == 3368816) {
            return true;
        }
        if (i4 == 1751476579 && z9) {
            return true;
        }
        for (int i10 : f22809d) {
            if (i10 == i4) {
                return true;
            }
        }
        return false;
    }

    public static boolean b(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        return c(lVar, true, false);
    }

    private static boolean c(com.google.android.exoplayer2.extractor.l lVar, boolean z9, boolean z10) throws IOException {
        boolean z11;
        long length = lVar.getLength();
        long j4 = 4096;
        long j10 = -1;
        int i4 = (length > (-1L) ? 1 : (length == (-1L) ? 0 : -1));
        if (i4 != 0 && length <= 4096) {
            j4 = length;
        }
        int i10 = (int) j4;
        h0 h0Var = new h0(64);
        boolean z12 = false;
        int i11 = 0;
        boolean z13 = false;
        while (i11 < i10) {
            h0Var.O(8);
            if (!lVar.g(h0Var.d(), z12 ? 1 : 0, 8, true)) {
                break;
            }
            long I = h0Var.I();
            int o9 = h0Var.o();
            int i12 = 16;
            if (I == 1) {
                lVar.s(h0Var.d(), 8, 8);
                h0Var.R(16);
                I = h0Var.z();
            } else {
                if (I == 0) {
                    long length2 = lVar.getLength();
                    if (length2 != j10) {
                        I = (length2 - lVar.j()) + 8;
                    }
                }
                i12 = 8;
            }
            long j11 = i12;
            if (I < j11) {
                return z12;
            }
            i11 += i12;
            if (o9 == 1836019574) {
                i10 += (int) I;
                if (i4 != 0 && i10 > length) {
                    i10 = (int) length;
                }
                j10 = -1;
            } else if (o9 == 1836019558 || o9 == 1836475768) {
                z11 = true;
                break;
            } else {
                long j12 = length;
                if ((i11 + I) - j11 >= i10) {
                    break;
                }
                int i13 = (int) (I - j11);
                i11 += i13;
                if (o9 == 1718909296) {
                    if (i13 < 8) {
                        return false;
                    }
                    h0Var.O(i13);
                    lVar.s(h0Var.d(), 0, i13);
                    int i14 = i13 / 4;
                    int i15 = 0;
                    while (true) {
                        if (i15 >= i14) {
                            break;
                        }
                        if (i15 == 1) {
                            h0Var.T(4);
                        } else if (a(h0Var.o(), z10)) {
                            z13 = true;
                            break;
                        }
                        i15++;
                    }
                    if (!z13) {
                        return false;
                    }
                } else if (i13 != 0) {
                    lVar.k(i13);
                }
                length = j12;
                j10 = -1;
                z12 = false;
            }
        }
        z11 = false;
        return z13 && z9 == z11;
    }

    public static boolean d(com.google.android.exoplayer2.extractor.l lVar) throws IOException {
        return c(lVar, false, false);
    }

    public static boolean e(com.google.android.exoplayer2.extractor.l lVar, boolean z9) throws IOException {
        return c(lVar, false, z9);
    }
}
