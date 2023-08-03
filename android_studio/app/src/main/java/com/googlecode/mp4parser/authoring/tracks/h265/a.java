package com.googlecode.mp4parser.authoring.tracks.h265;

import androidx.constraintlayout.core.motion.utils.TypedValues;
import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.boxes.sampleentry.h;
import com.googlecode.mp4parser.authoring.tracks.c;
import com.mp4parser.iso14496.part15.d;
import io.sentry.instrumentation.file.l;
import java.io.FileOutputStream;
import java.io.IOException;
import java.io.PrintStream;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Iterator;
import java.util.List;

/* compiled from: H265TrackImpl.java */
/* loaded from: classes2.dex */
public class a extends com.googlecode.mp4parser.authoring.tracks.c implements c {

    /* renamed from: k  reason: collision with root package name */
    ArrayList<ByteBuffer> f36262k;

    /* renamed from: l  reason: collision with root package name */
    ArrayList<ByteBuffer> f36263l;

    /* renamed from: m  reason: collision with root package name */
    ArrayList<ByteBuffer> f36264m;

    /* renamed from: n  reason: collision with root package name */
    ArrayList<com.googlecode.mp4parser.authoring.f> f36265n;

    /* renamed from: o  reason: collision with root package name */
    s0 f36266o;

    public a(com.googlecode.mp4parser.e eVar) throws IOException {
        super(eVar);
        this.f36262k = new ArrayList<>();
        this.f36263l = new ArrayList<>();
        this.f36264m = new ArrayList<>();
        this.f36265n = new ArrayList<>();
        ArrayList arrayList = new ArrayList();
        c.a aVar = new c.a(eVar);
        boolean[] zArr = new boolean[1];
        boolean[] zArr2 = {true};
        while (true) {
            ByteBuffer d4 = d(aVar);
            if (d4 == null) {
                this.f36266o = i();
                this.f36234e = new long[this.f36265n.size()];
                a0().s(25L);
                Arrays.fill(this.f36234e, 1L);
                return;
            }
            b k10 = k(d4);
            if (zArr[0]) {
                if (p(k10)) {
                    if ((d4.get(2) & Byte.MIN_VALUE) != 0) {
                        r(arrayList, zArr, zArr2);
                    }
                } else {
                    switch (k10.f36268b) {
                        case 32:
                        case 33:
                        case 34:
                        case 35:
                        case 36:
                        case 37:
                        case 39:
                        case 41:
                        case 42:
                        case 43:
                        case 44:
                        case 48:
                        case 49:
                        case 50:
                        case 51:
                        case 52:
                        case 53:
                        case 54:
                        case 55:
                            r(arrayList, zArr, zArr2);
                            break;
                    }
                }
            }
            int i4 = k10.f36268b;
            if (i4 != 39) {
                switch (i4) {
                    case 32:
                        d4.position(2);
                        this.f36264m.add(d4.slice());
                        System.err.println("Stored VPS");
                        break;
                    case 33:
                        d4.position(2);
                        this.f36262k.add(d4.slice());
                        d4.position(1);
                        new f(Channels.newInputStream(new com.googlecode.mp4parser.util.b(d4.slice())));
                        System.err.println("Stored SPS");
                        break;
                    case 34:
                        d4.position(2);
                        this.f36263l.add(d4.slice());
                        System.err.println("Stored PPS");
                        break;
                }
            } else {
                new e(new com.googlecode.mp4parser.boxes.mp4.objectdescriptors.c(d4.slice()));
            }
            switch (k10.f36268b) {
                case 32:
                case 33:
                case 34:
                case 35:
                case 36:
                case 37:
                case 38:
                    break;
                default:
                    PrintStream printStream = System.err;
                    printStream.println("Adding " + k10.f36268b);
                    arrayList.add(d4);
                    break;
            }
            if (p(k10)) {
                int i10 = k10.f36268b;
                if (i10 == 19 || i10 == 20) {
                    zArr2[0] = zArr2[0] & true;
                } else {
                    zArr2[0] = false;
                }
            }
            zArr[0] = zArr[0] | p(k10);
        }
    }

    private s0 i() {
        this.f36266o = new s0();
        h hVar = new h(h.B);
        hVar.d(1);
        hVar.g0(24);
        hVar.h0(1);
        hVar.n0(72.0d);
        hVar.p0(72.0d);
        hVar.q0(640);
        hVar.l0(480);
        hVar.d0("HEVC Coding");
        com.mp4parser.iso14496.part15.c cVar = new com.mp4parser.iso14496.part15.c();
        d.a aVar = new d.a();
        aVar.f47013a = true;
        aVar.f47015c = 33;
        aVar.f47016d = new ArrayList();
        Iterator<ByteBuffer> it = this.f36262k.iterator();
        while (it.hasNext()) {
            aVar.f47016d.add(com.googlecode.mp4parser.authoring.tracks.c.h(it.next()));
        }
        d.a aVar2 = new d.a();
        aVar2.f47013a = true;
        aVar2.f47015c = 34;
        aVar2.f47016d = new ArrayList();
        Iterator<ByteBuffer> it2 = this.f36263l.iterator();
        while (it2.hasNext()) {
            aVar2.f47016d.add(com.googlecode.mp4parser.authoring.tracks.c.h(it2.next()));
        }
        d.a aVar3 = new d.a();
        aVar3.f47013a = true;
        aVar3.f47015c = 34;
        aVar3.f47016d = new ArrayList();
        Iterator<ByteBuffer> it3 = this.f36264m.iterator();
        while (it3.hasNext()) {
            aVar3.f47016d.add(com.googlecode.mp4parser.authoring.tracks.c.h(it3.next()));
        }
        cVar.t().addAll(Arrays.asList(aVar, aVar3, aVar2));
        hVar.D(cVar);
        this.f36266o.D(hVar);
        return this.f36266o;
    }

    public static void q(String[] strArr) throws IOException {
        a aVar = new a(new com.googlecode.mp4parser.g("c:\\content\\test-UHD-HEVC_01_FMV_Med_track1.hvc"));
        com.googlecode.mp4parser.authoring.d dVar = new com.googlecode.mp4parser.authoring.d();
        dVar.a(aVar);
        new com.googlecode.mp4parser.authoring.builder.b().a(dVar).A(l.b.d(new FileOutputStream("output.mp4"), "output.mp4").getChannel());
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36265n;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "vide";
    }

    public b k(ByteBuffer byteBuffer) {
        byteBuffer.position(0);
        int i4 = com.coremedia.iso.g.i(byteBuffer);
        b bVar = new b();
        bVar.f36267a = (32768 & i4) >> 15;
        bVar.f36268b = (i4 & 32256) >> 9;
        bVar.f36269c = (i4 & TypedValues.Position.TYPE_PERCENT_HEIGHT) >> 3;
        bVar.f36270d = i4 & 7;
        return bVar;
    }

    boolean p(b bVar) {
        int i4 = bVar.f36268b;
        return i4 >= 0 && i4 <= 31;
    }

    public void r(List<ByteBuffer> list, boolean[] zArr, boolean[] zArr2) {
        this.f36265n.add(b(list));
        PrintStream printStream = System.err;
        printStream.print("Create AU from " + list.size() + " NALs");
        if (zArr2[0]) {
            System.err.println("  IDR");
        } else {
            System.err.println();
        }
        zArr[0] = false;
        zArr2[0] = true;
        list.clear();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return null;
    }
}
