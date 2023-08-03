package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.boxes.sampleentry.g;
import com.googlecode.mp4parser.boxes.threegpp26245.a;
import java.io.ByteArrayOutputStream;
import java.io.DataOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.Collections;
import java.util.Date;
import java.util.LinkedList;
import java.util.List;

/* compiled from: TextTrackImpl.java */
/* loaded from: classes2.dex */
public class u extends com.googlecode.mp4parser.authoring.a {

    /* renamed from: d  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.i f36428d;

    /* renamed from: e  reason: collision with root package name */
    s0 f36429e;

    /* renamed from: f  reason: collision with root package name */
    List<a> f36430f;

    /* compiled from: TextTrackImpl.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        long f36431a;

        /* renamed from: b  reason: collision with root package name */
        long f36432b;

        /* renamed from: c  reason: collision with root package name */
        String f36433c;

        public a(long j4, long j10, String str) {
            this.f36431a = j4;
            this.f36432b = j10;
            this.f36433c = str;
        }

        public long a() {
            return this.f36431a;
        }

        public String b() {
            return this.f36433c;
        }

        public long c() {
            return this.f36432b;
        }
    }

    public u() {
        super("subtiles");
        this.f36428d = new com.googlecode.mp4parser.authoring.i();
        this.f36430f = new LinkedList();
        this.f36429e = new s0();
        com.coremedia.iso.boxes.sampleentry.g gVar = new com.coremedia.iso.boxes.sampleentry.g(com.coremedia.iso.boxes.sampleentry.g.f10349u);
        gVar.d(1);
        gVar.v0(new g.b());
        gVar.o0(new g.a());
        this.f36429e.D(gVar);
        com.googlecode.mp4parser.boxes.threegpp26245.a aVar = new com.googlecode.mp4parser.boxes.threegpp26245.a();
        aVar.u(Collections.singletonList(new a.C0291a(1, "Serif")));
        gVar.D(aVar);
        this.f36428d.l(new Date());
        this.f36428d.r(new Date());
        this.f36428d.s(1000L);
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        LinkedList linkedList = new LinkedList();
        long j4 = 0;
        for (a aVar : this.f36430f) {
            int i4 = ((aVar.f36431a - j4) > 0L ? 1 : ((aVar.f36431a - j4) == 0L ? 0 : -1));
            if (i4 > 0) {
                linkedList.add(new com.googlecode.mp4parser.authoring.g(ByteBuffer.wrap(new byte[2])));
            } else if (i4 < 0) {
                throw new Error("Subtitle display times may not intersect");
            }
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            DataOutputStream dataOutputStream = new DataOutputStream(byteArrayOutputStream);
            try {
                dataOutputStream.writeShort(aVar.f36433c.getBytes("UTF-8").length);
                dataOutputStream.write(aVar.f36433c.getBytes("UTF-8"));
                dataOutputStream.close();
                linkedList.add(new com.googlecode.mp4parser.authoring.g(ByteBuffer.wrap(byteArrayOutputStream.toByteArray())));
                j4 = aVar.f36432b;
            } catch (IOException unused) {
                throw new Error("VM is broken. Does not support UTF-8");
            }
        }
        return linkedList;
    }

    public List<a> a() {
        return this.f36430f;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        return this.f36428d;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        ArrayList<Long> arrayList = new ArrayList();
        long j4 = 0;
        for (a aVar : this.f36430f) {
            long j10 = aVar.f36431a - j4;
            int i4 = (j10 > 0L ? 1 : (j10 == 0L ? 0 : -1));
            if (i4 > 0) {
                arrayList.add(Long.valueOf(j10));
            } else if (i4 < 0) {
                throw new Error("Subtitle display times may not intersect");
            }
            arrayList.add(Long.valueOf(aVar.f36432b - aVar.f36431a));
            j4 = aVar.f36432b;
        }
        long[] jArr = new long[arrayList.size()];
        int i10 = 0;
        for (Long l10 : arrayList) {
            jArr[i10] = l10.longValue();
            i10++;
        }
        return jArr;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "sbtl";
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<r0.a> m0() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public List<i.a> o() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36429e;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] z() {
        return null;
    }
}
