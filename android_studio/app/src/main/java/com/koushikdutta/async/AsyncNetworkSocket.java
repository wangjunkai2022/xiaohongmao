package com.koushikdutta.async;

import android.util.Log;
import com.koushikdutta.async.callback.CompletedCallback;
import com.koushikdutta.async.callback.DataCallback;
import com.koushikdutta.async.callback.WritableCallback;
import com.koushikdutta.async.util.Allocator;
import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.CancelledKeyException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.SocketChannel;

/* loaded from: classes3.dex */
public class AsyncNetworkSocket implements AsyncSocket {

    /* renamed from: a  reason: collision with root package name */
    InetSocketAddress f44095a;

    /* renamed from: b  reason: collision with root package name */
    private ChannelWrapper f44096b;

    /* renamed from: c  reason: collision with root package name */
    private SelectionKey f44097c;

    /* renamed from: d  reason: collision with root package name */
    private AsyncServer f44098d;

    /* renamed from: f  reason: collision with root package name */
    Allocator f44100f;

    /* renamed from: g  reason: collision with root package name */
    boolean f44101g;

    /* renamed from: h  reason: collision with root package name */
    WritableCallback f44102h;

    /* renamed from: i  reason: collision with root package name */
    DataCallback f44103i;

    /* renamed from: j  reason: collision with root package name */
    CompletedCallback f44104j;

    /* renamed from: k  reason: collision with root package name */
    boolean f44105k;

    /* renamed from: l  reason: collision with root package name */
    Exception f44106l;

    /* renamed from: m  reason: collision with root package name */
    private CompletedCallback f44107m;

    /* renamed from: e  reason: collision with root package name */
    private ByteBufferList f44099e = new ByteBufferList();

    /* renamed from: n  reason: collision with root package name */
    boolean f44108n = false;

    private void P(int i4) throws IOException {
        if (!this.f44097c.isValid()) {
            throw new IOException(new CancelledKeyException());
        }
        if (i4 > 0) {
            SelectionKey selectionKey = this.f44097c;
            selectionKey.interestOps(selectionKey.interestOps() | 4);
            return;
        }
        SelectionKey selectionKey2 = this.f44097c;
        selectionKey2.interestOps(selectionKey2.interestOps() & (-5));
    }

    private void x0() {
        if (this.f44099e.w()) {
            Util.a(this, this.f44099e);
        }
    }

    private void y() {
        this.f44097c.cancel();
        try {
            this.f44096b.close();
        } catch (IOException unused) {
        }
    }

    @Override // com.koushikdutta.async.DataEmitter
    public CompletedCallback B() {
        return this.f44107m;
    }

    public InetAddress E() {
        return this.f44096b.a();
    }

    public int K() {
        return this.f44096b.b();
    }

    public InetSocketAddress N() {
        return this.f44095a;
    }

