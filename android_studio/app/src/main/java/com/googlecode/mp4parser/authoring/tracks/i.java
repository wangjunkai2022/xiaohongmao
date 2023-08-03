package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.a1;
import com.coremedia.iso.boxes.i;
import com.coremedia.iso.boxes.l0;
import com.coremedia.iso.boxes.o0;
import com.coremedia.iso.boxes.r0;
import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.boxes.w0;
import com.coremedia.iso.boxes.x0;
import com.mp4parser.iso23001.part7.a;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.math.BigInteger;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.security.SecureRandom;
import java.util.ArrayList;
import java.util.Arrays;
import java.util.Collections;
import java.util.HashMap;
import java.util.List;
import java.util.Map;
import java.util.UUID;
import javax.crypto.SecretKey;

/* compiled from: CencEncryptingTrackImpl.java */
/* loaded from: classes2.dex */
public class i implements h {

    /* renamed from: a  reason: collision with root package name */
    private final String f36294a;

    /* renamed from: b  reason: collision with root package name */
    com.googlecode.mp4parser.authoring.h f36295b;

    /* renamed from: c  reason: collision with root package name */
    Map<UUID, SecretKey> f36296c;

    /* renamed from: d  reason: collision with root package name */
    UUID f36297d;

    /* renamed from: e  reason: collision with root package name */
    List<com.googlecode.mp4parser.authoring.f> f36298e;

    /* renamed from: f  reason: collision with root package name */
    List<com.mp4parser.iso23001.part7.a> f36299f;

    /* renamed from: g  reason: collision with root package name */
    boolean f36300g;

    /* renamed from: h  reason: collision with root package name */
    boolean f36301h;

    /* renamed from: i  reason: collision with root package name */
    s0 f36302i;

    /* renamed from: j  reason: collision with root package name */
    com.googlecode.mp4parser.util.n<Integer, SecretKey> f36303j;

    /* renamed from: k  reason: collision with root package name */
    Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> f36304k;

    /* compiled from: CencEncryptingTrackImpl.java */
    /* loaded from: classes2.dex */
    class a extends HashMap<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> {
        a(Map map) {
            super(map);
        }

        @Override // java.util.HashMap, java.util.AbstractMap, java.util.Map
        /* renamed from: a */
        public long[] put(com.googlecode.mp4parser.boxes.mp4.samplegrouping.b bVar, long[] jArr) {
            if (!(bVar instanceof com.googlecode.mp4parser.boxes.mp4.samplegrouping.a)) {
                return (long[]) super.put(bVar, jArr);
            }
            throw new RuntimeException("Please supply CencSampleEncryptionInformationGroupEntries in the constructor");
        }
    }

