package com.google.android.exoplayer2.extractor.mp4;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.util.h0;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.List;

/* compiled from: Atom.java */
/* loaded from: classes2.dex */
abstract class a {
    public static final int A = 1681012275;
    public static final int A0 = 1718775137;
    public static final int B = 1835295092;
    public static final int B0 = 1935763834;
    public static final int C = 1836069985;
    public static final int C0 = 1935763823;
    public static final int D = 778924082;
    public static final int D0 = 1935828848;
    public static final int E = 778924083;
    public static final int E0 = 1936158820;
    public static final int F = 1835557169;
    public static final int F0 = 1970628964;
    public static final int G = 1835560241;
    public static final int G0 = 1936027235;
    public static final int H = 1835557187;
    public static final int H0 = 1885434736;
    public static final int I = 2002876005;
    public static final int I0 = 1414810956;
    public static final int J = 1819304813;
    public static final int J0 = 1831958048;
    public static final int K = 1936684916;
    public static final int K0 = 1836070006;
    public static final int L = 1633889587;
    public static final int L0 = 1937011827;
    public static final int M = 1684103987;
    public static final int M0 = 1937011571;
    public static final int N = 1700998451;
    public static final int N0 = 1668576371;
    public static final int O = 1684366131;
    public static final int O0 = 1937011555;
    public static final int P = 1633889588;
    public static final int P0 = 1937011578;
    public static final int Q = 1684103988;
    public static final int Q0 = 1937013298;
    public static final int R = 1685353315;
    public static final int R0 = 1937007471;
    public static final int S = 1685353320;
    public static final int S0 = 1668232756;
    public static final int T = 1685353324;
    public static final int T0 = 1954034535;
    public static final int U = 1685353317;
    public static final int U0 = 2004251764;
    public static final int V = 1684305011;
    public static final int V0 = 1937010800;
    public static final int W = 1952867444;
    public static final int W0 = 1664495672;
    public static final int X = 1952868452;
    public static final int X0 = 1935764850;
    public static final int Y = 1953654136;
    public static final int Y0 = 1935767394;
    public static final int Z = 1953658222;
    public static final int Z0 = 1969517665;

    /* renamed from: a0  reason: collision with root package name */
    public static final int f22560a0 = 1936286840;

    /* renamed from: a1  reason: collision with root package name */
    public static final int f22561a1 = 1835365473;

    /* renamed from: b  reason: collision with root package name */
    public static final int f22562b = 8;

    /* renamed from: b0  reason: collision with root package name */
    public static final int f22563b0 = 1836019574;

    /* renamed from: b1  reason: collision with root package name */
    public static final int f22564b1 = 1936553057;

    /* renamed from: c  reason: collision with root package name */
    public static final int f22565c = 12;

    /* renamed from: c0  reason: collision with root package name */
    public static final int f22566c0 = 1836086884;

    /* renamed from: c1  reason: collision with root package name */
    public static final int f22567c1 = 1935766900;

    /* renamed from: d  reason: collision with root package name */
    public static final int f22568d = 16;

    /* renamed from: d0  reason: collision with root package name */
    public static final int f22569d0 = 1836476516;

    /* renamed from: d1  reason: collision with root package name */
    public static final int f22570d1 = 1801812339;

    /* renamed from: e  reason: collision with root package name */
    public static final int f22571e = 1;

    /* renamed from: e0  reason: collision with root package name */
    public static final int f22572e0 = 1953653099;

    /* renamed from: e1  reason: collision with root package name */
    public static final int f22573e1 = 1768715124;

    /* renamed from: f  reason: collision with root package name */
    public static final int f22574f = 0;

    /* renamed from: f0  reason: collision with root package name */
    public static final int f22575f0 = 1835297121;

    /* renamed from: f1  reason: collision with root package name */
    public static final int f22576f1 = 1835360622;

    /* renamed from: g  reason: collision with root package name */
    public static final int f22577g = 1718909296;

    /* renamed from: g0  reason: collision with root package name */
    public static final int f22578g0 = 1835626086;

    /* renamed from: g1  reason: collision with root package name */
    public static final int f22579g1 = 1851878757;

    /* renamed from: h  reason: collision with root package name */
    public static final int f22580h = 1635148593;

    /* renamed from: h0  reason: collision with root package name */
    public static final int f22581h0 = 1937007212;

