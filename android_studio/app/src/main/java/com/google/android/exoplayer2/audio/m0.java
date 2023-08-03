package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.z0;
import java.io.IOException;
import java.io.RandomAccessFile;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* compiled from: TeeAudioProcessor.java */
/* loaded from: classes2.dex */
public final class m0 extends z {

    /* renamed from: i  reason: collision with root package name */
    private final a f21319i;

    /* compiled from: TeeAudioProcessor.java */
    /* loaded from: classes2.dex */
    public interface a {
        void a(ByteBuffer byteBuffer);

        void b(int i4, int i10, int i11);
    }

    /* compiled from: TeeAudioProcessor.java */
    /* loaded from: classes2.dex */
    public static final class b implements a {

        /* renamed from: j  reason: collision with root package name */
        private static final String f21320j = "WaveFileAudioBufferSink";

        /* renamed from: k  reason: collision with root package name */
        private static final int f21321k = 4;

        /* renamed from: l  reason: collision with root package name */
        private static final int f21322l = 40;

        /* renamed from: m  reason: collision with root package name */
        private static final int f21323m = 44;

        /* renamed from: a  reason: collision with root package name */
        private final String f21324a;

        /* renamed from: b  reason: collision with root package name */
        private final byte[] f21325b;

        /* renamed from: c  reason: collision with root package name */
        private final ByteBuffer f21326c;

        /* renamed from: d  reason: collision with root package name */
        private int f21327d;

        /* renamed from: e  reason: collision with root package name */
        private int f21328e;

        /* renamed from: f  reason: collision with root package name */
        private int f21329f;
        @Nullable

        /* renamed from: g  reason: collision with root package name */
        private RandomAccessFile f21330g;

        /* renamed from: h  reason: collision with root package name */
        private int f21331h;

        /* renamed from: i  reason: collision with root package name */
        private int f21332i;

        public b(String str) {
            this.f21324a = str;
            byte[] bArr = new byte[1024];
            this.f21325b = bArr;
            this.f21326c = ByteBuffer.wrap(bArr).order(ByteOrder.LITTLE_ENDIAN);
        }

        private String c() {
            int i4 = this.f21331h;
            this.f21331h = i4 + 1;
            return z0.I("%s-%04d.wav", this.f21324a, Integer.valueOf(i4));
        }

        private void d() throws IOException {
            if (this.f21330g != null) {
                return;
            }
            RandomAccessFile randomAccessFile = new RandomAccessFile(c(), "rw");
            g(randomAccessFile);
            this.f21330g = randomAccessFile;
            this.f21332i = 44;
        }

        private void e() throws IOException {
            RandomAccessFile randomAccessFile = this.f21330g;
            if (randomAccessFile == null) {
                return;
            }
            try {
                this.f21326c.clear();
                this.f21326c.putInt(this.f21332i - 8);
                randomAccessFile.seek(4L);
                randomAccessFile.write(this.f21325b, 0, 4);
                this.f21326c.clear();
                this.f21326c.putInt(this.f21332i - 44);
                randomAccessFile.seek(40L);
                randomAccessFile.write(this.f21325b, 0, 4);
            } catch (IOException e4) {
                com.google.android.exoplayer2.util.w.o(f21320j, "Error updating file size", e4);
            }
            try {
                randomAccessFile.close();
            } finally {
                this.f21330g = null;
            }
        }

        private void f(ByteBuffer byteBuffer) throws IOException {
            RandomAccessFile randomAccessFile = (RandomAccessFile) com.google.android.exoplayer2.util.a.g(this.f21330g);
            while (byteBuffer.hasRemaining()) {
                int min = Math.min(byteBuffer.remaining(), this.f21325b.length);
                byteBuffer.get(this.f21325b, 0, min);
                randomAccessFile.write(this.f21325b, 0, min);
                this.f21332i += min;
            }
        }

        private void g(RandomAccessFile randomAccessFile) throws IOException {
            randomAccessFile.writeInt(o0.f21345a);
            randomAccessFile.writeInt(-1);
            randomAccessFile.writeInt(o0.f21346b);
            randomAccessFile.writeInt(o0.f21347c);
            this.f21326c.clear();
            this.f21326c.putInt(16);
            this.f21326c.putShort((short) o0.b(this.f21329f));
            this.f21326c.putShort((short) this.f21328e);
            this.f21326c.putInt(this.f21327d);
            int k02 = z0.k0(this.f21329f, this.f21328e);
            this.f21326c.putInt(this.f21327d * k02);
            this.f21326c.putShort((short) k02);
            this.f21326c.putShort((short) ((k02 * 8) / this.f21328e));
            randomAccessFile.write(this.f21325b, 0, this.f21326c.position());
            randomAccessFile.writeInt(1684108385);
            randomAccessFile.writeInt(-1);
        }

        @Override // com.google.android.exoplayer2.audio.m0.a
        public void a(ByteBuffer byteBuffer) {
            try {
                d();
                f(byteBuffer);
            } catch (IOException e4) {
                com.google.android.exoplayer2.util.w.e(f21320j, "Error writing data", e4);
            }
        }

        @Override // com.google.android.exoplayer2.audio.m0.a
        public void b(int i4, int i10, int i11) {
            try {
                e();
            } catch (IOException e4) {
                com.google.android.exoplayer2.util.w.e(f21320j, "Error resetting", e4);
            }
            this.f21327d = i4;
            this.f21328e = i10;
            this.f21329f = i11;
        }
    }

    public m0(a aVar) {
        this.f21319i = (a) com.google.android.exoplayer2.util.a.g(aVar);
    }

    private void m() {
        if (a()) {
            a aVar = this.f21319i;
            AudioProcessor.a aVar2 = this.f21418b;
            aVar.b(aVar2.f21008a, aVar2.f21009b, aVar2.f21010c);
        }
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void d(ByteBuffer byteBuffer) {
        int remaining = byteBuffer.remaining();
        if (remaining == 0) {
            return;
        }
        this.f21319i.a(byteBuffer.asReadOnlyBuffer());
        l(remaining).put(byteBuffer).flip();
    }

    @Override // com.google.android.exoplayer2.audio.z
    public AudioProcessor.a h(AudioProcessor.a aVar) {
        return aVar;
    }

    @Override // com.google.android.exoplayer2.audio.z
    protected void i() {
        m();
    }

    @Override // com.google.android.exoplayer2.audio.z
    protected void j() {
        m();
    }

    @Override // com.google.android.exoplayer2.audio.z
    protected void k() {
        m();
    }
}
