package com.ksyun.media.streamer.filter.audio;

import com.ksyun.media.streamer.framework.AVConst;
import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.util.LibraryLoader;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
class KSYAudioEffectWrapper {

    /* renamed from: a  reason: collision with root package name */
    private AudioBufFormat f46290a;

    /* renamed from: b  reason: collision with root package name */
    private long f46291b;

    /* loaded from: classes3.dex */
    public static class EffectOption {
        String option;

        public EffectOption(String str) {
            this.option = str;
        }
    }

    static {
        LibraryLoader.load();
    }

    public KSYAudioEffectWrapper(int i4) {
        this.f46291b = 0L;
        long native_init = native_init();
        this.f46291b = native_init;
        native_set_effect_type(native_init, i4);
    }

    private native void attachTo(long j4, int i4, long j10, boolean z9);

    private native void native_add_effect(long j4, String str, int i4, EffectOption[] effectOptionArr);

    private native long native_init();

    private native void native_process(long j4, ByteBuffer byteBuffer, int i4);

    private native void native_quit(long j4);

    private native int native_read(long j4, ByteBuffer byteBuffer, int i4);

    private native void native_remove_effects(long j4);

    private native void native_set_audio_format(long j4, int i4, int i10, int i11);

    private native void native_set_effect_type(long j4, int i4);

    private native void native_set_pitch_level(long j4, int i4);

    public void a(AudioBufFormat audioBufFormat) {
        this.f46290a = audioBufFormat;
        native_set_audio_format(this.f46291b, AVConst.getBytesPerSample(audioBufFormat.sampleFormat) * 8, audioBufFormat.sampleRate, audioBufFormat.channels);
    }

    public void b(int i4) {
        native_set_pitch_level(this.f46291b, i4);
    }

    public long c() {
        return this.f46291b;
    }

    public void b() {
        native_quit(this.f46291b);
    }

    public void a(int i4) {
        native_set_effect_type(this.f46291b, i4);
    }

    public void a(String str, int i4, String[] strArr) {
        EffectOption[] effectOptionArr = new EffectOption[strArr.length];
        for (int i10 = 0; i10 < strArr.length; i10++) {
            effectOptionArr[i10] = new EffectOption(strArr[i10]);
        }
        native_add_effect(this.f46291b, str, i4, effectOptionArr);
    }

    public void a() {
        native_remove_effects(this.f46291b);
    }

    public void a(ByteBuffer byteBuffer) {
        if (byteBuffer == null || byteBuffer.limit() <= 0) {
            return;
        }
        native_process(this.f46291b, byteBuffer, byteBuffer.limit());
    }

    public void a(int i4, long j4, boolean z9) {
        attachTo(this.f46291b, i4, j4, z9);
    }

    public int a(ByteBuffer byteBuffer, int i4) {
        int native_read = native_read(this.f46291b, byteBuffer, i4);
        if (native_read >= 0) {
            byteBuffer.rewind();
            byteBuffer.limit(native_read);
        }
        return native_read;
    }
}
