package com.koushikdutta.async;

import java.io.IOException;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.ServerSocketChannel;

/* loaded from: classes3.dex */
class ServerSocketChannelWrapper extends ChannelWrapper {

    /* renamed from: b  reason: collision with root package name */
    ServerSocketChannel f44305b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ServerSocketChannelWrapper(ServerSocketChannel serverSocketChannel) throws IOException {
        super(serverSocketChannel);
        this.f44305b = serverSocketChannel;
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public InetAddress a() {
        return this.f44305b.socket().getInetAddress();
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public int b() {
        return this.f44305b.socket().getLocalPort();
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public Object d() {
        return this.f44305b.socket();
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public boolean i() {
        return false;
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public SelectionKey k(Selector selector) throws ClosedChannelException {
        return this.f44305b.register(selector, 16);
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public void q() {
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public void r() {
    }

    @Override // java.nio.channels.ReadableByteChannel
    public int read(ByteBuffer byteBuffer) throws IOException {
        throw new IOException("Can't read ServerSocketChannel");
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public int s(ByteBuffer[] byteBufferArr) throws IOException {
        throw new IOException("Can't write ServerSocketChannel");
    }

    @Override // com.koushikdutta.async.ChannelWrapper
    public int write(ByteBuffer byteBuffer) throws IOException {
        throw new IOException("Can't write ServerSocketChannel");
    }

    @Override // java.nio.channels.ScatteringByteChannel
    public long read(ByteBuffer[] byteBufferArr) throws IOException {
        throw new IOException("Can't read ServerSocketChannel");
    }

    @Override // java.nio.channels.ScatteringByteChannel
    public long read(ByteBuffer[] byteBufferArr, int i4, int i10) throws IOException {
        throw new IOException("Can't read ServerSocketChannel");
    }
}
