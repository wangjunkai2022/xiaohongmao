package com.googlecode.mp4parser.authoring.builder;

import com.coremedia.iso.boxes.l0;
import com.googlecode.mp4parser.util.k;
import com.googlecode.mp4parser.util.m;
import java.util.Arrays;
import java.util.Iterator;
import java.util.LinkedList;
import java.util.List;
import java.util.logging.Logger;

/* compiled from: SyncSampleIntersectFinderImpl.java */
/* loaded from: classes2.dex */
public class g implements c {

    /* renamed from: d  reason: collision with root package name */
    private static Logger f36024d = Logger.getLogger(g.class.getName());

    /* renamed from: a  reason: collision with root package name */
    private final int f36025a;

    /* renamed from: b  reason: collision with root package name */
    private com.googlecode.mp4parser.authoring.d f36026b;

    /* renamed from: c  reason: collision with root package name */
    private com.googlecode.mp4parser.authoring.h f36027c;

    public g(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar, int i4) {
        this.f36026b = dVar;
        this.f36027c = hVar;
        this.f36025a = i4;
    }

    private static long b(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        long j4 = 1;
        for (com.googlecode.mp4parser.authoring.h hVar2 : dVar.g()) {
            if (hVar2.getHandler().equals(hVar.getHandler()) && hVar2.a0().h() != hVar.a0().h()) {
                j4 = k.d(j4, hVar2.a0().h());
            }
        }
        return j4;
    }

    static String d(com.googlecode.mp4parser.authoring.h hVar) {
        com.coremedia.iso.boxes.sampleentry.a J = hVar.u().J();
        String type = J.getType();
        return (type.equals(com.coremedia.iso.boxes.sampleentry.h.D) || type.equals(com.coremedia.iso.boxes.sampleentry.c.N) || type.equals(com.coremedia.iso.boxes.sampleentry.h.D)) ? ((l0) m.c(J, "sinf/frma")).t() : type;
    }

    public static List<long[]> e(com.googlecode.mp4parser.authoring.d dVar, com.googlecode.mp4parser.authoring.h hVar) {
        long[] z9;
        LinkedList linkedList = new LinkedList();
        for (com.googlecode.mp4parser.authoring.h hVar2 : dVar.g()) {
            if (hVar2.getHandler().equals(hVar.getHandler()) && (z9 = hVar2.z()) != null && z9.length > 0) {
                linkedList.add(f(hVar2, dVar));
            }
        }
        return linkedList;
    }

    private static long[] f(com.googlecode.mp4parser.authoring.h hVar, com.googlecode.mp4parser.authoring.d dVar) {
        long[] z9 = hVar.z();
        long[] jArr = new long[z9.length];
        long b10 = b(dVar, hVar);
        long j4 = 0;
        int i4 = 0;
        int i10 = 1;
        while (true) {
            long j10 = i10;
            if (j10 > z9[z9.length - 1]) {
                return jArr;
            }
            if (j10 == z9[i4]) {
                jArr[i4] = j4 * b10;
                i4++;
            }
            j4 += hVar.c0()[i10 - 1];
            i10++;
        }
    }

