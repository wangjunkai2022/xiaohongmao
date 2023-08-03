package com.koushikdutta.async;

import java.io.IOException;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.SocketChannel;

/* loaded from: classes3.dex */
class SocketChannelWrapper extends ChannelWrapper {

    /* renamed from: b  reason: collision with root package name */
    SocketChannel f44306b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public SocketChannelWrapper(SocketChannel socketChannel) throws IOException {
        super(socketChannel);
        this.f44306b = socketChannel;
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public InetAddress a() {
        return this.f44306b.socket().getLocalAddress();
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public int b() {
        return this.f44306b.socket().getLocalPort();
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public Object d() {
        return this.f44306b.socket();
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public boolean i() {
        return this.f44306b.isConnected();
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public SelectionKey k(Selector selector) throws ClosedChannelException {
        return p(selector, 8);
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public void q() {
        try {
            this.f44306b.socket().shutdownInput();
        } catch (Exception unused) {
        }
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public void r() {
        try {
            this.f44306b.socket().shutdownOutput();
        } catch (Exception unused) {
        }
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        return this.f44306b.read(byteBuffer);
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public int s(ByteBuffer[] byteBufferArr) throws IOException {
        return (int) this.f44306b.write(byteBufferArr);
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public int write(ByteBuffer byteBuffer) throws IOException {
        return this.f44306b.write(byteBuffer);
    }

    @Override // java.nio.channels.ScatteringByteChannel
    public long read(ByteBuffer[] byteBufferArr) throws IOException {
        return this.f44306b.read(byteBufferArr);
    }

    @Override // java.nio.channels.ScatteringByteChannel
    public long read(ByteBuffer[] byteBufferArr, int i4, int i10) throws IOException {
        return this.f44306b.read(byteBufferArr, i4, i10);
    }
}
