package com.ksyun.media.streamer.encoder;

import android.util.Log;
import com.ksyun.media.streamer.encoder.AVEncoderWrapper;
import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.framework.AudioCodecFormat;
import com.ksyun.media.streamer.framework.AudioPacket;
import com.ksyun.media.streamer.util.FrameBufferCache;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AVCodecAudioEncoder extends Encoder<AudioBufFrame, AudioPacket> implements AVEncoderWrapper.a {

    /* renamed from: k  reason: collision with root package name */
    private static final String f46007k = "AVCodecAudioEncoder";

    /* renamed from: l  reason: collision with root package name */
    private static final boolean f46008l = false;

    /* renamed from: m  reason: collision with root package name */
    private static final int f46009m = 16;

    /* renamed from: n  reason: collision with root package name */
    private static final int f46010n = 8192;

    /* renamed from: o  reason: collision with root package name */
    private FrameBufferCache f46011o = new FrameBufferCache(16, 8192);

    /* renamed from: p  reason: collision with root package name */
    private AVEncoderWrapper f46012p;

    /* renamed from: q  reason: collision with root package name */
    private AudioCodecFormat f46013q;

    @Override // com.ksyun.media.streamer.encoder.AVEncoderWrapper.a
    public void onEncoded(long j4, ByteBuffer byteBuffer, long j10, long j11, int i4) {
        if ((i4 & 2) != 0) {
            AudioCodecFormat audioCodecFormat = new AudioCodecFormat((AudioCodecFormat) this.f46078b);
            this.f46013q = audioCodecFormat;
            audioCodecFormat.avCodecParPtr = this.f46012p.c();
            c(this.f46013q);
        }
        AudioPacket audioPacket = new AudioPacket(this.f46013q, byteBuffer, j11, j4);
        audioPacket.flags = i4;
        a((AVCodecAudioEncoder) audioPacket);
        audioPacket.unref();
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected int a(Object obj) {
        int i4;
        if (obj instanceof AudioCodecFormat) {
            AudioCodecFormat audioCodecFormat = (AudioCodecFormat) obj;
            AVEncoderWrapper aVEncoderWrapper = new AVEncoderWrapper();
            this.f46012p = aVEncoderWrapper;
            aVEncoderWrapper.a(this);
            int i10 = audioCodecFormat.profile;
            if (i10 == 28 && audioCodecFormat.channels == 1) {
                Log.w(f46007k, "set aac_he_v2 for mono audio, fallback to aac_he");
                i4 = 4;
            } else {
                i4 = i10;
            }
            return this.f46012p.a(256, audioCodecFormat.bitrate, audioCodecFormat.sampleFmt, audioCodecFormat.sampleRate, audioCodecFormat.channels, i4);
        }
        return -1002;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    public void b() {
        this.f46012p.a(null, 0L, 0);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    /* renamed from: c  reason: avoid collision after fix types in other method */
    public void a(AudioBufFrame audioBufFrame) {
        ByteBuffer byteBuffer;
        if (audioBufFrame == null || (byteBuffer = audioBufFrame.buf) == null) {
            return;
        }
        this.f46011o.offer(byteBuffer);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    public int b(AudioBufFrame audioBufFrame) {
        if (audioBufFrame == null || audioBufFrame.buf == null) {
            return 0;
        }
        if (this.f46081e) {
            for (int i4 = 0; i4 < audioBufFrame.buf.limit(); i4++) {
                audioBufFrame.buf.put(i4, (byte) 0);
            }
            audioBufFrame.buf.rewind();
        }
        int a10 = this.f46012p.a(audioBufFrame.buf, audioBufFrame.pts, audioBufFrame.flags);
        this.f46011o.offer(audioBufFrame.buf);
        return a10;
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected void a() {
        this.f46012p.a();
        this.f46012p.b();
        this.f46012p = null;
        onEncoded(0L, null, 0L, 0L, 4);
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected boolean a(Object obj, Object obj2) {
        AudioBufFormat audioBufFormat = (AudioBufFormat) obj;
        AudioCodecFormat audioCodecFormat = (AudioCodecFormat) obj2;
        audioCodecFormat.sampleFmt = audioBufFormat.sampleFormat;
        audioCodecFormat.sampleRate = audioBufFormat.sampleRate;
        audioCodecFormat.channels = audioBufFormat.channels;
        return true;
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected void a(int i4) {
        this.f46012p.a(i4);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    /* renamed from: a  reason: avoid collision after fix types in other method */
    public boolean c(AudioBufFrame audioBufFrame) {
        ByteBuffer byteBuffer;
        if (audioBufFrame != null && (byteBuffer = audioBufFrame.buf) != null) {
            ByteBuffer poll = this.f46011o.poll(byteBuffer.limit());
            if (poll == null) {
                Log.w(f46007k, "Audio frame dropped, size=" + audioBufFrame.buf.limit() + " pts=" + audioBufFrame.pts);
                return true;
            }
            poll.put(audioBufFrame.buf);
            poll.flip();
            audioBufFrame.buf.rewind();
            audioBufFrame.buf = poll;
        }
        return false;
    }
}
