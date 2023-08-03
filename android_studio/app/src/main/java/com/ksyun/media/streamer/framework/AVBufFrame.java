package com.ksyun.media.streamer.framework;

import com.ksyun.media.streamer.util.FrameBufferCache;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AVBufFrame extends AVFrameBase {

    /* renamed from: a  reason: collision with root package name */
    private FrameBufferCache f46548a;
    public ByteBuffer buf;

    public AVBufFrame() {
        this.f46548a = null;
    }

    @Override // com.ksyun.media.streamer.framework.AVFrameBase
    public boolean isRefCounted() {
        return (this.f46548a == null || this.buf == null) ? false : true;
    }

    @Override // com.ksyun.media.streamer.framework.AVFrameBase
    public synchronized void ref() {
        if (isRefCounted()) {
            this.f46548a.ref(this.buf);
        }
    }

    @Override // com.ksyun.media.streamer.framework.AVFrameBase
    public synchronized void unref() {
        if (isRefCounted()) {
            this.f46548a.unref(this.buf);
        }
    }

    public AVBufFrame(FrameBufferCache frameBufferCache) {
        this.f46548a = frameBufferCache;
    }

    public AVBufFrame(AVBufFrame aVBufFrame) {
        if (aVBufFrame.isRefCounted()) {
            FrameBufferCache frameBufferCache = aVBufFrame.f46548a;
            this.f46548a = frameBufferCache;
            frameBufferCache.ref(aVBufFrame.buf);
        }
    }
}
