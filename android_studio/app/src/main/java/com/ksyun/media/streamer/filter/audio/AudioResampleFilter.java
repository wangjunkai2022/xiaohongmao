package com.ksyun.media.streamer.filter.audio;

import a.f0;
import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AudioResampleFilter extends AudioFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private AudioResample f46275a = new AudioResample();

    /* renamed from: b  reason: collision with root package name */
    private AudioBufFormat f46276b;

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected void attachTo(int i4, long j4, boolean z9) {
        this.f46275a.a(i4, j4, z9);
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected AudioBufFrame doFilter(AudioBufFrame audioBufFrame) {
        ByteBuffer byteBuffer = audioBufFrame.buf;
        if (byteBuffer != null) {
            return new AudioBufFrame(this.f46276b, this.f46275a.a(byteBuffer), audioBufFrame.pts);
        }
        return audioBufFrame;
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected AudioBufFormat doFormatChanged(AudioBufFormat audioBufFormat) {
        if (this.f46276b != null) {
            this.f46275a.a(audioBufFormat.sampleFormat, audioBufFormat.sampleRate, audioBufFormat.channels);
            return this.f46276b;
        }
        throw new IllegalArgumentException("you must call setOutFormat first");
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected void doRelease() {
        AudioResample audioResample = this.f46275a;
        if (audioResample != null) {
            audioResample.b();
            this.f46275a = null;
        }
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected long getNativeInstance() {
        return this.f46275a.a();
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    public AudioBufFormat getOutFormat() {
        return this.f46276b;
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected int readNative(ByteBuffer byteBuffer, int i4) {
        return this.f46275a.a(byteBuffer, i4);
    }

    public void setOutFormat(@f0 AudioBufFormat audioBufFormat) {
        this.f46276b = audioBufFormat;
        this.f46275a.a(audioBufFormat.sampleRate, audioBufFormat.channels);
    }
}
