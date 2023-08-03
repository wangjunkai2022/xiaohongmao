package com.coremedia.iso.boxes.fragment;

import com.coremedia.iso.boxes.r0;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MovieFragmentBox.java */
/* loaded from: classes.dex */
public class c extends com.googlecode.mp4parser.b {

    /* renamed from: n  reason: collision with root package name */
    public static final String f10036n = "moof";

    public c() {
        super(f10036n);
    }

    public com.googlecode.mp4parser.e J() {
        return this.f36945b;
    }

    public List<Long> K(r0 r0Var) {
        ArrayList arrayList = new ArrayList();
        long j4 = 1;
        for (r0.a aVar : r0Var.v()) {
            if (aVar.c() == 2) {
                arrayList.add(Long.valueOf(j4));
            }
            j4++;
        }
        return arrayList;
    }

    public int L() {
        return q(k.class, false).size();
    }

    public List<l> M() {
        return q(l.class, true);
    }

    public long[] W() {
        List q9 = q(k.class, false);
        long[] jArr = new long[q9.size()];
        for (int i4 = 0; i4 < q9.size(); i4++) {
            jArr[i4] = ((k) q9.get(i4)).J().A();
        }
        return jArr;
    }

    public List<n> X() {
        return q(n.class, true);
    }
}
