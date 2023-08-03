package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.d1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import java.io.IOException;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.LinkedList;
import java.util.List;
import java.util.ListIterator;

/* compiled from: CroppedTrack.java */
/* loaded from: classes2.dex */
public class l extends com.googlecode.mp4parser.authoring.a {

    /* renamed from: g  reason: collision with root package name */
    static final /* synthetic */ boolean f36313g = false;

    /* renamed from: d  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f36314d;

    /* renamed from: e  reason: collision with root package name */
    private int f36315e;

    /* renamed from: f  reason: collision with root package name */
    private int f36316f;

    public l(com.googlecode.mp4parser.authoring.h hVar, long j4, long j10) {
        super("crop(" + hVar.getName() + ")");
        this.f36314d = hVar;
        this.f36315e = (int) j4;
        this.f36316f = (int) j10;
    }

    static List<i.a> a(List<i.a> list, long j4, long j10) {
        i.a next;
        if (list == null || list.isEmpty()) {
            return null;
        }
        long j11 = 0;
        ListIterator<i.a> listIterator = list.listIterator();
        ArrayList arrayList = new ArrayList();
        while (true) {
            next = listIterator.next();
            if (next.a() + j11 > j4) {
                break;
            }
            j11 += next.a();
        }
        if (next.a() + j11 >= j10) {
            arrayList.add(new i.a((int) (j10 - j4), next.b()));
            return arrayList;
        }
        arrayList.add(new i.a((int) ((next.a() + j11) - j4), next.b()));
        int a10 = next.a();
        while (true) {
            j11 += a10;
            if (!listIterator.hasNext()) {
                break;
            }
            next = listIterator.next();
            if (next.a() + j11 >= j10) {
                break;
            }
            arrayList.add(next);
            a10 = next.a();
        }
        arrayList.add(new i.a((int) (j10 - j11), next.b()));
        return arrayList;
    }

    static List<d1.a> b(List<d1.a> list, long j4, long j10) {
        d1.a next;
        if (list == null || list.isEmpty()) {
            return null;
        }
        long j11 = 0;
        ListIterator<d1.a> listIterator = list.listIterator();
        LinkedList linkedList = new LinkedList();
        while (true) {
            next = listIterator.next();
            if (next.a() + j11 > j4) {
                break;
            }
            j11 += next.a();
        }
        if (next.a() + j11 >= j10) {
            linkedList.add(new d1.a(j10 - j4, next.b()));
            return linkedList;
        }
        linkedList.add(new d1.a((next.a() + j11) - j4, next.b()));
        long a10 = next.a();
        while (true) {
            j11 += a10;
            if (!listIterator.hasNext()) {
                break;
            }
            next = listIterator.next();
            if (next.a() + j11 >= j10) {
                break;
            }
            linkedList.add(next);
            a10 = next.a();
        }
        linkedList.add(new d1.a(j10 - j11, next.b()));
        return linkedList;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return this.f36314d.B();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36314d.F().subList(this.f36315e, this.f36316f);
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        return this.f36314d.a0();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public synchronized long[] c0() {
        long[] jArr;
        int i4 = this.f36316f - this.f36315e;
        jArr = new long[i4];
        System.arraycopy(this.f36314d.c0(), this.f36315e, jArr, 0, i4);
        return jArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36314d.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f36314d.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> m0() {
        if (this.f36314d.m0() == null || this.f36314d.m0().isEmpty()) {
            return null;
        }
        return this.f36314d.m0().subList(this.f36315e, this.f36316f);
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<i.a> o() {
        return a(this.f36314d.o(), this.f36315e, this.f36316f);
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36314d.u();
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public synchronized long[] z() {
        if (this.f36314d.z() != null) {
            long[] z9 = this.f36314d.z();
            int length = z9.length;
            int i4 = 0;
            while (i4 < z9.length && z9[i4] < this.f36315e) {
                i4++;
            }
            while (length > 0 && this.f36316f < z9[length - 1]) {
                length--;
            }
            long[] copyOfRange = Arrays.copyOfRange(this.f36314d.z(), i4, length);
            for (int i10 = 0; i10 < copyOfRange.length; i10++) {
                copyOfRange[i10] = copyOfRange[i10] - this.f36315e;
            }
            return copyOfRange;
        }
        return null;
    }
}
