package com.google.android.exoplayer2.upstream;

import android.net.Uri;
import androidx.annotation.Nullable;
import java.io.IOException;
import java.net.DatagramPacket;
import java.net.DatagramSocket;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.net.MulticastSocket;
import java.net.SocketException;

/* loaded from: classes2.dex */
public final class UdpDataSource extends f {

    /* renamed from: p  reason: collision with root package name */
    public static final int f27009p = 2000;

    /* renamed from: q  reason: collision with root package name */
    public static final int f27010q = 8000;

    /* renamed from: r  reason: collision with root package name */
    public static final int f27011r = -1;

    /* renamed from: f  reason: collision with root package name */
    private final int f27012f;

    /* renamed from: g  reason: collision with root package name */
    private final byte[] f27013g;

    /* renamed from: h  reason: collision with root package name */
    private final DatagramPacket f27014h;
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private Uri f27015i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private DatagramSocket f27016j;
    @Nullable

    /* renamed from: k  reason: collision with root package name */
    private MulticastSocket f27017k;
    @Nullable

    /* renamed from: l  reason: collision with root package name */
    private InetAddress f27018l;
    @Nullable

    /* renamed from: m  reason: collision with root package name */
    private InetSocketAddress f27019m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f27020n;

    /* renamed from: o  reason: collision with root package name */
    private int f27021o;

    /* loaded from: classes2.dex */
    public static final class UdpDataSourceException extends IOException {
        public UdpDataSourceException(IOException iOException) {
            super(iOException);
        }
    }

    public UdpDataSource() {
        this(2000);
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public long a(o oVar) throws UdpDataSourceException {
        Uri uri = oVar.f27288a;
        this.f27015i = uri;
        String host = uri.getHost();
        int port = this.f27015i.getPort();
        v(oVar);
        try {
            this.f27018l = InetAddress.getByName(host);
            this.f27019m = new InetSocketAddress(this.f27018l, port);
            if (this.f27018l.isMulticastAddress()) {
                MulticastSocket multicastSocket = new MulticastSocket(this.f27019m);
                this.f27017k = multicastSocket;
                multicastSocket.joinGroup(this.f27018l);
                this.f27016j = this.f27017k;
            } else {
                this.f27016j = new DatagramSocket(this.f27019m);
            }
            try {
                this.f27016j.setSoTimeout(this.f27012f);
                this.f27020n = true;
                w(oVar);
                return -1L;
            } catch (SocketException e4) {
                throw new UdpDataSourceException(e4);
            }
        } catch (IOException e10) {
            throw new UdpDataSourceException(e10);
        }
    }

    @Override // com.google.android.exoplayer2.upstream.m
    @Nullable
    public Uri c() {
        return this.f27015i;
    }

    @Override // com.google.android.exoplayer2.upstream.m
    public void close() {
        this.f27015i = null;
        MulticastSocket multicastSocket = this.f27017k;
        if (multicastSocket != null) {
            try {
                multicastSocket.leaveGroup(this.f27018l);
            } catch (IOException unused) {
            }
            this.f27017k = null;
        }
        DatagramSocket datagramSocket = this.f27016j;
        if (datagramSocket != null) {
            datagramSocket.close();
            this.f27016j = null;
        }
        this.f27018l = null;
        this.f27019m = null;
        this.f27021o = 0;
        if (this.f27020n) {
            this.f27020n = false;
            u();
        }
    }

    @Override // com.google.android.exoplayer2.upstream.i
    public int read(byte[] bArr, int i4, int i10) throws UdpDataSourceException {
        if (i10 == 0) {
            return 0;
        }
        if (this.f27021o == 0) {
            try {
                this.f27016j.receive(this.f27014h);
                int length = this.f27014h.getLength();
                this.f27021o = length;
                t(length);
            } catch (IOException e4) {
                throw new UdpDataSourceException(e4);
            }
        }
        int length2 = this.f27014h.getLength();
        int i11 = this.f27021o;
        int min = Math.min(i11, i10);
        System.arraycopy(this.f27013g, length2 - i11, bArr, i4, min);
        this.f27021o -= min;
        return min;
    }

    public int x() {
        DatagramSocket datagramSocket = this.f27016j;
        if (datagramSocket == null) {
            return -1;
        }
        return datagramSocket.getLocalPort();
    }

    public UdpDataSource(int i4) {
        this(i4, 8000);
    }

    public UdpDataSource(int i4, int i10) {
        super(true);
        this.f27012f = i10;
        byte[] bArr = new byte[i4];
        this.f27013g = bArr;
        this.f27014h = new DatagramPacket(bArr, 0, i4);
    }
}
