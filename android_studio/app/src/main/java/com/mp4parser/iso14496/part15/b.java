package com.mp4parser.iso14496.part15;

import java.io.ByteArrayInputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: AvcDecoderConfigurationRecord.java */
/* loaded from: classes3.dex */
public class b {

    /* renamed from: a  reason: collision with root package name */
    public int f46957a;

    /* renamed from: b  reason: collision with root package name */
    public int f46958b;

    /* renamed from: c  reason: collision with root package name */
    public int f46959c;

    /* renamed from: d  reason: collision with root package name */
    public int f46960d;

    /* renamed from: e  reason: collision with root package name */
    public int f46961e;

    /* renamed from: f  reason: collision with root package name */
    public List<byte[]> f46962f;

    /* renamed from: g  reason: collision with root package name */
    public List<byte[]> f46963g;

    /* renamed from: h  reason: collision with root package name */
    public boolean f46964h;

    /* renamed from: i  reason: collision with root package name */
    public int f46965i;

    /* renamed from: j  reason: collision with root package name */
    public int f46966j;

    /* renamed from: k  reason: collision with root package name */
    public int f46967k;

    /* renamed from: l  reason: collision with root package name */
    public List<byte[]> f46968l;

    /* renamed from: m  reason: collision with root package name */
    public int f46969m;

    /* renamed from: n  reason: collision with root package name */
    public int f46970n;

    /* renamed from: o  reason: collision with root package name */
    public int f46971o;

    /* renamed from: p  reason: collision with root package name */
    public int f46972p;

    /* renamed from: q  reason: collision with root package name */
    public int f46973q;

    public b() {
        this.f46962f = new ArrayList();
        this.f46963g = new ArrayList();
        this.f46964h = true;
        this.f46965i = 1;
        this.f46966j = 0;
        this.f46967k = 0;
        this.f46968l = new ArrayList();
        this.f46969m = 63;
        this.f46970n = 7;
        this.f46971o = 31;
        this.f46972p = 31;
        this.f46973q = 31;
    }

    public void a(ByteBuffer byteBuffer) {
        com.coremedia.iso.i.m(byteBuffer, this.f46957a);
        com.coremedia.iso.i.m(byteBuffer, this.f46958b);
        com.coremedia.iso.i.m(byteBuffer, this.f46959c);
        com.coremedia.iso.i.m(byteBuffer, this.f46960d);
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d dVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d(byteBuffer);
        dVar.a(this.f46969m, 6);
        dVar.a(this.f46961e, 2);
        dVar.a(this.f46970n, 3);
        dVar.a(this.f46963g.size(), 5);
        for (byte[] bArr : this.f46962f) {
            com.coremedia.iso.i.f(byteBuffer, bArr.length);
            byteBuffer.put(bArr);
        }
        com.coremedia.iso.i.m(byteBuffer, this.f46963g.size());
        for (byte[] bArr2 : this.f46963g) {
            com.coremedia.iso.i.f(byteBuffer, bArr2.length);
            byteBuffer.put(bArr2);
        }
        if (this.f46964h) {
            int i4 = this.f46958b;
            if (i4 == 100 || i4 == 110 || i4 == 122 || i4 == 144) {
                com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d dVar2 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.d(byteBuffer);
                dVar2.a(this.f46971o, 6);
                dVar2.a(this.f46965i, 2);
                dVar2.a(this.f46972p, 5);
                dVar2.a(this.f46966j, 3);
                dVar2.a(this.f46973q, 5);
                dVar2.a(this.f46967k, 3);
                for (byte[] bArr3 : this.f46968l) {
                    com.coremedia.iso.i.f(byteBuffer, bArr3.length);
                    byteBuffer.put(bArr3);
                }
            }
        }
    }

    public long b() {
        int i4;
        long j4 = 6;
        for (byte[] bArr : this.f46962f) {
            j4 = j4 + 2 + bArr.length;
        }
        long j10 = j4 + 1;
        for (byte[] bArr2 : this.f46963g) {
            j10 = j10 + 2 + bArr2.length;
        }
        if (this.f46964h && ((i4 = this.f46958b) == 100 || i4 == 110 || i4 == 122 || i4 == 144)) {
            j10 += 4;
            for (byte[] bArr3 : this.f46968l) {
                j10 = j10 + 2 + bArr3.length;
            }
        }
        return j10;
    }

