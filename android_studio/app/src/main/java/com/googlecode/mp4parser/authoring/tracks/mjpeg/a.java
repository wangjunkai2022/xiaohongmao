package com.googlecode.mp4parser.authoring.tracks.mjpeg;

import com.coremedia.iso.boxes.s0;
import com.coremedia.iso.e;
import com.googlecode.mp4parser.authoring.c;
import com.googlecode.mp4parser.authoring.f;
import com.googlecode.mp4parser.authoring.h;
import com.googlecode.mp4parser.authoring.i;
import com.googlecode.mp4parser.boxes.mp4.b;
import com.googlecode.mp4parser.boxes.mp4.objectdescriptors.m;
import java.awt.image.BufferedImage;
import java.io.File;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.channels.FileChannel;
import java.nio.channels.WritableByteChannel;
import java.util.AbstractList;
import java.util.Arrays;
import java.util.List;
import javax.imageio.ImageIO;

/* compiled from: OneJpegPerIframe.java */
/* loaded from: classes2.dex */
public class a extends com.googlecode.mp4parser.authoring.a {

    /* renamed from: d  reason: collision with root package name */
    File[] f36350d;

    /* renamed from: e  reason: collision with root package name */
    i f36351e;

    /* renamed from: f  reason: collision with root package name */
    long[] f36352f;

    /* renamed from: g  reason: collision with root package name */
    s0 f36353g;

    /* renamed from: h  reason: collision with root package name */
    long[] f36354h;

    /* compiled from: OneJpegPerIframe.java */
    /* renamed from: com.googlecode.mp4parser.authoring.tracks.mjpeg.a$a  reason: collision with other inner class name */
    /* loaded from: classes2.dex */
    class C0284a extends AbstractList<f> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: OneJpegPerIframe.java */
        /* renamed from: com.googlecode.mp4parser.authoring.tracks.mjpeg.a$a$a  reason: collision with other inner class name */
        /* loaded from: classes2.dex */
        public class C0285a implements f {

            /* renamed from: a  reason: collision with root package name */
            ByteBuffer f36356a = null;

            /* renamed from: c  reason: collision with root package name */
            private final /* synthetic */ int f36358c;

            C0285a(int i4) {
                this.f36358c = i4;
            }

            @Override // com.googlecode.mp4parser.authoring.f
            public ByteBuffer a() {
                if (this.f36356a == null) {
                    try {
                        RandomAccessFile randomAccessFile = new RandomAccessFile(a.this.f36350d[this.f36358c], "r");
                        this.f36356a = randomAccessFile.getChannel().map(FileChannel.MapMode.READ_ONLY, 0L, randomAccessFile.length());
                    } catch (IOException e4) {
                        throw new RuntimeException(e4);
                    }
                }
                return this.f36356a;
            }

            @Override // com.googlecode.mp4parser.authoring.f
            public void b(WritableByteChannel writableByteChannel) throws IOException {
                RandomAccessFile randomAccessFile = new RandomAccessFile(a.this.f36350d[this.f36358c], "r");
                randomAccessFile.getChannel().transferTo(0L, randomAccessFile.length(), writableByteChannel);
                randomAccessFile.close();
            }

            @Override // com.googlecode.mp4parser.authoring.f
            public long getSize() {
                return a.this.f36350d[this.f36358c].length();
            }
        }

        C0284a() {
        }

        @Override // java.util.AbstractList, java.util.List
        /* renamed from: b */
        public f get(int i4) {
            return new C0285a(i4);
        }

