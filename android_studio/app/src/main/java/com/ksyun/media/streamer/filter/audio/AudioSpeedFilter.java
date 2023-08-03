package com.ksyun.media.streamer.filter.audio;

import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AudioSpeedFilter extends AudioFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private AVFilterWrapper f46283a;

    public AudioSpeedFilter() {
        AVFilterWrapper aVFilterWrapper = new AVFilterWrapper();
        this.f46283a = aVFilterWrapper;
        aVFilterWrapper.f46215a = getSrcPin();
    }

    public void config(AudioBufFormat audioBufFormat) {
        this.f46283a.a(audioBufFormat);
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected AudioBufFrame doFilter(AudioBufFrame audioBufFrame) {
        ByteBuffer byteBuffer = audioBufFrame.buf;
        if (byteBuffer != null) {
            this.f46283a.a(byteBuffer, audioBufFrame.pts);
            return null;
        }
        return audioBufFrame;
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected AudioBufFormat doFormatChanged(AudioBufFormat audioBufFormat) {
        config(audioBufFormat);
        return audioBufFormat;
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected void doRelease() {
        AVFilterWrapper aVFilterWrapper = this.f46283a;
        if (aVFilterWrapper != null) {
            aVFilterWrapper.c();
            this.f46283a = null;
        }
    }

    public void setSpeed(float f10) {
        this.f46283a.a(f10);
    }

    public void start() {
        this.f46283a.a();
    }

    public void stop() {
        this.f46283a.b();
    }
}
