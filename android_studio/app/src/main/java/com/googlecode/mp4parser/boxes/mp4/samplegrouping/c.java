package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;

/* compiled from: RateShareEntry.java */
/* loaded from: classes2.dex */
public class c extends b {

    /* renamed from: g  reason: collision with root package name */
    public static final String f36848g = "rash";

    /* renamed from: a  reason: collision with root package name */
    private short f36849a;

    /* renamed from: b  reason: collision with root package name */
    private short f36850b;

    /* renamed from: c  reason: collision with root package name */
    private List<a> f36851c = new LinkedList();

    /* renamed from: d  reason: collision with root package name */
    private int f36852d;

    /* renamed from: e  reason: collision with root package name */
    private int f36853e;

    /* renamed from: f  reason: collision with root package name */
    private short f36854f;

    /* compiled from: RateShareEntry.java */
    /* loaded from: classes2.dex */
    public static class a {

        /* renamed from: a  reason: collision with root package name */
        int f36855a;

        /* renamed from: b  reason: collision with root package name */
        short f36856b;

        public a(int i4, short s9) {
            this.f36855a = i4;
            this.f36856b = s9;
        }

        public int a() {
            return this.f36855a;
        }

        public short b() {
            return this.f36856b;
        }

        public void c(int i4) {
            this.f36855a = i4;
        }

        public void d(short s9) {
            this.f36856b = s9;
        }

        public boolean equals(Object obj) {
            if (this == obj) {
                return true;
            }
            if (obj == null || getClass() != obj.getClass()) {
                return false;
            }
            a aVar = (a) obj;
            return this.f36855a == aVar.f36855a && this.f36856b == aVar.f36856b;
        }

        public int hashCode() {
            return (this.f36855a * 31) + this.f36856b;
        }

        public String toString() {
            return "{availableBitrate=" + this.f36855a + ", targetRateShare=" + ((int) this.f36856b) + '}';
        }
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public ByteBuffer a() {
        short s9 = this.f36849a;
        ByteBuffer allocate = ByteBuffer.allocate(s9 == 1 ? 13 : (s9 * 6) + 11);
        allocate.putShort(this.f36849a);
        if (this.f36849a == 1) {
            allocate.putShort(this.f36850b);
        } else {
            for (a aVar : this.f36851c) {
                allocate.putInt(aVar.a());
                allocate.putShort(aVar.b());
            }
        }
        allocate.putInt(this.f36852d);
        allocate.putInt(this.f36853e);
        com.coremedia.iso.i.m(allocate, this.f36854f);
        allocate.rewind();
        return allocate;
    }

    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public String b() {
        return f36848g;
    }

    /* JADX WARN: Multi-variable type inference failed */
    /* JADX WARN: Type inference failed for: r1v1, types: [int] */
    @Override // com.googlecode.mp4parser.boxes.mp4.samplegrouping.b
    public void c(ByteBuffer byteBuffer) {
        short s9 = byteBuffer.getShort();
        this.f36849a = s9;
        if (s9 == 1) {
            this.f36850b = byteBuffer.getShort();
        } else {
            while (true) {
                ?? r12 = s9 - 1;
                if (s9 <= 0) {
                    break;
                }
                this.f36851c.add(new a(com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer)), byteBuffer.getShort()));
                s9 = r12;
            }
        }
        this.f36852d = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f36853e = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
        this.f36854f = (short) com.coremedia.iso.g.p(byteBuffer);
    }

    public short e() {
        return this.f36854f;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        c cVar = (c) obj;
        if (this.f36854f == cVar.f36854f && this.f36852d == cVar.f36852d && this.f36853e == cVar.f36853e && this.f36849a == cVar.f36849a && this.f36850b == cVar.f36850b) {
            List<a> list = this.f36851c;
            List<a> list2 = cVar.f36851c;
            return list == null ? list2 == null : list.equals(list2);
        }
        return false;
    }

    public List<a> f() {
        return this.f36851c;
    }

    public int g() {
        return this.f36852d;
    }

    public int h() {
        return this.f36853e;
    }

    public int hashCode() {
        int i4 = ((this.f36849a * 31) + this.f36850b) * 31;
        List<a> list = this.f36851c;
        return ((((((i4 + (list != null ? list.hashCode() : 0)) * 31) + this.f36852d) * 31) + this.f36853e) * 31) + this.f36854f;
    }

    public short i() {
        return this.f36849a;
    }

    public short j() {
        return this.f36850b;
    }

    public void k(short s9) {
        this.f36854f = s9;
    }

    public void l(List<a> list) {
        this.f36851c = list;
    }

    public void m(int i4) {
        this.f36852d = i4;
    }

    public void n(int i4) {
        this.f36853e = i4;
    }

    public void o(short s9) {
        this.f36849a = s9;
    }

    public void p(short s9) {
        this.f36850b = s9;
    }
}