    public String[] c() {
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr : this.f46963g) {
            try {
                arrayList.add(w3.e.b(new ByteArrayInputStream(bArr, 1, bArr.length - 1)).toString());
            } catch (IOException e4) {
                throw new RuntimeException(e4);
            }
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public List<String> d() {
        ArrayList arrayList = new ArrayList(this.f46963g.size());
        for (byte[] bArr : this.f46963g) {
            arrayList.add(com.coremedia.iso.e.b(bArr));
        }
        return arrayList;
    }

    public String[] e() {
        String str;
        ArrayList arrayList = new ArrayList();
        for (byte[] bArr : this.f46962f) {
            try {
                str = w3.h.c(new com.googlecode.mp4parser.authoring.tracks.k(new ByteArrayInputStream(bArr, 1, bArr.length - 1))).toString();
            } catch (IOException unused) {
                str = "not parsable";
            }
            arrayList.add(str);
        }
        return (String[]) arrayList.toArray(new String[arrayList.size()]);
    }

    public List<String> f() {
        ArrayList arrayList = new ArrayList(this.f46968l.size());
        for (byte[] bArr : this.f46968l) {
            arrayList.add(com.coremedia.iso.e.b(bArr));
        }
        return arrayList;
    }

    public List<String> g() {
        ArrayList arrayList = new ArrayList(this.f46962f.size());
        for (byte[] bArr : this.f46962f) {
            arrayList.add(com.coremedia.iso.e.b(bArr));
        }
        return arrayList;
    }

    public String toString() {
        return "AvcDecoderConfigurationRecord{configurationVersion=" + this.f46957a + ", avcProfileIndication=" + this.f46958b + ", profileCompatibility=" + this.f46959c + ", avcLevelIndication=" + this.f46960d + ", lengthSizeMinusOne=" + this.f46961e + ", hasExts=" + this.f46964h + ", chromaFormat=" + this.f46965i + ", bitDepthLumaMinus8=" + this.f46966j + ", bitDepthChromaMinus8=" + this.f46967k + ", lengthSizeMinusOnePaddingBits=" + this.f46969m + ", numberOfSequenceParameterSetsPaddingBits=" + this.f46970n + ", chromaFormatPaddingBits=" + this.f46971o + ", bitDepthLumaMinus8PaddingBits=" + this.f46972p + ", bitDepthChromaMinus8PaddingBits=" + this.f46973q + '}';
    }

    public b(ByteBuffer byteBuffer) {
        int i4;
        this.f46962f = new ArrayList();
        this.f46963g = new ArrayList();
        this.f46964h = true;
        this.f46965i = 1;
        this.f46966j = 0;
        this.f46967k = 0;
        this.f46968l = new ArrayList();
        this.f46969m = 63;
        this.f46970n = 7;
        this.f46971o = 31;
        this.f46972p = 31;
        this.f46973q = 31;
        this.f46957a = com.coremedia.iso.g.p(byteBuffer);
        this.f46958b = com.coremedia.iso.g.p(byteBuffer);
        this.f46959c = com.coremedia.iso.g.p(byteBuffer);
        this.f46960d = com.coremedia.iso.g.p(byteBuffer);
        com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
        this.f46969m = cVar.c(6);
        this.f46961e = cVar.c(2);
        this.f46970n = cVar.c(3);
        int c10 = cVar.c(5);
        for (int i10 = 0; i10 < c10; i10++) {
            byte[] bArr = new byte[com.coremedia.iso.g.i(byteBuffer)];
            byteBuffer.get(bArr);
            this.f46962f.add(bArr);
        }
        long p9 = com.coremedia.iso.g.p(byteBuffer);
        for (int i11 = 0; i11 < p9; i11++) {
            byte[] bArr2 = new byte[com.coremedia.iso.g.i(byteBuffer)];
            byteBuffer.get(bArr2);
            this.f46963g.add(bArr2);
        }
        if (byteBuffer.remaining() < 4) {
            this.f46964h = false;
        }
        if (this.f46964h && ((i4 = this.f46958b) == 100 || i4 == 110 || i4 == 122 || i4 == 144)) {
            com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c cVar2 = new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(byteBuffer);
            this.f46971o = cVar2.c(6);
            this.f46965i = cVar2.c(2);
            this.f46972p = cVar2.c(5);
            this.f46966j = cVar2.c(3);
            this.f46973q = cVar2.c(5);
            this.f46967k = cVar2.c(3);
            long p10 = com.coremedia.iso.g.p(byteBuffer);
            for (int i12 = 0; i12 < p10; i12++) {
                byte[] bArr3 = new byte[com.coremedia.iso.g.i(byteBuffer)];
                byteBuffer.get(bArr3);
                this.f46968l.add(bArr3);
            }
            return;
        }
        this.f46965i = -1;
        this.f46966j = -1;
        this.f46967k = -1;
    }
}
