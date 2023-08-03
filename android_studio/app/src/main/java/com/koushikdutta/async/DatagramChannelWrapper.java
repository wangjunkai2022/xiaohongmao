package com.koushikdutta.async;

import java.io.IOException;
import java.net.InetAddress;
import java.net.InetSocketAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.DatagramChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;

/* loaded from: classes3.dex */
class DatagramChannelWrapper extends ChannelWrapper {

    /* renamed from: b  reason: collision with root package name */
    DatagramChannel f44252b;

    /* renamed from: c  reason: collision with root package name */
    InetSocketAddress f44253c;

    /* JADX INFO: Access modifiers changed from: package-private */
    public DatagramChannelWrapper(DatagramChannel datagramChannel) throws IOException {
        super(datagramChannel);
        this.f44252b = datagramChannel;
    }

    public InetSocketAddress A() {
        return this.f44253c;
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public InetAddress a() {
        return this.f44252b.socket().getLocalAddress();
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public int b() {
        return this.f44252b.socket().getLocalPort();
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public Object d() {
        return this.f44252b.socket();
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public boolean h() {
        return true;
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public boolean i() {
        return this.f44252b.isConnected();
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public SelectionKey k(Selector selector) throws ClosedChannelException {
        return p(selector, 1);
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public SelectionKey p(Selector selector, int i4) throws ClosedChannelException {
        return this.f44252b.register(selector, i4);
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public void q() {
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public void r() {
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        if (!i()) {
            int position = byteBuffer.position();
            InetSocketAddress inetSocketAddress = (InetSocketAddress) this.f44252b.receive(byteBuffer);
            this.f44253c = inetSocketAddress;
            if (inetSocketAddress == null) {
                return -1;
            }
            return byteBuffer.position() - position;
        }
        this.f44253c = null;
        return this.f44252b.read(byteBuffer);
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public int s(ByteBuffer[] byteBufferArr) throws IOException {
        return (int) this.f44252b.write(byteBufferArr);
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public int write(ByteBuffer byteBuffer) throws IOException {
        return this.f44252b.write(byteBuffer);
    }

    public void y() throws IOException {
        this.f44252b.disconnect();
    }

    @Override // java.nio.channels.ScatteringByteChannel
    public long read(ByteBuffer[] byteBufferArr) throws IOException {
        return this.f44252b.read(byteBufferArr);
    }

    @Override // java.nio.channels.ScatteringByteChannel
    public long read(ByteBuffer[] byteBufferArr, int i4, int i10) throws IOException {
        return this.f44252b.read(byteBufferArr, i4, i10);
    }
}
