package com.ksyun.media.streamer.framework;

import com.ksyun.media.streamer.util.AVPacketUtil;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AVPacketBase extends AVFrameBase {

    /* renamed from: a  reason: collision with root package name */
    private long f46549a;

    /* renamed from: b  reason: collision with root package name */
    private int f46550b;
    public ByteBuffer buf;
    public long dts;

    public AVPacketBase(long j4) {
        this.f46549a = 0L;
        this.f46550b = 0;
        if (j4 != 0) {
            this.f46549a = j4;
            this.f46550b = 1;
        }
    }

    public long getAvPacketOpaque() {
        return this.f46549a;
    }

    @Override // com.ksyun.media.streamer.framework.AVFrameBase
    public boolean isRefCounted() {
        return this.f46549a != 0;
    }

    @Override // com.ksyun.media.streamer.framework.AVFrameBase
    public void ref() {
        if (this.f46549a != 0) {
            this.f46550b++;
        }
    }

    @Override // com.ksyun.media.streamer.framework.AVFrameBase
    public void unref() {
        int i4;
        long j4 = this.f46549a;
        if (j4 == 0 || (i4 = this.f46550b) <= 0) {
            return;
        }
        int i10 = i4 - 1;
        this.f46550b = i10;
        if (i10 == 0) {
            AVPacketUtil.free(j4);
            this.f46549a = 0L;
        }
    }

    public AVPacketBase(AVPacketBase aVPacketBase) {
        this.f46549a = 0L;
        this.f46550b = 0;
        long j4 = aVPacketBase.f46549a;
        if (j4 != 0) {
            this.f46549a = AVPacketUtil.clone(j4);
            this.f46550b = 1;
        }
    }

    public AVPacketBase() {
        this.f46549a = 0L;
        this.f46550b = 0;
    }
}
