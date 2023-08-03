package com.ksyun.media.streamer.filter.audio;

import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class KSYAudioEffectFilter extends AudioFilterBase {
    public static int AUDIO_EFFECT_TYPE_FEMALE = 10;
    public static int AUDIO_EFFECT_TYPE_HEROIC = 12;
    public static int AUDIO_EFFECT_TYPE_MALE = 11;
    public static int AUDIO_EFFECT_TYPE_PITCH = 9;
    public static int AUDIO_EFFECT_TYPE_ROBOT = 13;
    public static int AUDIO_PITCH_LEVEL_1 = -3;
    public static int AUDIO_PITCH_LEVEL_2 = -2;
    public static int AUDIO_PITCH_LEVEL_3 = -1;
    public static int AUDIO_PITCH_LEVEL_4 = 0;
    public static int AUDIO_PITCH_LEVEL_5 = 1;
    public static int AUDIO_PITCH_LEVEL_6 = 2;
    public static int AUDIO_PITCH_LEVEL_7 = 3;
    public static int Audio_EFFECT_TYPE_USER_DEFINE = 20;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46284a = "KSYAudioEffectFilter";

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f46285b = false;

    /* renamed from: c  reason: collision with root package name */
    private KSYAudioEffectWrapper f46286c;

    /* renamed from: d  reason: collision with root package name */
    private AudioBufFormat f46287d;

    /* renamed from: e  reason: collision with root package name */
    private int f46288e;

    /* renamed from: f  reason: collision with root package name */
    private int f46289f = AUDIO_PITCH_LEVEL_4;

    public KSYAudioEffectFilter(int i4) {
        this.f46288e = i4;
        this.f46286c = new KSYAudioEffectWrapper(i4);
    }

    public void addEffect(String str, int i4, String[] strArr) {
        if (strArr != null) {
            this.f46286c.a(str, i4, strArr);
            return;
        }
        throw new IllegalArgumentException("argv must not been null");
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected void attachTo(int i4, long j4, boolean z9) {
        this.f46286c.a(i4, j4, z9);
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected AudioBufFrame doFilter(AudioBufFrame audioBufFrame) {
        if (this.f46286c != null) {
            long nanoTime = (System.nanoTime() / 1000) / 1000;
            this.f46286c.a(audioBufFrame.buf);
            long nanoTime2 = (System.nanoTime() / 1000) / 1000;
        }
        return audioBufFrame;
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected AudioBufFormat doFormatChanged(AudioBufFormat audioBufFormat) {
        this.f46287d = audioBufFormat;
        this.f46286c.a(audioBufFormat);
        this.f46286c.a(this.f46288e);
        return audioBufFormat;
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected void doRelease() {
        KSYAudioEffectWrapper kSYAudioEffectWrapper = this.f46286c;
        if (kSYAudioEffectWrapper != null) {
            kSYAudioEffectWrapper.b();
            this.f46286c = null;
        }
    }

    public int getAudioEffectType() {
        return this.f46288e;
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected long getNativeInstance() {
        return this.f46286c.c();
    }

    public int getPitchLevel() {
        return this.f46289f;
    }

    @Override // com.ksyun.media.streamer.filter.audio.AudioFilterBase
    protected int readNative(ByteBuffer byteBuffer, int i4) {
        return this.f46286c.a(byteBuffer, i4);
    }

    public void removeEffects() {
        this.f46286c.a();
    }

    public void setAudioEffectType(int i4) {
        this.f46288e = i4;
    }

    public void setPitchLevel(int i4) {
        this.f46288e = AUDIO_EFFECT_TYPE_PITCH;
        this.f46289f = i4;
        this.f46286c.b(i4);
    }
}
