package com.coremedia.iso.boxes.fragment;

import java.nio.ByteBuffer;
import okhttp3.internal.ws.WebSocketProtocol;

/* compiled from: SampleFlags.java */
/* loaded from: classes.dex */
public class g {

    /* renamed from: a  reason: collision with root package name */
    private byte f10047a;

    /* renamed from: b  reason: collision with root package name */
    private byte f10048b;

    /* renamed from: c  reason: collision with root package name */
    private byte f10049c;

    /* renamed from: d  reason: collision with root package name */
    private byte f10050d;

    /* renamed from: e  reason: collision with root package name */
    private byte f10051e;

    /* renamed from: f  reason: collision with root package name */
    private byte f10052f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f10053g;

    /* renamed from: h  reason: collision with root package name */
    private int f10054h;

    public g() {
    }

    public void a(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.i(byteBuffer, (this.f10047a << com.google.common.base.c.F) | 0 | (this.f10048b << com.google.common.base.c.D) | (this.f10049c << com.google.common.base.c.B) | (this.f10050d << com.google.common.base.c.f32119z) | (this.f10051e << com.google.common.base.c.f32117x) | (this.f10052f << 17) | ((this.f10053g ? 1 : 0) << 16) | this.f10054h);
    }

    public int b() {
        return this.f10047a;
    }

    public int c() {
        return this.f10054h;
    }

    public int d() {
        return this.f10049c;
    }

    public int e() {
        return this.f10051e;
    }

    public boolean equals(Object obj) {
        if (this == obj) {
            return true;
        }
        if (obj == null || getClass() != obj.getClass()) {
            return false;
        }
        g gVar = (g) obj;
        return this.f10048b == gVar.f10048b && this.f10047a == gVar.f10047a && this.f10054h == gVar.f10054h && this.f10049c == gVar.f10049c && this.f10051e == gVar.f10051e && this.f10050d == gVar.f10050d && this.f10053g == gVar.f10053g && this.f10052f == gVar.f10052f;
    }

    public int f() {
        return this.f10050d;
    }

    public int g() {
        return this.f10052f;
    }

    public boolean h() {
        return this.f10053g;
    }

    public int hashCode() {
        return (((((((((((((this.f10047a * com.google.common.base.c.I) + this.f10048b) * 31) + this.f10049c) * 31) + this.f10050d) * 31) + this.f10051e) * 31) + this.f10052f) * 31) + (this.f10053g ? 1 : 0)) * 31) + this.f10054h;
    }

    public void i(int i4) {
        this.f10047a = (byte) i4;
    }

    public void j(int i4) {
        this.f10054h = i4;
    }

    public void k(int i4) {
        this.f10049c = (byte) i4;
    }

    public void l(int i4) {
        this.f10051e = (byte) i4;
    }

    public void m(int i4) {
        this.f10050d = (byte) i4;
    }

    public void n(boolean z9) {
        this.f10053g = z9;
    }

    public void o(int i4) {
        this.f10052f = (byte) i4;
    }

    public String toString() {
        return "SampleFlags{reserved=" + ((int) this.f10047a) + ", isLeading=" + ((int) this.f10048b) + ", depOn=" + ((int) this.f10049c) + ", isDepOn=" + ((int) this.f10050d) + ", hasRedundancy=" + ((int) this.f10051e) + ", padValue=" + ((int) this.f10052f) + ", isDiffSample=" + this.f10053g + ", degradPrio=" + this.f10054h + '}';
    }

    public g(ByteBuffer byteBuffer) {
        long l10 = com.coremedia.iso.g.l(byteBuffer);
        this.f10047a = (byte) (((-268435456) & l10) >> 28);
        this.f10048b = (byte) ((201326592 & l10) >> 26);
        this.f10049c = (byte) ((50331648 & l10) >> 24);
        this.f10050d = (byte) ((12582912 & l10) >> 22);
        this.f10051e = (byte) ((3145728 & l10) >> 20);
        this.f10052f = (byte) ((917504 & l10) >> 17);
        this.f10053g = ((65536 & l10) >> 16) > 0;
        this.f10054h = (int) (l10 & WebSocketProtocol.PAYLOAD_SHORT_MAX);
    }
}
