package com.googlecode.mp4parser.authoring.tracks;

import com.coremedia.iso.boxes.s0;
import java.io.ByteArrayOutputStream;
import java.io.IOException;
import java.nio.ByteBuffer;
import java.nio.channels.Channels;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.List;

/* compiled from: Avc1ToAvc3TrackImpl.java */
/* loaded from: classes2.dex */
public class f extends com.googlecode.mp4parser.authoring.j {

    /* renamed from: b  reason: collision with root package name */
    s0 f36250b;

    /* renamed from: c  reason: collision with root package name */
    com.mp4parser.iso14496.part15.a f36251c;

    /* renamed from: d  reason: collision with root package name */
    List<com.googlecode.mp4parser.authoring.f> f36252d;

    /* compiled from: Avc1ToAvc3TrackImpl.java */
    /* loaded from: classes2.dex */
    private class a extends AbstractList<com.googlecode.mp4parser.authoring.f> {

        /* renamed from: a  reason: collision with root package name */
        List<com.googlecode.mp4parser.authoring.f> f36253a;

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: Avc1ToAvc3TrackImpl.java */
        /* renamed from: com.googlecode.mp4parser.authoring.tracks.f$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0283a implements com.googlecode.mp4parser.authoring.f {

            /* renamed from: b  reason: collision with root package name */
            private final /* synthetic */ ByteBuffer f36256b;

            /* renamed from: c  reason: collision with root package name */
            private final /* synthetic */ int f36257c;

            /* renamed from: d  reason: collision with root package name */
            private final /* synthetic */ com.googlecode.mp4parser.authoring.f f36258d;

            C0283a(ByteBuffer byteBuffer, int i4, com.googlecode.mp4parser.authoring.f fVar) {
                this.f36256b = byteBuffer;
                this.f36257c = i4;
                this.f36258d = fVar;
            }

            @Override // com.googlecode.mp4parser.authoring.f
            public ByteBuffer a() {
                int i4 = 0;
                for (byte[] bArr : f.this.f36251c.F()) {
                    i4 += this.f36257c + bArr.length;
                }
                for (byte[] bArr2 : f.this.f36251c.E()) {
                    i4 += this.f36257c + bArr2.length;
                }
                for (byte[] bArr3 : f.this.f36251c.B()) {
                    i4 += this.f36257c + bArr3.length;
                }
                ByteBuffer allocate = ByteBuffer.allocate(com.googlecode.mp4parser.util.c.a(this.f36258d.getSize()) + i4);
                for (byte[] bArr4 : f.this.f36251c.F()) {
                    com.coremedia.iso.j.a(bArr4.length, allocate, this.f36257c);
                    allocate.put(bArr4);
                }
                for (byte[] bArr5 : f.this.f36251c.E()) {
                    com.coremedia.iso.j.a(bArr5.length, allocate, this.f36257c);
                    allocate.put(bArr5);
                }
                for (byte[] bArr6 : f.this.f36251c.B()) {
                    com.coremedia.iso.j.a(bArr6.length, allocate, this.f36257c);
                    allocate.put(bArr6);
                }
                allocate.put(this.f36258d.a());
                return (ByteBuffer) allocate.rewind();
            }

            @Override // com.googlecode.mp4parser.authoring.f
            public void b(WritableByteChannel writableByteChannel) throws IOException {
                for (byte[] bArr : f.this.f36251c.F()) {
                    com.coremedia.iso.j.a(bArr.length, (ByteBuffer) this.f36256b.rewind(), this.f36257c);
                    writableByteChannel.write((ByteBuffer) this.f36256b.rewind());
                    writableByteChannel.write(ByteBuffer.wrap(bArr));
                }
                for (byte[] bArr2 : f.this.f36251c.E()) {
                    com.coremedia.iso.j.a(bArr2.length, (ByteBuffer) this.f36256b.rewind(), this.f36257c);
                    writableByteChannel.write((ByteBuffer) this.f36256b.rewind());
                    writableByteChannel.write(ByteBuffer.wrap(bArr2));
                }
                for (byte[] bArr3 : f.this.f36251c.B()) {
                    com.coremedia.iso.j.a(bArr3.length, (ByteBuffer) this.f36256b.rewind(), this.f36257c);
                    writableByteChannel.write((ByteBuffer) this.f36256b.rewind());
                    writableByteChannel.write(ByteBuffer.wrap(bArr3));
                }
                this.f36258d.b(writableByteChannel);
            }

            @Override // com.googlecode.mp4parser.authoring.f
            public long getSize() {
                int i4 = 0;
                for (byte[] bArr : f.this.f36251c.F()) {
                    i4 += this.f36257c + bArr.length;
                }
                for (byte[] bArr2 : f.this.f36251c.E()) {
                    i4 += this.f36257c + bArr2.length;
                }
                for (byte[] bArr3 : f.this.f36251c.B()) {
                    i4 += this.f36257c + bArr3.length;
                }
                return this.f36258d.getSize() + i4;
            }
        }

        public a(List<com.googlecode.mp4parser.authoring.f> list) {
            this.f36253a = list;
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: b */
        public com.googlecode.mp4parser.authoring.f get(int i4) {
            if (Arrays.binarySearch(f.this.z(), i4 + 1) >= 0) {
                int z9 = f.this.f36251c.z() + 1;
                return new C0283a(ByteBuffer.allocate(z9), z9, this.f36253a.get(i4));
            }
            return this.f36253a.get(i4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return this.f36253a.size();
        }
    }

    public f(com.googlecode.mp4parser.authoring.h hVar) throws IOException {
        super(hVar);
        if (com.coremedia.iso.boxes.sampleentry.h.f10369y.equals(hVar.u().J().getType())) {
            ByteArrayOutputStream byteArrayOutputStream = new ByteArrayOutputStream();
            hVar.u().a(Channels.newChannel(byteArrayOutputStream));
            s0 s0Var = (s0) com.googlecode.mp4parser.util.m.d(new com.coremedia.iso.f(new com.googlecode.mp4parser.i(byteArrayOutputStream.toByteArray())), s0.f10315p);
            this.f36250b = s0Var;
            ((com.coremedia.iso.boxes.sampleentry.h) s0Var.J()).o0(com.coremedia.iso.boxes.sampleentry.h.f10370z);
            this.f36251c = (com.mp4parser.iso14496.part15.a) com.googlecode.mp4parser.util.m.e(this.f36250b, "avc./avcC");
            this.f36252d = new a(hVar.F());
            return;
        }
        throw new RuntimeException("Only avc1 tracks can be converted to avc3 tracks");
    }

    @Override // com.googlecode.mp4parser.authoring.j, com.googlecode.mp4parser.authoring.h
    public List<com.googlecode.mp4parser.authoring.f> F() {
        return this.f36252d;
    }

    @Override // com.googlecode.mp4parser.authoring.j, com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36250b;
    }
}