    /* renamed from: h1  reason: collision with root package name */
    public static final int f22582h1 = 1684108385;

    /* renamed from: i  reason: collision with root package name */
    public static final int f22583i = 1635148595;

    /* renamed from: i0  reason: collision with root package name */
    public static final int f22584i0 = 1702061171;

    /* renamed from: i1  reason: collision with root package name */
    public static final int f22585i1 = 1701671783;

    /* renamed from: j  reason: collision with root package name */
    public static final int f22586j = 1635148611;

    /* renamed from: j0  reason: collision with root package name */
    public static final int f22587j0 = 1836019558;

    /* renamed from: j1  reason: collision with root package name */
    public static final int f22588j1 = 1936995172;

    /* renamed from: k  reason: collision with root package name */
    public static final int f22589k = 1752589105;

    /* renamed from: k0  reason: collision with root package name */
    public static final int f22590k0 = 1953653094;

    /* renamed from: k1  reason: collision with root package name */
    public static final int f22591k1 = 1937126244;

    /* renamed from: l  reason: collision with root package name */
    public static final int f22592l = 1751479857;

    /* renamed from: l0  reason: collision with root package name */
    public static final int f22593l0 = 1836475768;

    /* renamed from: l1  reason: collision with root package name */
    public static final int f22594l1 = 1886547818;

    /* renamed from: m  reason: collision with root package name */
    public static final int f22595m = 1752589123;

    /* renamed from: m0  reason: collision with root package name */
    public static final int f22596m0 = 1835362404;

    /* renamed from: m1  reason: collision with root package name */
    public static final int f22597m1 = 1667329389;

    /* renamed from: n  reason: collision with root package name */
    public static final int f22598n = 1987063864;

    /* renamed from: n0  reason: collision with root package name */
    public static final int f22599n0 = 1953196132;

    /* renamed from: n1  reason: collision with root package name */
    public static final int f22600n1 = 1835365492;

    /* renamed from: o  reason: collision with root package name */
    public static final int f22601o = 1987063865;

    /* renamed from: o0  reason: collision with root package name */
    public static final int f22602o0 = 1701082227;

    /* renamed from: o1  reason: collision with root package name */
    public static final int f22603o1 = 1634492771;

    /* renamed from: p  reason: collision with root package name */
    public static final int f22604p = 1987076931;

    /* renamed from: p0  reason: collision with root package name */
    public static final int f22605p0 = 1701606260;

    /* renamed from: p1  reason: collision with root package name */
    public static final int f22606p1 = 1634492791;

    /* renamed from: q  reason: collision with root package name */
    public static final int f22607q = 1635135537;

    /* renamed from: q0  reason: collision with root package name */
    public static final int f22608q0 = 1835296868;

    /* renamed from: q1  reason: collision with root package name */
    public static final int f22609q1 = 1970037111;

    /* renamed from: r  reason: collision with root package name */
    public static final int f22610r = 1635135811;

    /* renamed from: r0  reason: collision with root package name */
    public static final int f22611r0 = 1751411826;

    /* renamed from: r1  reason: collision with root package name */
    public static final int f22612r1 = 1332770163;

    /* renamed from: s  reason: collision with root package name */
    public static final int f22613s = 1685479798;

    /* renamed from: s0  reason: collision with root package name */
    public static final int f22614s0 = 1937011556;

    /* renamed from: s1  reason: collision with root package name */
    public static final int f22615s1 = 1682927731;

    /* renamed from: t  reason: collision with root package name */
    public static final int f22616t = 1685479729;

    /* renamed from: t0  reason: collision with root package name */
    public static final int f22617t0 = 1886614376;

    /* renamed from: t1  reason: collision with root package name */
    public static final int f22618t1 = 1716281667;

    /* renamed from: u  reason: collision with root package name */
    public static final int f22619u = 1685481573;

    /* renamed from: u0  reason: collision with root package name */
    public static final int f22620u0 = 1936289382;

    /* renamed from: u1  reason: collision with root package name */
    public static final int f22621u1 = 1684425825;

    /* renamed from: v  reason: collision with root package name */
    public static final int f22622v = 1685481521;

    /* renamed from: v0  reason: collision with root package name */
    public static final int f22623v0 = 1935894637;

    /* renamed from: v1  reason: collision with root package name */
    public static final int f22624v1 = 1953984371;

