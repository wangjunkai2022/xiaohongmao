package com.ksyun.media.streamer.filter.audio;

import android.media.AudioTrack;
import java.nio.ByteBuffer;

/* compiled from: AudioTrackPlayer.java */
/* loaded from: classes3.dex */
public class c implements d {

    /* renamed from: a  reason: collision with root package name */
    private AudioTrack f46292a;

    /* renamed from: b  reason: collision with root package name */
    private short[] f46293b;

    /* renamed from: c  reason: collision with root package name */
    private boolean f46294c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f46295d;

    @Override // com.ksyun.media.streamer.filter.audio.d
    public synchronized int a(int i4, int i10, int i11, int i12) {
        AudioTrack audioTrack = this.f46292a;
        if (audioTrack != null) {
            audioTrack.release();
        }
        int i13 = i10 == 1 ? 4 : 12;
        AudioTrack audioTrack2 = new AudioTrack(3, i4, i13, 2, AudioTrack.getMinBufferSize(i4, i13, 2), 1);
        this.f46292a = audioTrack2;
        if (this.f46294c) {
            audioTrack2.setStereoVolume(0.0f, 0.0f);
        }
        if (this.f46295d) {
            this.f46292a.play();
        }
        return 0;
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public long a() {
        return 0L;
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public synchronized void b(boolean z9) {
        AudioTrack audioTrack = this.f46292a;
        if (audioTrack != null) {
            float f10 = z9 ? 0.0f : 1.0f;
            audioTrack.setStereoVolume(f10, f10);
        }
        this.f46294c = z9;
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public synchronized int c() {
        AudioTrack audioTrack = this.f46292a;
        if (audioTrack != null) {
            audioTrack.stop();
        }
        this.f46295d = false;
        this.f46293b = null;
        return 0;
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public int d() {
        AudioTrack audioTrack = this.f46292a;
        if (audioTrack != null) {
            audioTrack.pause();
            return 0;
        }
        return 0;
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public int e() {
        AudioTrack audioTrack = this.f46292a;
        if (audioTrack != null) {
            audioTrack.play();
            return 0;
        }
        return 0;
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public synchronized void f() {
        AudioTrack audioTrack = this.f46292a;
        if (audioTrack != null) {
            audioTrack.release();
            this.f46292a = null;
        }
        this.f46293b = null;
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public synchronized int b() {
        AudioTrack audioTrack = this.f46292a;
        if (audioTrack != null) {
            audioTrack.play();
        }
        this.f46295d = true;
        return 0;
    }

    @Override // com.ksyun.media.streamer.filter.audio.d
    public synchronized int a(ByteBuffer byteBuffer) {
        if (byteBuffer != null) {
            if (this.f46292a != null) {
                int limit = byteBuffer.limit() / 2;
                short[] sArr = this.f46293b;
                if (sArr == null || sArr.length < limit) {
                    this.f46293b = new short[limit];
                }
                byteBuffer.asShortBuffer().get(this.f46293b, 0, limit);
                return this.f46292a.write(this.f46293b, 0, limit);
            }
        }
        return 0;
    }
}
