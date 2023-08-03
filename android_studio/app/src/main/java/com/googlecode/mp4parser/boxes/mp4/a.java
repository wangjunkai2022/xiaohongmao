package com.googlecode.mp4parser.boxes.mp4;

import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.m;
import com.googlecode.mp4parser.j;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.logging.Level;
import java.util.logging.Logger;
import org.aspectj.lang.c;
import org.aspectj.runtime.reflect.e;

/* compiled from: AbstractDescriptorBox.java */
/* loaded from: classes2.dex */
public class a extends com.googlecode.mp4parser.c {

    /* renamed from: t  reason: collision with root package name */
    private static Logger f36729t;

    /* renamed from: u  reason: collision with root package name */
    private static final /* synthetic */ c.b f36730u = null;

    /* renamed from: v  reason: collision with root package name */
    private static final /* synthetic */ c.b f36731v = null;

    /* renamed from: w  reason: collision with root package name */
    private static final /* synthetic */ c.b f36732w = null;

    /* renamed from: x  reason: collision with root package name */
    private static final /* synthetic */ c.b f36733x = null;

    /* renamed from: y  reason: collision with root package name */
    private static final /* synthetic */ c.b f36734y = null;

    /* renamed from: r  reason: collision with root package name */
    protected com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b f36735r;

    /* renamed from: s  reason: collision with root package name */
    protected ByteBuffer f36736s;

    static {
        s();
        f36729t = Logger.getLogger(a.class.getName());
    }

    public a(String str) {
        super(str);
    }

    private static /* synthetic */ void s() {
        e eVar = new e("AbstractDescriptorBox.java", a.class);
        f36730u = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getData", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "", "java.nio.ByteBuffer"), 42);
        f36731v = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDescriptor", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor"), 58);
        f36732w = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getDescriptorAsString", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "", "", "", "java.lang.String"), 62);
        f36733x = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setDescriptor", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "com.googlecode.mp4parser.boxes.mp4.objectdescriptors.BaseDescriptor", "descriptor", "", "void"), 66);
        f36734y = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setData", "com.googlecode.mp4parser.boxes.mp4.AbstractDescriptorBox", "java.nio.ByteBuffer", "data", "", "void"), 70);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f36736s = byteBuffer.slice();
        byteBuffer.position(byteBuffer.position() + byteBuffer.remaining());
        try {
            this.f36736s.rewind();
            this.f36735r = m.a(-1, this.f36736s);
        } catch (IOException e4) {
            f36729t.log(Level.WARNING, "Error parsing ObjectDescriptor", (Throwable) e4);
        } catch (IndexOutOfBoundsException e10) {
            f36729t.log(Level.WARNING, "Error parsing ObjectDescriptor", (Throwable) e10);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        this.f36736s.rewind();
        byteBuffer.put(this.f36736s);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return this.f36736s.limit() + 4;
    }

    public ByteBuffer v() {
        j.b().c(e.v(f36730u, this, this));
        return this.f36736s;
    }

    public com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b w() {
        j.b().c(e.v(f36731v, this, this));
        return this.f36735r;
    }

    public String x() {
        j.b().c(e.v(f36732w, this, this));
        return this.f36735r.toString();
    }

    public void y(ByteBuffer byteBuffer) {
        j.b().c(e.w(f36734y, this, this, byteBuffer));
        this.f36736s = byteBuffer;
    }

    public void z(com.googlecode.mp4parser.boxes.mp4.objectdescriptors.b bVar) {
        j.b().c(e.w(f36733x, this, this, bVar));
        this.f36735r = bVar;
    }
}