    /* renamed from: w  reason: collision with root package name */
    public static final int f22625w = 1685480259;

    /* renamed from: w0  reason: collision with root package name */
    public static final int f22626w0 = 1935894633;

    /* renamed from: x  reason: collision with root package name */
    public static final int f22627x = 1685485123;

    /* renamed from: x0  reason: collision with root package name */
    public static final int f22628x0 = 1952804451;

    /* renamed from: y  reason: collision with root package name */
    public static final int f22629y = 1932670515;

    /* renamed from: y0  reason: collision with root package name */
    public static final int f22630y0 = 1701733238;

    /* renamed from: z  reason: collision with root package name */
    public static final int f22631z = 1211250227;

    /* renamed from: z0  reason: collision with root package name */
    public static final int f22632z0 = 1701733217;

    /* renamed from: a  reason: collision with root package name */
    public final int f22633a;

    /* compiled from: Atom.java */
    /* renamed from: com.google.android.exoplayer2.extractor.mp4.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    static final class C0165a extends a {

        /* renamed from: w1  reason: collision with root package name */
        public final long f22634w1;

        /* renamed from: x1  reason: collision with root package name */
        public final List<b> f22635x1;

        /* renamed from: y1  reason: collision with root package name */
        public final List<C0165a> f22636y1;

        public C0165a(int i4, long j4) {
            super(i4);
            this.f22634w1 = j4;
            this.f22635x1 = new ArrayList();
            this.f22636y1 = new ArrayList();
        }

        public void d(C0165a c0165a) {
            this.f22636y1.add(c0165a);
        }

        public void e(b bVar) {
            this.f22635x1.add(bVar);
        }

        public int f(int i4) {
            int size = this.f22635x1.size();
            int i10 = 0;
            for (int i11 = 0; i11 < size; i11++) {
                if (this.f22635x1.get(i11).f22633a == i4) {
                    i10++;
                }
            }
            int size2 = this.f22636y1.size();
            for (int i12 = 0; i12 < size2; i12++) {
                if (this.f22636y1.get(i12).f22633a == i4) {
                    i10++;
                }
            }
            return i10;
        }

        @Nullable
        public C0165a g(int i4) {
            int size = this.f22636y1.size();
            for (int i10 = 0; i10 < size; i10++) {
                C0165a c0165a = this.f22636y1.get(i10);
                if (c0165a.f22633a == i4) {
                    return c0165a;
                }
            }
            return null;
        }

        @Nullable
        public b h(int i4) {
            int size = this.f22635x1.size();
            for (int i10 = 0; i10 < size; i10++) {
                b bVar = this.f22635x1.get(i10);
                if (bVar.f22633a == i4) {
                    return bVar;
                }
            }
            return null;
        }

        @Override // com.google.android.exoplayer2.extractor.mp4.a
        public String toString() {
            String a10 = a.a(this.f22633a);
            String arrays = Arrays.toString(this.f22635x1.toArray());
            String arrays2 = Arrays.toString(this.f22636y1.toArray());
            StringBuilder sb = new StringBuilder(String.valueOf(a10).length() + 22 + String.valueOf(arrays).length() + String.valueOf(arrays2).length());
            sb.append(a10);
            sb.append(" leaves: ");
            sb.append(arrays);
            sb.append(" containers: ");
            sb.append(arrays2);
            return sb.toString();
        }
    }

    /* compiled from: Atom.java */
    /* loaded from: classes2.dex */
    static final class b extends a {

        /* renamed from: w1  reason: collision with root package name */
        public final h0 f22637w1;

        public b(int i4, h0 h0Var) {
            super(i4);
            this.f22637w1 = h0Var;
        }
    }

    public a(int i4) {
        this.f22633a = i4;
    }

    public static String a(int i4) {
        StringBuilder sb = new StringBuilder(4);
        sb.append((char) ((i4 >> 24) & 255));
        sb.append((char) ((i4 >> 16) & 255));
        sb.append((char) ((i4 >> 8) & 255));
        sb.append((char) (i4 & 255));
        return sb.toString();
    }

    public static int b(int i4) {
        return i4 & 16777215;
    }

    public static int c(int i4) {
        return (i4 >> 24) & 255;
    }

    public String toString() {
        return a(this.f22633a);
    }
}
