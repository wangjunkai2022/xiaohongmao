package com.googlecode.mp4parser.boxes.mp4.samplegrouping;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.googlecode.mp4parser.j;
import java.nio.ByteBuffer;
import java.util.LinkedList;
import java.util.List;
import org.aspectj.lang.c;

/* compiled from: SampleGroupDescriptionBox.java */
/* loaded from: classes2.dex */
public class e extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;

    /* renamed from: t  reason: collision with root package name */
    public static final String f36859t = "sgpd";

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f36860u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36861v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36862w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36863x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36864y = null;

    /* renamed from: z  reason: collision with root package name */
    private static final /* synthetic */ c.b f36865z = null;

    /* renamed from: r  reason: collision with root package name */
    private int f36866r;

    /* renamed from: s  reason: collision with root package name */
    private List<b> f36867s;

    static {
        s();
    }

    public e() {
        super(f36859t);
        this.f36867s = new LinkedList();
        setVersion(1);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("SampleGroupDescriptionBox.java", e.class);
        f36860u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDefaultLength", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "int"), 145);
        f36861v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDefaultLength", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "int", "defaultLength", "", "void"), 149);
        f36862w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getGroupEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "java.util.List"), 153);
        f36863x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setGroupEntries", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "java.util.List", "groupEntries", "", "void"), 157);
        f36864y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "equals", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "java.lang.Object", "o", "", TypedValues.Custom.S_BOOLEAN), 162);
        f36865z = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "hashCode", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "int"), 183);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.googlecode.mp4parser.boxes.mp4.samplegrouping.SampleGroupDescriptionBox", "", "", "", "java.lang.String"), 191);
    }

    private b x(ByteBuffer byteBuffer, String str) {
        b hVar;
        if (d.f36857b.equals(str)) {
            hVar = new d();
        } else if (c.f36848g.equals(str)) {
            hVar = new c();
        } else if (a.f36844d.equals(str)) {
            hVar = new a();
        } else if (i.f36884c.equals(str)) {
            hVar = new i();
        } else if (g.f36879c.equals(str)) {
            hVar = new g();
        } else if (com.mp4parser.iso14496.part15.g.f47031c.equals(str)) {
            hVar = new com.mp4parser.iso14496.part15.g();
        } else if (com.mp4parser.iso14496.part15.h.f47034l.equals(str)) {
            hVar = new com.mp4parser.iso14496.part15.h();
        } else if (com.mp4parser.iso14496.part15.i.f47046b.equals(str)) {
            hVar = new com.mp4parser.iso14496.part15.i();
        } else if (com.mp4parser.iso14496.part15.f.f47030a.equals(str)) {
            hVar = new com.mp4parser.iso14496.part15.f();
        } else {
            hVar = new h(str);
        }
        hVar.c(byteBuffer);
        return hVar;
    }

    @Override // com.googlecode.mp4parser.a
    protected void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        if (getVersion() == 1) {
            String b10 = com.coremedia.iso.g.b(byteBuffer);
            if (getVersion() == 1) {
                this.f36866r = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
            }
            long l10 = com.coremedia.iso.g.l(byteBuffer);
            while (true) {
                long j4 = l10 - 1;
                if (l10 <= 0) {
                    return;
                }
                int i4 = this.f36866r;
                if (getVersion() == 1) {
                    if (this.f36866r == 0) {
                        i4 = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.g.l(byteBuffer));
                    }
                    int position = byteBuffer.position() + i4;
                    ByteBuffer slice = byteBuffer.slice();
                    slice.limit(i4);
                    this.f36867s.add(x(slice, b10));
                    byteBuffer.position(position);
                    l10 = j4;
                } else {
                    throw new RuntimeException("This should be implemented");
                }
            }
        } else {
            throw new RuntimeException("SampleGroupDescriptionBox are only supported in version 1");
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        byteBuffer.put(com.coremedia.iso.f.J(this.f36867s.get(0).b()));
        if (getVersion() == 1) {
            com.coremedia.iso.i.i(byteBuffer, this.f36866r);
        }
        com.coremedia.iso.i.i(byteBuffer, this.f36867s.size());
        for (b bVar : this.f36867s) {
            if (getVersion() == 1 && this.f36866r == 0) {
                com.coremedia.iso.i.i(byteBuffer, bVar.a().limit());
            }
            byteBuffer.put(bVar.a());
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        long j4 = (getVersion() == 1 ? 12L : 8L) + 4;
        for (b bVar : this.f36867s) {
            if (getVersion() == 1 && this.f36866r == 0) {
                j4 += 4;
            }
            j4 += bVar.d();
        }
        return j4;
    }

    public boolean equals(Object obj) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36864y, this, this, obj));
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        e eVar = (e) obj;
        if (this.f36866r != eVar.f36866r) {
            return false;
        }
        List<b> list = this.f36867s;
        List<b> list2 = eVar.f36867s;
        return list == null ? list2 == null : list.equals(list2);
    }

    public int hashCode() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36865z, this, this));
        int i4 = (this.f36866r + 0) * 31;
        List<b> list = this.f36867s;
        return i4 + (list != null ? list.hashCode() : 0);
    }

    public String toString() {
        j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        StringBuilder sb = new StringBuilder("SampleGroupDescriptionBox{groupingType='");
        sb.append(this.f36867s.size() > 0 ? this.f36867s.get(0).b() : "????");
        sb.append('\'');
        sb.append(", defaultLength=");
        sb.append(this.f36866r);
        sb.append(", groupEntries=");
        sb.append(this.f36867s);
        sb.append('}');
        return sb.toString();
    }

    public int v() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36860u, this, this));
        return this.f36866r;
    }

    public List<b> w() {
        j.b().c(org.aspectj.runtime.reflect.e.v(f36862w, this, this));
        return this.f36867s;
    }

    public void y(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36861v, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36866r = i4;
    }

    public void z(List<b> list) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36863x, this, this, list));
        this.f36867s = list;
    }
}
