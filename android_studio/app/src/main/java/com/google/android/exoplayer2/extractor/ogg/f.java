package com.google.android.exoplayer2.extractor.ogg;

import com.google.android.exoplayer2.ParserException;
import com.google.android.exoplayer2.extractor.l;
import com.google.android.exoplayer2.extractor.n;
import com.google.android.exoplayer2.util.h0;
import java.io.IOException;

/* compiled from: OggPageHeader.java */
/* loaded from: classes2.dex */
final class f {

    /* renamed from: l  reason: collision with root package name */
    public static final int f22897l = 27;

    /* renamed from: m  reason: collision with root package name */
    public static final int f22898m = 255;

    /* renamed from: n  reason: collision with root package name */
    public static final int f22899n = 65025;

    /* renamed from: o  reason: collision with root package name */
    public static final int f22900o = 65307;

    /* renamed from: p  reason: collision with root package name */
    private static final int f22901p = 1332176723;

    /* renamed from: q  reason: collision with root package name */
    private static final int f22902q = 4;

    /* renamed from: a  reason: collision with root package name */
    public int f22903a;

    /* renamed from: b  reason: collision with root package name */
    public int f22904b;

    /* renamed from: c  reason: collision with root package name */
    public long f22905c;

    /* renamed from: d  reason: collision with root package name */
    public long f22906d;

    /* renamed from: e  reason: collision with root package name */
    public long f22907e;

    /* renamed from: f  reason: collision with root package name */
    public long f22908f;

    /* renamed from: g  reason: collision with root package name */
    public int f22909g;

    /* renamed from: h  reason: collision with root package name */
    public int f22910h;

    /* renamed from: i  reason: collision with root package name */
    public int f22911i;

    /* renamed from: j  reason: collision with root package name */
    public final int[] f22912j = new int[255];

    /* renamed from: k  reason: collision with root package name */
    private final h0 f22913k = new h0(255);

    public boolean a(l lVar, boolean z9) throws IOException {
        b();
        this.f22913k.O(27);
        if (n.a(lVar, this.f22913k.d(), 0, 27, z9) && this.f22913k.I() == 1332176723) {
            int G = this.f22913k.G();
            this.f22903a = G;
            if (G != 0) {
                if (z9) {
                    return false;
                }
                throw new ParserException("unsupported bit stream revision");
            }
            this.f22904b = this.f22913k.G();
            this.f22905c = this.f22913k.t();
            this.f22906d = this.f22913k.v();
            this.f22907e = this.f22913k.v();
            this.f22908f = this.f22913k.v();
            int G2 = this.f22913k.G();
            this.f22909g = G2;
            this.f22910h = G2 + 27;
            this.f22913k.O(G2);
            if (n.a(lVar, this.f22913k.d(), 0, this.f22909g, z9)) {
                for (int i4 = 0; i4 < this.f22909g; i4++) {
                    this.f22912j[i4] = this.f22913k.G();
                    this.f22911i += this.f22912j[i4];
                }
                return true;
            }
            return false;
        }
        return false;
    }

    public void b() {
        this.f22903a = 0;
        this.f22904b = 0;
        this.f22905c = 0L;
        this.f22906d = 0L;
        this.f22907e = 0L;
        this.f22908f = 0L;
        this.f22909g = 0;
        this.f22910h = 0;
        this.f22911i = 0;
    }

    public boolean c(l lVar) throws IOException {
        return d(lVar, -1L);
    }

    public boolean d(l lVar, long j4) throws IOException {
        int i4;
        com.google.android.exoplayer2.util.a.a(lVar.getPosition() == lVar.j());
        this.f22913k.O(4);
        while (true) {
            i4 = (j4 > (-1L) ? 1 : (j4 == (-1L) ? 0 : -1));
            if ((i4 == 0 || lVar.getPosition() + 4 < j4) && n.a(lVar, this.f22913k.d(), 0, 4, true)) {
                this.f22913k.S(0);
                if (this.f22913k.I() == 1332176723) {
                    lVar.h();
                    return true;
                }
                lVar.o(1);
            }
        }
        do {
            if (i4 != 0 && lVar.getPosition() >= j4) {
                break;
            }
        } while (lVar.skip(1) != -1);
        return false;
    }
}
