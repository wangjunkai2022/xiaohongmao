package com.ksyun.media.streamer.filter.audio;

import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AudioReverbFilter extends AudioFilterBase {
    public static int AUDIO_REVERB_LEVEL_1 = 1;
    public static int AUDIO_REVERB_LEVEL_2 = 2;
    public static int AUDIO_REVERB_LEVEL_3 = 3;
    public static int AUDIO_REVERB_LEVEL_4 = 4;
    public static int AUDIO_REVERB_LEVEL_5 = 5;

    /* renamed from: a  reason: collision with root package name */
    private int f46277a = AUDIO_REVERB_LEVEL_3;

    /* renamed from: b  reason: collision with root package name */
    private boolean f46278b = false;

    /* renamed from: c  reason: collision with root package name */
    private AudioReverbWrap f46279c = new AudioReverbWrap();

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected void attachTo(int i4, long j4, boolean z9) {
        this.f46279c.a(i4, j4, z9);
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected AudioBufFrame doFilter(AudioBufFrame audioBufFrame) {
        this.f46279c.a(audioBufFrame.buf);
        return audioBufFrame;
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected AudioBufFormat doFormatChanged(AudioBufFormat audioBufFormat) {
        this.f46279c.a(audioBufFormat.sampleRate, audioBufFormat.channels);
        this.f46279c.a(this.f46277a);
        return audioBufFormat;
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected void doRelease() {
        this.f46278b = false;
        AudioReverbWrap audioReverbWrap = this.f46279c;
        if (audioReverbWrap != null) {
            audioReverbWrap.b();
            this.f46279c = null;
        }
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected long getNativeInstance() {
        return this.f46279c.a();
    }

    public int getReverbType() {
        return this.f46277a;
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected int readNative(ByteBuffer byteBuffer, int i4) {
        return this.f46279c.a(byteBuffer, i4);
    }

    public void setReverbLevel(int i4) {
        if (i4 != this.f46277a) {
            this.f46277a = i4;
            this.f46279c.a(i4);
            if (this.f46278b) {
                StatsLogReport.getInstance().updateAudioFilterType(getClass().getSimpleName(), String.valueOf(this.f46277a));
            }
        }
    }

    public void setTakeEffect(boolean z9) {
        this.f46278b = true;
    }
}
