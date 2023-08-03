package com.google.android.exoplayer2.util;

import android.os.SystemClock;
import androidx.annotation.GuardedBy;
import androidx.annotation.Nullable;
import com.google.android.exoplayer2.upstream.Loader;
import com.ksyun.media.player.KSYMediaMeta;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.util.Arrays;
import java.util.ConcurrentModificationException;

/* compiled from: SntpClient.java */
/* loaded from: classes2.dex */
public final class p0 {

    /* renamed from: a  reason: collision with root package name */
    public static final String f27655a = "time.android.com";

    /* renamed from: b  reason: collision with root package name */
    private static final int f27656b = 10000;

    /* renamed from: c  reason: collision with root package name */
    private static final int f27657c = 24;

    /* renamed from: d  reason: collision with root package name */
    private static final int f27658d = 32;

    /* renamed from: e  reason: collision with root package name */
    private static final int f27659e = 40;

    /* renamed from: f  reason: collision with root package name */
    private static final int f27660f = 48;

    /* renamed from: g  reason: collision with root package name */
    private static final int f27661g = 123;

    /* renamed from: h  reason: collision with root package name */
    private static final int f27662h = 3;

    /* renamed from: i  reason: collision with root package name */
    private static final int f27663i = 4;

    /* renamed from: j  reason: collision with root package name */
    private static final int f27664j = 5;

    /* renamed from: k  reason: collision with root package name */
    private static final int f27665k = 3;

    /* renamed from: l  reason: collision with root package name */
    private static final int f27666l = 3;

    /* renamed from: m  reason: collision with root package name */
    private static final int f27667m = 0;

    /* renamed from: n  reason: collision with root package name */
    private static final int f27668n = 15;

    /* renamed from: o  reason: collision with root package name */
    private static final long f27669o = 2208988800L;

    /* renamed from: p  reason: collision with root package name */
    private static final Object f27670p = new Object();

    /* renamed from: q  reason: collision with root package name */
    private static final Object f27671q = new Object();
    @GuardedBy("valueLock")

    /* renamed from: r  reason: collision with root package name */
    private static boolean f27672r = false;
    @GuardedBy("valueLock")

    /* renamed from: s  reason: collision with root package name */
    private static long f27673s = 0;
    @GuardedBy("valueLock")

    /* renamed from: t  reason: collision with root package name */
    private static String f27674t = "time.android.com";

    /* compiled from: SntpClient.java */
    /* loaded from: classes2.dex */
    public interface b {
        void a(IOException iOException);

        void b();
    }

    /* compiled from: SntpClient.java */
    /* loaded from: classes2.dex */
    private static final class c implements Loader.b<Loader.e> {
        @Nullable

        /* renamed from: a  reason: collision with root package name */
        private final b f27675a;

