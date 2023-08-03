package com.mp4parser.iso14496.part30;

import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.l;
import com.googlecode.mp4parser.authoring.f;
import com.googlecode.mp4parser.authoring.i;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.util.ArrayList;
import java.util.List;

/* compiled from: WebVTTTrack.java */
/* loaded from: classes3.dex */
public class d extends com.googlecode.mp4parser.authoring.a {

    /* renamed from: d  reason: collision with root package name */
    String[] f47083d;

    /* renamed from: e  reason: collision with root package name */
    List<f> f47084e;

    /* renamed from: f  reason: collision with root package name */
    b f47085f;

    public d(com.googlecode.mp4parser.e eVar) throws IOException {
        super(eVar.toString());
        this.f47084e = new ArrayList();
        b bVar = new b();
        this.f47085f = bVar;
        bVar.D(new a());
        this.f47085f.D(new c());
        ByteBuffer e02 = eVar.e0(0L, com.googlecode.mp4parser.util.c.a(eVar.size()));
        byte[] bArr = new byte[com.googlecode.mp4parser.util.c.a(eVar.size())];
        e02.get(bArr);
        this.f47083d = l.a(bArr).split("\\r?\\n");
        String str = "";
        int i4 = 0;
        while (i4 < this.f47083d.length) {
            str = String.valueOf(str) + this.f47083d[i4] + "\n";
            int i10 = i4 + 1;
            if (this.f47083d[i10].isEmpty() && this.f47083d[i4 + 2].isEmpty()) {
                break;
            }
            i4 = i10;
        }
        while (true) {
            String[] strArr = this.f47083d;
            if (i4 >= strArr.length || !strArr[i4].isEmpty()) {
                return;
            }
            i4++;
        }
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<f> F() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public i a0() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        return new long[0];
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return null;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return null;
    }
}
