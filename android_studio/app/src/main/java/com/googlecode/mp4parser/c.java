package com.googlecode.mp4parser;

import com.coremedia.iso.boxes.v;
import java.nio.ByteBuffer;
import org.aspectj.lang.c;

/* compiled from: AbstractFullBox.java */
/* loaded from: classes2.dex */
public abstract class c extends a implements v {

    /* renamed from: p  reason: collision with root package name */
    private static final /* synthetic */ c.b f36929p = null;

    /* renamed from: q  reason: collision with root package name */
    private static final /* synthetic */ c.b f36930q = null;

    /* renamed from: n  reason: collision with root package name */
    private int f36931n;

    /* renamed from: o  reason: collision with root package name */
    private int f36932o;

    static {
        s();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(String str) {
        super(str);
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("AbstractFullBox.java", c.class);
        f36929p = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setVersion", "com.googlecode.mp4parser.AbstractFullBox", "int", "version", "", "void"), 51);
        f36930q = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setFlags", "com.googlecode.mp4parser.AbstractFullBox", "int", "flags", "", "void"), 64);
    }

    @s3.a
    public int getFlags() {
        if (!this.f35979d) {
            m();
        }
        return this.f36932o;
    }

    @Override // com.coremedia.iso.boxes.v
    @s3.a
    public int getVersion() {
        if (!this.f35979d) {
            m();
        }
        return this.f36931n;
    }

    @Override // com.coremedia.iso.boxes.v
    public void setFlags(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36930q, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36932o = i4;
    }

    @Override // com.coremedia.iso.boxes.v
    public void setVersion(int i4) {
        j.b().c(org.aspectj.runtime.reflect.e.w(f36929p, this, this, org.aspectj.runtime.internal.e.k(i4)));
        this.f36931n = i4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final long t(ByteBuffer byteBuffer) {
        this.f36931n = com.coremedia.iso.g.p(byteBuffer);
        this.f36932o = com.coremedia.iso.g.k(byteBuffer);
        return 4L;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void u(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.m(byteBuffer, this.f36931n);
        com.coremedia.iso.i.h(byteBuffer, this.f36932o);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public c(String str, byte[] bArr) {
        super(str, bArr);
    }
}
