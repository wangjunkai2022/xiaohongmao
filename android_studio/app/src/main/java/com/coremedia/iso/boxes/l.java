package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: DataEntryUrlBox.java */
/* loaded from: classes.dex */
public class l extends com.googlecode.mp4parser.c {

    /* renamed from: r  reason: collision with root package name */
    public static final String f10212r = "url ";

    /* renamed from: s  reason: collision with root package name */
    private static final /* synthetic */ c.b f10213s = null;

    static {
        s();
    }

    public l() {
        super(f10212r);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("DataEntryUrlBox.java", l.class);
        f10213s = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.DataEntryUrlBox", "", "", "", "java.lang.String"), 51);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        return 4L;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(f10213s, this, this));
        return "DataEntryUrlBox[]";
    }
}