        @Override // java.util.AbstractCollection, java.util.Collection, java.util.List
        public int size() {
            return a.this.f36350d.length;
        }
    }

    public a(String str, File[] fileArr, h hVar) throws IOException {
        super(str);
        this.f36351e = new i();
        this.f36350d = fileArr;
        if (hVar.z().length == fileArr.length) {
            BufferedImage read = ImageIO.read(fileArr[0]);
            this.f36351e.v(read.getWidth());
            this.f36351e.n(read.getHeight());
            this.f36351e.s(hVar.a0().h());
            long[] c02 = hVar.c0();
            long[] z9 = hVar.z();
            this.f36352f = new long[z9.length];
            long j4 = 0;
            boolean z10 = true;
            long j10 = 0;
            int i4 = 1;
            for (int i10 = 1; i10 < c02.length; i10++) {
                if (i4 < z9.length && i10 == z9[i4]) {
                    this.f36352f[i4 - 1] = j10;
                    i4++;
                    j10 = 0;
                }
                j10 += c02[i10];
            }
            long[] jArr = this.f36352f;
            jArr[jArr.length - 1] = j10;
            this.f36353g = new s0();
            com.coremedia.iso.boxes.sampleentry.h hVar2 = new com.coremedia.iso.boxes.sampleentry.h(com.coremedia.iso.boxes.sampleentry.h.f10367w);
            this.f36353g.D(hVar2);
            b bVar = new b();
            bVar.y(ByteBuffer.wrap(e.a("038080801B000100048080800D6C11000000000A1CB4000A1CB4068080800102")));
            bVar.B((com.googlecode.mp4parser.boxes.mp4.objectdescriptors.h) m.a(-1, ByteBuffer.wrap(e.a("038080801B000100048080800D6C11000000000A1CB4000A1CB4068080800102"))));
            hVar2.D(bVar);
            this.f36354h = new long[fileArr.length];
            int i11 = 0;
            while (true) {
                long[] jArr2 = this.f36354h;
                if (i11 >= jArr2.length) {
                    break;
                }
                int i12 = i11 + 1;
                jArr2[i11] = i12;
                i11 = i12;
            }
            double d4 = 0.0d;
            boolean z11 = true;
            for (c cVar : hVar.T()) {
                if (cVar.b() == -1 && !z10) {
                    throw new RuntimeException("Cannot accept edit list for processing (1)");
                }
                if (cVar.b() >= 0 && !z11) {
                    throw new RuntimeException("Cannot accept edit list for processing (2)");
                }
                if (cVar.b() == -1) {
                    d4 += cVar.c();
                } else {
                    d4 -= cVar.b() / cVar.d();
                    z11 = false;
                    z10 = false;
                }
            }
            if (hVar.o() != null && hVar.o().size() > 0) {
                int[] copyOfRange = Arrays.copyOfRange(com.coremedia.iso.boxes.i.v(hVar.o()), 0, 50);
                for (int i13 = 0; i13 < copyOfRange.length; i13++) {
                    copyOfRange[i13] = (int) (copyOfRange[i13] + j4);
                    j4 += hVar.c0()[i13];
                }
                Arrays.sort(copyOfRange);
                d4 += copyOfRange[0] / hVar.a0().h();
            }
            if (d4 < 0.0d) {
                T().add(new c((long) ((-d4) * a0().h()), a0().h(), 1.0d, getDuration() / a0().h()));
                return;
            } else if (d4 > 0.0d) {
                T().add(new c(-1L, a0().h(), 1.0d, d4));
                T().add(new c(0L, a0().h(), 1.0d, getDuration() / a0().h()));
                return;
            } else {
                return;
            }
        }
        throw new RuntimeException("Number of sync samples doesn't match the number of stills (" + hVar.z().length + " vs. " + fileArr.length + ")");
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public List<f> F() {
        return new C0284a();
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public i a0() {
        return this.f36351e;
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public long[] c0() {
        return this.f36352f;
    }

    @Override // java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public String getHandler() {
        return "vide";
    }

    @Override // com.googlecode.mp4parser.authoring.h
    public s0 u() {
        return this.f36353g;
    }

    @Override // com.googlecode.mp4parser.authoring.a, com.googlecode.mp4parser.authoring.h
    public long[] z() {
        return this.f36354h;
    }
}
