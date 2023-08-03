package com.ksyun.media.streamer.decoder;

import com.ksyun.media.streamer.decoder.AVDecoderWrapper;
import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.framework.AudioCodecFormat;
import com.ksyun.media.streamer.framework.AudioPacket;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AVCodecAudioDecoder extends Decoder<AudioPacket, AudioBufFrame> implements AVDecoderWrapper.a {

    /* renamed from: g  reason: collision with root package name */
    private static final String f45857g = "AVCodecAudioDecoder";

    /* renamed from: h  reason: collision with root package name */
    private AVDecoderWrapper f45858h;

    /* renamed from: i  reason: collision with root package name */
    private AudioCodecFormat f45859i;

    /* renamed from: j  reason: collision with root package name */
    private AudioBufFormat f45860j;

    @Override // com.ksyun.media.streamer.decoder.Decoder
    protected void b() {
        this.f45858h.a();
        this.f45858h.b();
        this.f45858h = null;
        onDecoded(null, 0L, 0L, 4);
    }

    @Override // com.ksyun.media.streamer.decoder.Decoder
    protected void c() {
        this.f45858h.a(null, 0L, 0, 0L);
    }

    @Override // com.ksyun.media.streamer.decoder.AVDecoderWrapper.a
    public void onDecoded(ByteBuffer byteBuffer, long j4, long j10, int i4) {
        AudioBufFrame audioBufFrame = new AudioBufFrame(this.f45860j, byteBuffer, j10);
        audioBufFrame.flags = i4;
        this.mSrcPin.onFrameAvailable(audioBufFrame);
    }

    @Override // com.ksyun.media.streamer.decoder.Decoder
    protected int a() {
        AudioCodecFormat audioCodecFormat = this.f45859i;
        if (audioCodecFormat != null) {
            long j4 = audioCodecFormat.avCodecParPtr;
            if (j4 != 0) {
                return this.f45858h.a(j4);
            }
            return -1;
        }
        return -1;
    }

    @Override // com.ksyun.media.streamer.decoder.Decoder
    protected void a(Object obj) {
        AVDecoderWrapper aVDecoderWrapper = new AVDecoderWrapper();
        this.f45858h = aVDecoderWrapper;
        aVDecoderWrapper.a(this);
        AudioCodecFormat audioCodecFormat = (AudioCodecFormat) obj;
        this.f45859i = audioCodecFormat;
        AudioBufFormat audioBufFormat = new AudioBufFormat(audioCodecFormat.sampleFmt, audioCodecFormat.sampleRate, audioCodecFormat.channels);
        this.f45860j = audioBufFormat;
        this.mSrcPin.onFormatChanged(audioBufFormat);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.decoder.Decoder
    public int a(AudioPacket audioPacket) {
        if (audioPacket.buf != null && audioPacket.pts != 0 && audioPacket.getAvPacketOpaque() != 0) {
            return this.f45858h.a(audioPacket.buf, audioPacket.pts, audioPacket.flags, audioPacket.getAvPacketOpaque());
        }
        if ((audioPacket.flags & 4) != 0) {
            flush();
            stop();
            return 0;
        }
        return 0;
    }
}