    @Override // com.googlecode.mp4parser.authoring.builder.c
    public long[] a(com.googlecode.mp4parser.authoring.h hVar) {
        if ("vide".equals(hVar.getHandler())) {
            if (hVar.z() != null && hVar.z().length > 0) {
                List<long[]> e4 = e(this.f36026b, hVar);
                return c(hVar.z(), f(hVar, this.f36026b), hVar.a0().h(), (long[][]) e4.toArray(new long[e4.size()]));
            }
            throw new RuntimeException("Video Tracks need sync samples. Only tracks other than video may have no sync samples.");
        }
        int i4 = 0;
        if ("soun".equals(hVar.getHandler())) {
            if (this.f36027c == null) {
                for (com.googlecode.mp4parser.authoring.h hVar2 : this.f36026b.g()) {
                    if (hVar2.z() != null && "vide".equals(hVar2.getHandler()) && hVar2.z().length > 0) {
                        this.f36027c = hVar2;
                    }
                }
            }
            com.googlecode.mp4parser.authoring.h hVar3 = this.f36027c;
            if (hVar3 != null) {
                long[] a10 = a(hVar3);
                int size = this.f36027c.F().size();
                int length = a10.length;
                long[] jArr = new long[length];
                long j4 = 192000;
                Iterator<com.googlecode.mp4parser.authoring.h> it = this.f36026b.g().iterator();
                while (true) {
                    if (!it.hasNext()) {
                        break;
                    }
                    com.googlecode.mp4parser.authoring.h next = it.next();
                    if (d(hVar).equals(d(next))) {
                        com.coremedia.iso.boxes.sampleentry.c cVar = (com.coremedia.iso.boxes.sampleentry.c) next.u().J();
                        if (cVar.g0() < 192000) {
                            long g02 = cVar.g0();
                            double size2 = next.F().size() / size;
                            long j10 = next.c0()[0];
                            int i10 = 0;
                            while (i10 < length) {
                                jArr[i10] = (long) Math.ceil((a10[i10] - 1) * size2 * j10);
                                i10++;
                                a10 = a10;
                                length = length;
                                i4 = 0;
                            }
                            j4 = g02;
                        }
                    }
                }
                long j11 = hVar.c0()[i4];
                double g03 = ((com.coremedia.iso.boxes.sampleentry.c) hVar.u().J()).g0() / j4;
                if (g03 == Math.rint(g03)) {
                    while (i4 < length) {
                        jArr[i4] = (long) (((jArr[i4] * g03) / j11) + 1.0d);
                        i4++;
                    }
                    return jArr;
                }
                throw new RuntimeException("Sample rates must be a multiple of the lowest sample rate to create a correct file!");
            }
            throw new RuntimeException("There was absolutely no Track with sync samples. I can't work with that!");
        }
        for (com.googlecode.mp4parser.authoring.h hVar4 : this.f36026b.g()) {
            if (hVar4.z() != null && hVar4.z().length > 0) {
                long[] a11 = a(hVar4);
                int size3 = hVar4.F().size();
                int length2 = a11.length;
                long[] jArr2 = new long[length2];
                double size4 = hVar.F().size() / size3;
                for (int i11 = 0; i11 < length2; i11++) {
                    jArr2[i11] = ((long) Math.ceil((a11[i11] - 1) * size4)) + 1;
                }
                return jArr2;
            }
        }
        throw new RuntimeException("There was absolutely no Track with sync samples. I can't work with that!");
    }

    public long[] c(long[] jArr, long[] jArr2, long j4, long[]... jArr3) {
        LinkedList linkedList;
        LinkedList<Long> linkedList2 = new LinkedList();
        LinkedList linkedList3 = new LinkedList();
        for (int i4 = 0; i4 < jArr2.length; i4++) {
            boolean z9 = true;
            for (long[] jArr4 : jArr3) {
                z9 &= Arrays.binarySearch(jArr4, jArr2[i4]) >= 0;
            }
            if (z9) {
                linkedList2.add(Long.valueOf(jArr[i4]));
                linkedList3.add(Long.valueOf(jArr2[i4]));
            }
        }
        if (linkedList2.size() < jArr.length * 0.25d) {
            String str = "" + String.format("%5d - Common:  [", Integer.valueOf(linkedList2.size()));
            for (Long l10 : linkedList2) {
                long longValue = l10.longValue();
                str = String.valueOf(str) + String.format("%10d,", Long.valueOf(longValue));
            }
            f36024d.warning(String.valueOf(str) + "]");
            String str2 = "" + String.format("%5d - In    :  [", Integer.valueOf(jArr.length));
            for (long j10 : jArr) {
                str2 = String.valueOf(str2) + String.format("%10d,", Long.valueOf(j10));
            }
            f36024d.warning(String.valueOf(str2) + "]");
            f36024d.warning("There are less than 25% of common sync samples in the given track.");
            throw new RuntimeException("There are less than 25% of common sync samples in the given track.");
        }
        if (linkedList2.size() < jArr.length * 0.5d) {
            f36024d.fine("There are less than 50% of common sync samples in the given track. This is implausible but I'm ok to continue.");
        } else if (linkedList2.size() < jArr.length) {
            f36024d.finest("Common SyncSample positions vs. this tracks SyncSample positions: " + linkedList2.size() + " vs. " + jArr.length);
        }
        LinkedList linkedList4 = new LinkedList();
        if (this.f36025a > 0) {
            Iterator it = linkedList2.iterator();
            Iterator it2 = linkedList3.iterator();
            long j11 = -1;
            long j12 = -1;
            while (it.hasNext() && it2.hasNext()) {
                long longValue2 = ((Long) it.next()).longValue();
                long longValue3 = ((Long) it2.next()).longValue();
                if (j12 == j11 || (longValue3 - j12) / j4 >= this.f36025a) {
                    linkedList4.add(Long.valueOf(longValue2));
                    j12 = longValue3;
                }
                j11 = -1;
            }
            linkedList = linkedList4;
        } else {
            linkedList = linkedList2;
        }
        int size = linkedList.size();
        long[] jArr5 = new long[size];
        for (int i10 = 0; i10 < size; i10++) {
            jArr5[i10] = ((Long) linkedList.get(i10)).longValue();
        }
        return jArr5;
    }
}
