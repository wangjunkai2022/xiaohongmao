package com.ksyun.media.streamer.filter.audio;

import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class APMFilter extends AudioFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private APMWrapper f46200a = new APMWrapper();

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected void attachTo(int i4, long j4, boolean z9) {
        this.f46200a.a(i4, j4, z9);
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected AudioBufFrame doFilter(AudioBufFrame audioBufFrame) {
        ByteBuffer a10 = this.f46200a.a(audioBufFrame.buf);
        return a10 == null ? audioBufFrame : new AudioBufFrame(this.f46200a.b(), a10, audioBufFrame.pts);
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected AudioBufFormat doFormatChanged(AudioBufFormat audioBufFormat) {
        if (audioBufFormat == null) {
            return null;
        }
        this.f46200a.a(audioBufFormat.sampleRate, audioBufFormat.channels);
        return audioBufFormat;
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected void doRelease() {
        APMWrapper aPMWrapper = this.f46200a;
        if (aPMWrapper != null) {
            aPMWrapper.c();
            this.f46200a = null;
        }
    }

    public int enableNs(boolean z9) {
        return this.f46200a.a(z9);
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected long getNativeInstance() {
        return this.f46200a.a();
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected int readNative(ByteBuffer byteBuffer, int i4) {
        return this.f46200a.a(byteBuffer, i4);
    }

    public int setNsLevel(int i4) {
        return this.f46200a.a(i4);
    }
}
