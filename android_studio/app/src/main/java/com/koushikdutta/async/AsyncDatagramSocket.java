package com.koushikdutta.async;

import java.io.IOException;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AsyncDatagramSocket extends AsyncNetworkSocket {
    public void A0(final String str, final int i4, final ByteBuffer byteBuffer) {
        if (b().A() != Thread.currentThread()) {
            b().i0(new Runnable() { // from class: com.koushikdutta.async.AsyncDatagramSocket.1
                @Override // java.lang.Runnable
                public void run() {
                    AsyncDatagramSocket.this.A0(str, i4, byteBuffer);
                }
            });
            return;
        }
        try {
            ((DatagramChannelWrapper) z()).f44252b.send(byteBuffer, new InetSocketAddress(str, i4));
        } catch (IOException unused) {
        }
    }

    public void B0(final InetSocketAddress inetSocketAddress, final ByteBuffer byteBuffer) {
        if (b().A() != Thread.currentThread()) {
            b().i0(new Runnable() { // from class: com.koushikdutta.async.AsyncDatagramSocket.2
                @Override // java.lang.Runnable
                public void run() {
                    AsyncDatagramSocket.this.B0(inetSocketAddress, byteBuffer);
                }
            });
            return;
        }
        try {
            ((DatagramChannelWrapper) z()).f44252b.send(byteBuffer, new InetSocketAddress(inetSocketAddress.getHostName(), inetSocketAddress.getPort()));
        } catch (IOException unused) {
        }
    }

    @Override // com.koushikdutta.async.AsyncNetworkSocket
    public InetSocketAddress N() {
        if (isOpen()) {
            return super.N();
        }
        return ((DatagramChannelWrapper) z()).A();
    }

    public void y0(InetSocketAddress inetSocketAddress) throws IOException {
        this.f44095a = inetSocketAddress;
        ((DatagramChannelWrapper) z()).f44252b.connect(inetSocketAddress);
    }

    public void z0() throws IOException {
        this.f44095a = null;
        ((DatagramChannelWrapper) z()).y();
    }
}
