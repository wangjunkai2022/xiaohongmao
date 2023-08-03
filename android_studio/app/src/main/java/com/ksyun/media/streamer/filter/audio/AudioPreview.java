package com.ksyun.media.streamer.filter.audio;

import android.content.Context;
import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.logstats.StatsConstant;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AudioPreview extends AudioFilterBase {

    /* renamed from: a  reason: collision with root package name */
    private static final String f46270a = "AudioPreview";

    /* renamed from: b  reason: collision with root package name */
    private Context f46271b;

    /* renamed from: c  reason: collision with root package name */
    private AudioSLPlayer f46272c = new AudioSLPlayer();

    /* renamed from: d  reason: collision with root package name */
    private boolean f46273d;

    public AudioPreview(Context context) {
        this.f46271b = context;
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected void attachTo(int i4, long j4, boolean z9) {
        this.f46272c.a(i4, j4, z9);
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected AudioBufFrame doFilter(AudioBufFrame audioBufFrame) {
        this.f46272c.a(audioBufFrame.buf, !this.f46273d);
        return audioBufFrame;
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected AudioBufFormat doFormatChanged(AudioBufFormat audioBufFormat) {
        this.f46272c.a(audioBufFormat.sampleRate, audioBufFormat.channels, com.ksyun.media.streamer.util.audio.a.a(this.f46271b, audioBufFormat.sampleRate), 200);
        return audioBufFormat;
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected void doRelease() {
        this.f46272c.c();
        this.f46272c.f();
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected long getNativeInstance() {
        return this.f46272c.a();
    }

    public void pause() {
        this.f46272c.d();
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected int readNative(ByteBuffer byteBuffer, int i4) {
        return this.f46272c.a(byteBuffer, i4);
    }

    public void resume() {
        this.f46272c.e();
    }

    public void setBlockingMode(boolean z9) {
        this.f46273d = z9;
    }

    public void setMute(boolean z9) {
        this.f46272c.b(z9);
    }

    public void start() {
        this.f46272c.b();
        StatsLogReport.getInstance().updateFunctionPoint(StatsConstant.FUNCTION_AUDIOPREVIEW);
    }

    public void stop() {
        this.f46272c.c();
    }
}