    public Object O() {
        return z().d();
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void X(CompletedCallback completedCallback) {
        this.f44107m = completedCallback;
    }

    @Override // com.koushikdutta.async.DataSink
    public void a0(final ByteBufferList byteBufferList) {
        if (this.f44098d.A() != Thread.currentThread()) {
            this.f44098d.i0(new Runnable() { // from class: com.koushikdutta.async.AsyncNetworkSocket.1
                @Override // java.lang.Runnable
                public void run() {
                    AsyncNetworkSocket.this.a0(byteBufferList);
                }
            });
        } else if (this.f44096b.i()) {
            try {
                int P = byteBufferList.P();
                ByteBuffer[] o9 = byteBufferList.o();
                this.f44096b.s(o9);
                byteBufferList.d(o9);
                P(byteBufferList.P());
                this.f44098d.Y(P - byteBufferList.P());
            } catch (IOException e4) {
                y();
                v0(e4);
                p0(e4);
            }
        }
    }

    @Override // com.koushikdutta.async.AsyncSocket, com.koushikdutta.async.DataEmitter, com.koushikdutta.async.DataSink
    public AsyncServer b() {
        return this.f44098d;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void b0(DataCallback dataCallback) {
        this.f44103i = dataCallback;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void close() {
        y();
        p0(null);
    }

    public void d0() {
        if (!this.f44096b.h()) {
            SelectionKey selectionKey = this.f44097c;
            selectionKey.interestOps(selectionKey.interestOps() & (-5));
        }
        WritableCallback writableCallback = this.f44102h;
        if (writableCallback != null) {
            writableCallback.a();
        }
    }

    @Override // com.koushikdutta.async.DataSink
    public void e0(WritableCallback writableCallback) {
        this.f44102h = writableCallback;
    }

    @Override // com.koushikdutta.async.DataSink
    public CompletedCallback f0() {
        return this.f44104j;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public boolean h0() {
        return this.f44096b.h();
    }

    @Override // com.koushikdutta.async.DataEmitter
    public boolean i() {
        return this.f44108n;
    }

    @Override // com.koushikdutta.async.DataSink
    public boolean isOpen() {
        return this.f44096b.i() && this.f44097c.isValid();
    }

    @Override // com.koushikdutta.async.DataSink
    public void j() {
        this.f44096b.r();
    }

    @Override // com.koushikdutta.async.DataSink
    public void j0(CompletedCallback completedCallback) {
        this.f44104j = completedCallback;
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void k() {
        if (this.f44098d.A() != Thread.currentThread()) {
            this.f44098d.i0(new Runnable() { // from class: com.koushikdutta.async.AsyncNetworkSocket.3
                @Override // java.lang.Runnable
                public void run() {
                    AsyncNetworkSocket.this.k();
                }
            });
        } else if (this.f44108n) {
            this.f44108n = false;
            try {
                SelectionKey selectionKey = this.f44097c;
                selectionKey.interestOps(selectionKey.interestOps() | 1);
            } catch (Exception unused) {
            }
            x0();
            if (isOpen()) {
                return;
            }
            v0(this.f44106l);
        }
    }

    @Override // com.koushikdutta.async.DataEmitter
    public String n() {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public int o0() {
        long j4;
        int i4;
        x0();
        boolean z9 = false;
        if (this.f44108n) {
            return 0;
        }
        ByteBuffer a10 = this.f44100f.a();
        try {
            j4 = this.f44096b.read(a10);
        } catch (Exception e4) {
            y();
            v0(e4);
            p0(e4);
            j4 = -1;
        }
        int i10 = (j4 > 0L ? 1 : (j4 == 0L ? 0 : -1));
        if (i10 < 0) {
            y();
            z9 = true;
            i4 = 0;
        } else {
            i4 = (int) (0 + j4);
        }
        if (i10 > 0) {
            this.f44100f.g(j4);
            a10.flip();
            this.f44099e.b(a10);
            Util.a(this, this.f44099e);
        } else {
            ByteBufferList.M(a10);
        }
        if (z9) {
            v0(null);
            p0(null);
        }
        return i4;
    }

    protected void p0(Exception exc) {
        if (this.f44101g) {
            return;
        }
        this.f44101g = true;
        CompletedCallback completedCallback = this.f44104j;
        if (completedCallback != null) {
            completedCallback.g(exc);
            this.f44104j = null;
        }
    }

    @Override // com.koushikdutta.async.DataEmitter
    public void pause() {
        if (this.f44098d.A() != Thread.currentThread()) {
            this.f44098d.i0(new Runnable() { // from class: com.koushikdutta.async.AsyncNetworkSocket.2
                @Override // java.lang.Runnable
                public void run() {
                    AsyncNetworkSocket.this.pause();
                }
            });
        } else if (this.f44108n) {
        } else {
            this.f44108n = true;
            try {
                SelectionKey selectionKey = this.f44097c;
                selectionKey.interestOps(selectionKey.interestOps() & (-2));
            } catch (Exception unused) {
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void q(DatagramChannel datagramChannel) throws IOException {
        this.f44096b = new DatagramChannelWrapper(datagramChannel);
        this.f44100f = new Allocator(8192);
    }

    @Override // com.koushikdutta.async.DataEmitter
    public DataCallback r0() {
        return this.f44103i;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void s(SocketChannel socketChannel, InetSocketAddress inetSocketAddress) throws IOException {
        this.f44095a = inetSocketAddress;
        this.f44100f = new Allocator();
        this.f44096b = new SocketChannelWrapper(socketChannel);
    }

    void t0(Exception exc) {
        if (this.f44105k) {
            return;
        }
        this.f44105k = true;
        CompletedCallback completedCallback = this.f44107m;
        if (completedCallback != null) {
            completedCallback.g(exc);
        } else if (exc != null) {
            Log.e(AsyncServer.f44156g, "Unhandled exception", exc);
        }
    }

    @Override // com.koushikdutta.async.DataSink
    public WritableCallback v() {
        return this.f44102h;
    }

    void v0(Exception exc) {
        if (this.f44099e.w()) {
            this.f44106l = exc;
        } else {
            t0(exc);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public void w0(AsyncServer asyncServer, SelectionKey selectionKey) {
        this.f44098d = asyncServer;
        this.f44097c = selectionKey;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelWrapper z() {
        return this.f44096b;
    }
}