        public c(@Nullable b bVar) {
            this.f27675a = bVar;
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        public void i(Loader.e eVar, long j4, long j10, boolean z9) {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        public void k(Loader.e eVar, long j4, long j10) {
            if (this.f27675a != null) {
                if (!p0.k()) {
                    this.f27675a.a(new IOException(new ConcurrentModificationException()));
                } else {
                    this.f27675a.b();
                }
            }
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.b
        public Loader.c p(Loader.e eVar, long j4, long j10, IOException iOException, int i4) {
            b bVar = this.f27675a;
            if (bVar != null) {
                bVar.a(iOException);
            }
            return Loader.f26978k;
        }
    }

    /* compiled from: SntpClient.java */
    /* loaded from: classes2.dex */
    private static final class d implements Loader.e {
        private d() {
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.e
        public void a() throws IOException {
            synchronized (p0.f27670p) {
                synchronized (p0.f27671q) {
                    if (p0.f27672r) {
                        return;
                    }
                    long l10 = p0.l();
                    synchronized (p0.f27671q) {
                        long unused = p0.f27673s = l10;
                        boolean unused2 = p0.f27672r = true;
                    }
                }
            }
        }

        @Override // com.google.android.exoplayer2.upstream.Loader.e
        public void c() {
        }
    }

    private p0() {
    }

    private static void g(byte b10, byte b11, int i4, long j4) throws IOException {
        if (b10 == 3) {
            throw new IOException("SNTP: Unsynchronized server");
        }
        if (b11 != 4 && b11 != 5) {
            StringBuilder sb = new StringBuilder(26);
            sb.append("SNTP: Untrusted mode: ");
            sb.append((int) b11);
            throw new IOException(sb.toString());
        } else if (i4 != 0 && i4 <= 15) {
            if (j4 == 0) {
                throw new IOException("SNTP: Zero transmitTime");
            }
        } else {
            StringBuilder sb2 = new StringBuilder(36);
            sb2.append("SNTP: Untrusted stratum: ");
            sb2.append(i4);
            throw new IOException(sb2.toString());
        }
    }

    public static long h() {
        long j4;
        synchronized (f27671q) {
            j4 = f27672r ? f27673s : com.google.android.exoplayer2.i.f23649b;
        }
        return j4;
    }

    public static String i() {
        String str;
        synchronized (f27671q) {
            str = f27674t;
        }
        return str;
    }

    public static void j(@Nullable Loader loader, @Nullable b bVar) {
        if (k()) {
            if (bVar != null) {
                bVar.b();
                return;
            }
            return;
        }
        if (loader == null) {
            loader = new Loader("SntpClient");
        }
        loader.n(new d(), new c(bVar), 1);
    }

    public static boolean k() {
        boolean z9;
        synchronized (f27671q) {
            z9 = f27672r;
        }
        return z9;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static long l() throws IOException {
        InetAddress byName = InetAddress.getByName(i());
        DatagramSocket datagramSocket = new DatagramSocket();
        try {
            datagramSocket.setSoTimeout(10000);
            byte[] bArr = new byte[48];
            DatagramPacket datagramPacket = new DatagramPacket(bArr, 48, byName, 123);
            bArr[0] = com.google.common.base.c.E;
            long currentTimeMillis = System.currentTimeMillis();
            long elapsedRealtime = SystemClock.elapsedRealtime();
            p(bArr, 40, currentTimeMillis);
            datagramSocket.send(datagramPacket);
            datagramSocket.receive(new DatagramPacket(bArr, 48));
            long elapsedRealtime2 = SystemClock.elapsedRealtime();
            long j4 = currentTimeMillis + (elapsedRealtime2 - elapsedRealtime);
            long n9 = n(bArr, 24);
            long n10 = n(bArr, 32);
            long n11 = n(bArr, 40);
            g((byte) ((bArr[0] >> 6) & 3), (byte) (bArr[0] & 7), bArr[1] & 255, n11);
            long j10 = (j4 + (((n10 - n9) + (n11 - j4)) / 2)) - elapsedRealtime2;
            datagramSocket.close();
            return j10;
        } catch (Throwable th) {
            try {
                datagramSocket.close();
            } catch (Throwable th2) {
                th.addSuppressed(th2);
            }
            throw th;
        }
    }

    private static long m(byte[] bArr, int i4) {
        int i10 = bArr[i4];
        int i11 = bArr[i4 + 1];
        int i12 = bArr[i4 + 2];
        int i13 = bArr[i4 + 3];
        if ((i10 & 128) == 128) {
            i10 = (i10 & 127) + 128;
        }
        if ((i11 & 128) == 128) {
            i11 = (i11 & 127) + 128;
        }
        if ((i12 & 128) == 128) {
            i12 = (i12 & 127) + 128;
        }
        if ((i13 & 128) == 128) {
            i13 = (i13 & 127) + 128;
        }
        return (i10 << 24) + (i11 << 16) + (i12 << 8) + i13;
    }

    private static long n(byte[] bArr, int i4) {
        long m9 = m(bArr, i4);
        long m10 = m(bArr, i4 + 4);
        if (m9 == 0 && m10 == 0) {
            return 0L;
        }
        return ((m9 - f27669o) * 1000) + ((m10 * 1000) / KSYMediaMeta.AV_CH_WIDE_RIGHT);
    }

    public static void o(String str) {
        synchronized (f27671q) {
            if (!f27674t.equals(str)) {
                f27674t = str;
                f27672r = false;
            }
        }
    }

    private static void p(byte[] bArr, int i4, long j4) {
        if (j4 == 0) {
            Arrays.fill(bArr, i4, i4 + 8, (byte) 0);
            return;
        }
        long j10 = j4 / 1000;
        long j11 = j4 - (j10 * 1000);
        long j12 = j10 + f27669o;
        int i10 = i4 + 1;
        bArr[i4] = (byte) (j12 >> 24);
        int i11 = i10 + 1;
        bArr[i10] = (byte) (j12 >> 16);
        int i12 = i11 + 1;
        bArr[i11] = (byte) (j12 >> 8);
        int i13 = i12 + 1;
        bArr[i12] = (byte) (j12 >> 0);
        long j13 = (j11 * KSYMediaMeta.AV_CH_WIDE_RIGHT) / 1000;
        int i14 = i13 + 1;
        bArr[i13] = (byte) (j13 >> 24);
        int i15 = i14 + 1;
        bArr[i14] = (byte) (j13 >> 16);
        bArr[i15] = (byte) (j13 >> 8);
        bArr[i15 + 1] = (byte) (Math.random() * 255.0d);
    }
}