    public i(com.googlecode.mp4parser.authoring.h hVar, UUID uuid, SecretKey secretKey, boolean z9) {
        this(hVar, uuid, Collections.singletonMap(uuid, secretKey), null, com.google.android.exoplayer2.i.E1, z9);
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public a1 B() {
        return this.f36295b.B();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return new com.googlecode.mp4parser.boxes.cenc.b(this.f36303j, this.f36295b.F(), this.f36299f, this.f36294a);
    }

    @Override // com.googlecode.mp4parser.authoring.tracks.h
    public boolean Q() {
        return this.f36301h;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.c> T() {
        return this.f36295b.T();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> V() {
        return this.f36304k;
    }

    @Override // com.googlecode.mp4parser.authoring.tracks.h
    public UUID Y() {
        return this.f36297d;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public com.googlecode.mp4parser.authoring.i a0() {
        return this.f36295b.a0();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        return this.f36295b.c0();
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f36295b.close();
    }

    @Override // com.googlecode.mp4parser.authoring.tracks.h
    public List<com.mp4parser.iso23001.part7.a> f0() {
        return this.f36299f;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long getDuration() {
        return this.f36295b.getDuration();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return this.f36295b.getHandler();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getName() {
        return "enc(" + this.f36295b.getName() + ")";
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<r0.a> m0() {
        return this.f36295b.m0();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<i.a> o() {
        return this.f36295b.o();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public synchronized s0 u() {
        if (this.f36302i == null) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            try {
                this.f36295b.u().a(Channels.newChannel(byteArrayOutputStream));
                int i4 = 0;
                this.f36302i = (s0) new com.coremedia.iso.f(new com.googlecode.mp4parser.i(byteArrayOutputStream.toByteArray())).y().get(0);
                l0 l0Var = new l0();
                l0Var.u(this.f36302i.J().getType());
                if (this.f36302i.J() instanceof com.coremedia.iso.boxes.sampleentry.c) {
                    ((com.coremedia.iso.boxes.sampleentry.c) this.f36302i.J()).C0(com.coremedia.iso.boxes.sampleentry.c.N);
                } else if (this.f36302i.J() instanceof com.coremedia.iso.boxes.sampleentry.h) {
                    ((com.coremedia.iso.boxes.sampleentry.h) this.f36302i.J()).o0(com.coremedia.iso.boxes.sampleentry.h.D);
                } else {
                    throw new RuntimeException("I don't know how to cenc " + this.f36302i.J().getType());
                }
                o0 o0Var = new o0();
                o0Var.D(l0Var);
                x0 x0Var = new x0();
                x0Var.y(this.f36294a);
                x0Var.A(65536);
                o0Var.D(x0Var);
                w0 w0Var = new w0();
                com.mp4parser.iso23001.part7.c cVar = new com.mp4parser.iso23001.part7.c();
                cVar.z(this.f36297d == null ? 0 : 8);
                if (this.f36297d != null) {
                    i4 = 1;
                }
                cVar.y(i4);
                UUID uuid = this.f36297d;
                if (uuid == null) {
                    uuid = new UUID(0L, 0L);
                }
                cVar.A(uuid);
                w0Var.D(cVar);
                o0Var.D(w0Var);
                this.f36302i.J().D(o0Var);
            } catch (IOException unused) {
                throw new RuntimeException("Dumping stsd to memory failed");
            }
        }
        return this.f36302i;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] z() {
        return this.f36295b.z();
    }

    public i(com.googlecode.mp4parser.authoring.h hVar, UUID uuid, Map<UUID, SecretKey> map, Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.a, long[]> map2, String str, boolean z9) {
        this(hVar, uuid, map, map2, str, z9, false);
    }

    public i(com.googlecode.mp4parser.authoring.h hVar, UUID uuid, Map<UUID, SecretKey> map, Map<com.googlecode.mp4parser.boxes.mp4.samplegrouping.a, long[]> map2, String str, boolean z9, boolean z10) {
        int i4;
        new HashMap();
        char c10 = 0;
        this.f36301h = false;
        SecretKey secretKey = null;
        this.f36302i = null;
        this.f36295b = hVar;
        this.f36296c = map;
        this.f36297d = uuid;
        this.f36300g = z9;
        this.f36294a = str;
        this.f36304k = new HashMap();
        for (Map.Entry<com.googlecode.mp4parser.boxes.mp4.samplegrouping.b, long[]> entry : hVar.V().entrySet()) {
            if (!(entry.getKey() instanceof com.googlecode.mp4parser.boxes.mp4.samplegrouping.a)) {
                this.f36304k.put(entry.getKey(), entry.getValue());
            }
            c10 = 0;
            secretKey = null;
        }
        if (map2 != null) {
            for (Map.Entry<com.googlecode.mp4parser.boxes.mp4.samplegrouping.a, long[]> entry2 : map2.entrySet()) {
                this.f36304k.put(entry2.getKey(), entry2.getValue());
            }
        }
        this.f36304k = new a(this.f36304k);
        this.f36298e = hVar.F();
        this.f36299f = new ArrayList();
        BigInteger bigInteger = new BigInteger("1");
        int i10 = 8;
        byte[] bArr = new byte[8];
        if (!z9) {
            new SecureRandom().nextBytes(bArr);
        }
        BigInteger bigInteger2 = new BigInteger(1, bArr);
        ArrayList arrayList = new ArrayList();
        if (map2 != null) {
            arrayList.addAll(map2.keySet());
        }
        this.f36303j = new com.googlecode.mp4parser.util.n<>();
        int i11 = -1;
        int i12 = 0;
        int i13 = -1;
        while (i12 < hVar.F().size()) {
            int i14 = 0;
            int i15 = 0;
            while (i14 < arrayList.size()) {
                BigInteger bigInteger3 = bigInteger2;
                if (Arrays.binarySearch(V().get((com.googlecode.mp4parser.boxes.mp4.samplegrouping.b) arrayList.get(i14)), i12) >= 0) {
                    i15 = i14 + 1;
                }
                i14++;
                bigInteger2 = bigInteger3;
                secretKey = null;
                i10 = 8;
            }
            if (i13 != i15) {
                if (i15 == 0) {
                    this.f36303j.put(Integer.valueOf(i12), map.get(uuid));
                } else {
                    int i16 = i15 - 1;
                    if (((com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) arrayList.get(i16)).f() != null) {
                        SecretKey secretKey2 = map.get(((com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) arrayList.get(i16)).f());
                        if (secretKey2 != null) {
                            this.f36303j.put(Integer.valueOf(i12), secretKey2);
                        } else {
                            throw new RuntimeException("Key " + ((com.googlecode.mp4parser.boxes.mp4.samplegrouping.a) arrayList.get(i16)).f() + " was not supplied for decryption");
                        }
                    } else {
                        this.f36303j.put(Integer.valueOf(i12), secretKey);
                    }
                }
                i13 = i15;
            }
            i12++;
            c10 = 0;
        }
        for (com.coremedia.iso.boxes.d dVar : hVar.u().J().y()) {
            if (dVar instanceof com.mp4parser.iso14496.part15.a) {
                this.f36301h = true;
                i11 = ((com.mp4parser.iso14496.part15.a) dVar).z() + 1;
            }
            if (dVar instanceof com.mp4parser.iso14496.part15.c) {
                this.f36301h = true;
                i11 = ((com.mp4parser.iso14496.part15.c) dVar).G() + 1;
            }
        }
        for (int i17 = 0; i17 < this.f36298e.size(); i17++) {
            com.googlecode.mp4parser.authoring.f fVar = this.f36298e.get(i17);
            com.mp4parser.iso23001.part7.a aVar = new com.mp4parser.iso23001.part7.a();
            this.f36299f.add(aVar);
            if (this.f36303j.get(Integer.valueOf(i17)) != null) {
                byte[] byteArray = bigInteger2.toByteArray();
                byte[] bArr2 = new byte[i10];
                System.arraycopy(byteArray, byteArray.length - i10 > 0 ? byteArray.length - i10 : 0, bArr2, 8 - byteArray.length < 0 ? 0 : 8 - byteArray.length, byteArray.length > i10 ? 8 : byteArray.length);
                aVar.f47090a = bArr2;
                ByteBuffer byteBuffer = (ByteBuffer) fVar.a().rewind();
                if (this.f36301h) {
                    if (z10) {
                        a.k[] kVarArr = new a.k[1];
                        kVarArr[c10] = aVar.a(byteBuffer.remaining(), 0L);
                        aVar.f47091b = kVarArr;
                    } else {
                        ArrayList arrayList2 = new ArrayList(5);
                        while (byteBuffer.remaining() > 0) {
                            int a10 = com.googlecode.mp4parser.util.c.a(com.coremedia.iso.h.a(byteBuffer, i11));
                            int i18 = a10 + i11;
                            arrayList2.add(aVar.a(i18 >= 112 ? (i18 % 16) + 96 : i18, i18 - i4));
                            byteBuffer.position(byteBuffer.position() + a10);
                        }
                        aVar.f47091b = (a.k[]) arrayList2.toArray(new a.k[arrayList2.size()]);
                    }
                }
                bigInteger2 = bigInteger2.add(bigInteger);
            }
        }
        System.err.println("");
    }
}
