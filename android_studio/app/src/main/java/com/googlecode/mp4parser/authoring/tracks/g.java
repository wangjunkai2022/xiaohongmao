package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.l0;
import com.coremedia.iso.boxes.o0;
import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.boxes.x0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.channels.Channels;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.LinkedList;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.crypto.SecretKey;

/* compiled from: CencDecryptingTrackImpl.java */
/* loaded from: classes2.dex */
public class g extends com.googlecode.mp4parser.authoring.a {

    /* renamed from: d  reason: collision with root package name */
    com.googlecode.mp4parser.boxes.cenc.a f36259d;

    /* renamed from: e  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f36260e;

    /* renamed from: f  reason: collision with root package name */
    com.googlecode.mp4parser.util.n<Integer, SecretKey> f36261f;

    public g(h hVar, SecretKey secretKey) {
        this(hVar, Collections.singletonMap(hVar.Y(), secretKey));
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36259d;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        return this.f36260e.a0();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        return this.f36260e.c0();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36260e.close();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f36260e.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        l0 l0Var = (l0) com.googlecode.mp4parser.util.m.e(this.f36260e.u(), "enc./sinf/frma");
        ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
        try {
            this.f36260e.u().a(Channels.newChannel(byteArrayOutputStream));
            s0 s0Var = (s0) new com.coremedia.iso.f(new com.googlecode.mp4parser.i(byteArrayOutputStream.toByteArray())).y().get(0);
            if (s0Var.J() instanceof com.coremedia.iso.boxes.sampleentry.c) {
                ((com.coremedia.iso.boxes.sampleentry.c) s0Var.J()).C0(l0Var.t());
            } else if (s0Var.J() instanceof com.coremedia.iso.boxes.sampleentry.h) {
                ((com.coremedia.iso.boxes.sampleentry.h) s0Var.J()).o0(l0Var.t());
            } else {
                throw new RuntimeException("I don't know " + s0Var.J().getType());
            }
            LinkedList linkedList = new LinkedList();
            for (com.coremedia.iso.boxes.d dVar : s0Var.J().y()) {
                if (!dVar.getType().equals(o0.f10267n)) {
                    linkedList.add(dVar);
                }
            }
            s0Var.J().b(linkedList);
            return s0Var;
        } catch (IOException unused) {
            throw new RuntimeException("Dumping stsd to memory failed");
        }
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] z() {
        return this.f36260e.z();
    }

    public g(h hVar, Map<UUID, SecretKey> map) {
        super("dec(" + hVar.getName() + ")");
        this.f36261f = new com.googlecode.mp4parser.util.n<>();
        this.f36260e = hVar;
        x0 x0Var = (x0) com.googlecode.mp4parser.util.m.e(hVar.u(), "enc./sinf/schm");
        if (!com.google.android.exoplayer2.i.E1.equals(x0Var.v()) && !com.google.android.exoplayer2.i.F1.equals(x0Var.v())) {
            throw new RuntimeException("You can only use the CencDecryptingTrackImpl with CENC (cenc or cbc1) encrypted tracks");
        }
        ArrayList arrayList = new ArrayList();
        for (Map.Entry<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> entry : hVar.V().entrySet()) {
            if (entry.getKey() instanceof com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) {
                arrayList.add((com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) entry.getKey());
            } else {
                V().put(entry.getKey(), entry.getValue());
            }
        }
        int i4 = -1;
        for (int i10 = 0; i10 < hVar.F().size(); i10++) {
            int i11 = 0;
            for (int i12 = 0; i12 < arrayList.size(); i12++) {
                if (Arrays.binarySearch(hVar.V().get((com.googlecode.mp4parser.boxes.mp4.samplegrouping.b) arrayList.get(i12)), i10) >= 0) {
                    i11 = i12 + 1;
                }
            }
            if (i4 != i11) {
                if (i11 == 0) {
                    this.f36261f.put(Integer.valueOf(i10), map.get(hVar.Y()));
                } else {
                    int i13 = i11 - 1;
                    if (((com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) arrayList.get(i13)).g()) {
                        SecretKey secretKey = map.get(((com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) arrayList.get(i13)).f());
                        if (secretKey != null) {
                            this.f36261f.put(Integer.valueOf(i10), secretKey);
                        } else {
                            throw new RuntimeException("Key " + ((com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) arrayList.get(i13)).f() + " was not supplied for decryption");
                        }
                    } else {
                        this.f36261f.put(Integer.valueOf(i10), null);
                    }
                }
                i4 = i11;
            }
        }
        this.f36259d = new com.googlecode.mp4parser.boxes.cenc.a(this.f36261f, hVar.F(), hVar.f0(), x0Var.v());
    }
}
