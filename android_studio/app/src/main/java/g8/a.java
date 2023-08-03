package g8;

import android.text.TextUtils;
import master.flame.danmaku.danmaku.model.android.f;
import master.flame.danmaku.danmaku.model.android.g;
import master.flame.danmaku.danmaku.model.d;
import master.flame.danmaku.danmaku.model.n;

/* compiled from: DanmakuUtils.java */
/* loaded from: classes4.dex */
public class a {
    public static f a(d dVar, n nVar, f fVar, int i4) {
        if (fVar == null) {
            fVar = new f();
        }
        fVar.g((int) Math.ceil(dVar.f87293p), (int) Math.ceil(dVar.f87294q), nVar.e(), false, i4);
        g gVar = fVar.get();
        if (gVar != null) {
            ((master.flame.danmaku.danmaku.model.b) nVar).v(dVar, gVar.f87259a, 0.0f, 0.0f, true);
            if (nVar.isHardwareAccelerated()) {
                gVar.h(nVar.getWidth(), nVar.getHeight(), nVar.g(), nVar.p());
            }
        }
        return fVar;
    }

    private static boolean b(int i4, int i10, float[] fArr, float[] fArr2) {
        if (i4 != i10) {
            return false;
        }
        return i4 == 1 ? fArr2[0] < fArr[2] : i4 == 6 && fArr2[2] > fArr[0];
    }

    private static boolean c(n nVar, d dVar, d dVar2, long j4) {
        float[] h4 = dVar.h(nVar, j4);
        float[] h10 = dVar2.h(nVar, j4);
        if (h4 == null || h10 == null) {
            return false;
        }
        return b(dVar.n(), dVar2.n(), h4, h10);
    }

    public static final int d(d dVar, d dVar2) {
        int i4;
        if (dVar == dVar2) {
            return 0;
        }
        if (dVar == null) {
            return -1;
        }
        if (dVar2 != null && dVar.k() - dVar2.k() <= 0) {
            if (i4 < 0) {
                return -1;
            }
            int i10 = dVar.f87296s - dVar2.f87296s;
            if (i10 != 0) {
                return i10 < 0 ? -1 : 1;
            }
            return dVar.hashCode() - dVar.hashCode();
        }
        return 1;
    }

    public static void e(d dVar, CharSequence charSequence) {
        dVar.f87280c = charSequence;
        if (TextUtils.isEmpty(charSequence) || !charSequence.toString().contains(d.M)) {
            return;
        }
        String[] split = String.valueOf(dVar.f87280c).split(d.M, -1);
        if (split.length > 1) {
            dVar.f87281d = split;
        }
    }

    public static int f(int i4, int i10, int i11) {
        return i4 * i10 * i11;
    }

    public static final boolean g(d dVar, d dVar2) {
        if (dVar == dVar2) {
            return false;
        }
        CharSequence charSequence = dVar.f87280c;
        CharSequence charSequence2 = dVar2.f87280c;
        if (charSequence == charSequence2) {
            return true;
        }
        return charSequence != null && charSequence.equals(charSequence2);
    }

    public static final boolean h(n nVar, d dVar) {
        return nVar.isHardwareAccelerated() && (dVar.f87293p > ((float) nVar.g()) || dVar.f87294q > ((float) nVar.p()));
    }

    public static boolean i(n nVar, d dVar, d dVar2, long j4, long j10) {
        int n9 = dVar.n();
        if (n9 == dVar2.n() && !dVar.u()) {
            long b10 = dVar2.b() - dVar.b();
            if (b10 <= 0) {
                return true;
            }
            if (Math.abs(b10) >= j4 || dVar.y() || dVar2.y()) {
                return false;
            }
            return n9 == 5 || n9 == 4 || c(nVar, dVar, dVar2, j10) || c(nVar, dVar, dVar2, dVar.b() + dVar.f());
        }
        return false;
    }
}
