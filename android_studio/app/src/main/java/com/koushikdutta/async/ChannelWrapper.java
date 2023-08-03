package com.koushikdutta.async;

import java.io.IOException;
import java.net.InetAddress;
import java.nio.ByteBuffer;
import java.nio.channels.ClosedChannelException;
import java.nio.channels.ReadableByteChannel;
import java.nio.channels.ScatteringByteChannel;
import java.nio.channels.SelectionKey;
import java.nio.channels.Selector;
import java.nio.channels.spi.AbstractSelectableChannel;

/* loaded from: classes3.dex */
abstract class ChannelWrapper implements ReadableByteChannel, ScatteringByteChannel {

    /* renamed from: a  reason: collision with root package name */
    private AbstractSelectableChannel f44245a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public ChannelWrapper(AbstractSelectableChannel abstractSelectableChannel) throws IOException {
        abstractSelectableChannel.configureBlocking(false);
        this.f44245a = abstractSelectableChannel;
    }

    public abstract InetAddress a();

    public abstract int b();

    @Override // java.nio.channels.Channel, java.io.Closeable, java.lang.AutoCloseable
    public void close() throws IOException {
        this.f44245a.close();
    }

    public abstract Object d();

    public boolean h() {
        return false;
    }

    public abstract boolean i();

    @Override // java.nio.channels.Channel
    public boolean isOpen() {
        return this.f44245a.isOpen();
    }

    public abstract SelectionKey k(Selector selector) throws ClosedChannelException;

    public SelectionKey p(Selector selector, int i4) throws ClosedChannelException {
        return this.f44245a.register(selector, i4);
    }

    public abstract void q();

    public abstract void r();

    public abstract int s(ByteBuffer[] byteBufferArr) throws IOException;

    public abstract int write(ByteBuffer byteBuffer) throws IOException;
}
