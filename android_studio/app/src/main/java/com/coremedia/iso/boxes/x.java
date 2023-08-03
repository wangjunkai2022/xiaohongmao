package com.coremedia.iso.boxes;

import java.nio.ByteBuffer;
import java.util.Collections;
import java.util.HashMap;
import java.util.Map;
import org.aspectj.lang.c;

/* compiled from: HandlerBox.java */
/* loaded from: classes.dex */
public class x extends com.googlecode.mp4parser.c {
    private static final /* synthetic */ c.b A = null;
    private static final /* synthetic */ c.b B = null;
    private static final /* synthetic */ c.b C = null;
    private static final /* synthetic */ c.b D = null;
    private static final /* synthetic */ c.b E = null;
    private static final /* synthetic */ c.b F = null;

    /* renamed from: y  reason: collision with root package name */
    public static final String f10455y = "hdlr";

    /* renamed from: z  reason: collision with root package name */
    public static final Map<String, String> f10456z;

    /* renamed from: r  reason: collision with root package name */
    private String f10457r;

    /* renamed from: s  reason: collision with root package name */
    private String f10458s;

    /* renamed from: t  reason: collision with root package name */
    private long f10459t;

    /* renamed from: u  reason: collision with root package name */
    private long f10460u;

    /* renamed from: v  reason: collision with root package name */
    private long f10461v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f10462w;

    /* renamed from: x  reason: collision with root package name */
    private long f10463x;

    static {
        s();
        HashMap hashMap = new HashMap();
        hashMap.put("odsm", "ObjectDescriptorStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("crsm", "ClockReferenceStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("sdsm", "SceneDescriptionStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("m7sm", "MPEG7Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("ocsm", "ObjectContentInfoStream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("ipsm", "IPMP Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("mjsm", "MPEG-J Stream - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        hashMap.put("mdir", "Apple Meta Data iTunes Reader");
        hashMap.put("mp7b", "MPEG-7 binary XML");
        hashMap.put("mp7t", "MPEG-7 XML");
        hashMap.put("vide", "Video Track");
        hashMap.put("soun", "Sound Track");
        hashMap.put(i1.f10181o, "Hint Track");
        hashMap.put("appl", "Apple specific");
        hashMap.put("meta", "Timed Metadata track - defined in ISO/IEC JTC1/SC29/WG11 - CODING OF MOVING PICTURES AND AUDIO");
        f10456z = Collections.unmodifiableMap(hashMap);
    }

    public x() {
        super(f10455y);
        this.f10458s = null;
        this.f10462w = true;
    }

    private static /* synthetic */ void s() {
        org.aspectj.runtime.reflect.e eVar = new org.aspectj.runtime.reflect.e("HandlerBox.java", x.class);
        A = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getHandlerType", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 78);
        B = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setName", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "name", "", "void"), 87);
        C = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "setHandlerType", "com.coremedia.iso.boxes.HandlerBox", "java.lang.String", "handlerType", "", "void"), 91);
        D = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getName", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 95);
        E = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "getHumanReadableTrackType", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 99);
        F = eVar.H(org.aspectj.lang.c.f91018a, eVar.E("1", "toString", "com.coremedia.iso.boxes.HandlerBox", "", "", "", "java.lang.String"), 149);
    }

    @Override // com.googlecode.mp4parser.a
    public void b(ByteBuffer byteBuffer) {
        t(byteBuffer);
        this.f10463x = com.coremedia.iso.g.l(byteBuffer);
        this.f10457r = com.coremedia.iso.g.b(byteBuffer);
        this.f10459t = com.coremedia.iso.g.l(byteBuffer);
        this.f10460u = com.coremedia.iso.g.l(byteBuffer);
        this.f10461v = com.coremedia.iso.g.l(byteBuffer);
        if (byteBuffer.remaining() > 0) {
            String h4 = com.coremedia.iso.g.h(byteBuffer, byteBuffer.remaining());
            this.f10458s = h4;
            if (h4.endsWith(com.squareup.moshi.g.f55599d1)) {
                String str = this.f10458s;
                this.f10458s = str.substring(0, str.length() - 1);
                this.f10462w = true;
                return;
            }
            this.f10462w = false;
            return;
        }
        this.f10462w = false;
    }

    @Override // com.googlecode.mp4parser.a
    protected void c(ByteBuffer byteBuffer) {
        u(byteBuffer);
        com.coremedia.iso.i.i(byteBuffer, this.f10463x);
        byteBuffer.put(com.coremedia.iso.f.J(this.f10457r));
        com.coremedia.iso.i.i(byteBuffer, this.f10459t);
        com.coremedia.iso.i.i(byteBuffer, this.f10460u);
        com.coremedia.iso.i.i(byteBuffer, this.f10461v);
        String str = this.f10458s;
        if (str != null) {
            byteBuffer.put(com.coremedia.iso.l.b(str));
        }
        if (this.f10462w) {
            byteBuffer.put((byte) 0);
        }
    }

    @Override // com.googlecode.mp4parser.a
    protected long e() {
        int c10;
        if (this.f10462w) {
            c10 = com.coremedia.iso.l.c(this.f10458s) + 25;
        } else {
            c10 = com.coremedia.iso.l.c(this.f10458s) + 24;
        }
        return c10;
    }

    public String toString() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(F, this, this));
        return "HandlerBox[handlerType=" + v() + ";name=" + x() + "]";
    }

    public String v() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(A, this, this));
        return this.f10457r;
    }

    public String w() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(E, this, this));
        Map<String, String> map = f10456z;
        return map.get(this.f10457r) != null ? map.get(this.f10457r) : "Unknown Handler Type";
    }

    public String x() {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.v(D, this, this));
        return this.f10458s;
    }

    public void y(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(C, this, this, str));
        this.f10457r = str;
    }

    public void z(String str) {
        com.googlecode.mp4parser.j.b().c(org.aspectj.runtime.reflect.e.w(B, this, this, str));
        this.f10458s = str;
    }
}
