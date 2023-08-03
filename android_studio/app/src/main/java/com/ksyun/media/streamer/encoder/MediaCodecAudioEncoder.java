package com.ksyun.media.streamer.encoder;

import android.annotation.TargetApi;
import android.media.MediaCodec;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.util.Log;
import android.view.Surface;
import com.google.android.exoplayer2.audio.j0;
import com.ksyun.media.player.KSYMediaMeta;
import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.framework.AudioCodecFormat;
import com.ksyun.media.streamer.framework.AudioPacket;
import com.ksyun.media.streamer.util.FrameBufferCache;
import java.nio.ByteBuffer;

@TargetApi(16)
/* loaded from: classes3.dex */
public class MediaCodecAudioEncoder extends MediaCodecEncoderBase<AudioBufFrame, AudioPacket> {

    /* renamed from: n  reason: collision with root package name */
    private static final String f46129n = "HWAudioEncoder";

    /* renamed from: o  reason: collision with root package name */
    private static final int f46130o = 16;

    /* renamed from: p  reason: collision with root package name */
    private static final int f46131p = 8192;

    /* renamed from: q  reason: collision with root package name */
    private AudioCodecFormat f46132q;

    /* renamed from: r  reason: collision with root package name */
    private FrameBufferCache f46133r = new FrameBufferCache(16, 8192);

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected int a(Object obj) {
        int i4;
        AudioCodecFormat audioCodecFormat = (AudioCodecFormat) obj;
        int i10 = audioCodecFormat.channels;
        int i11 = 2;
        if (i10 == 1) {
            i4 = 16;
        } else if (i10 != 2) {
            throw new IllegalArgumentException("Invalid channel count. Must be 1 or 2");
        } else {
            i4 = 12;
        }
        if (audioCodecFormat.codecId == 256) {
            int i12 = audioCodecFormat.profile;
            if (i12 == 28 && i10 == 1) {
                Log.w(f46129n, "set aac_he_v2 for mono audio, fallback to aac_he");
                i12 = 4;
            }
            if (i12 == 4) {
                i11 = 5;
            } else if (i12 == 28) {
                i11 = 29;
            }
            MediaFormat createAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", audioCodecFormat.sampleRate, i4);
            createAudioFormat.setInteger("aac-profile", i11);
            createAudioFormat.setInteger("channel-count", audioCodecFormat.channels);
            createAudioFormat.setInteger(KSYMediaMeta.IJKM_KEY_BITRATE, audioCodecFormat.bitrate);
            createAudioFormat.setInteger("max-input-size", 16384);
            try {
                MediaCodec createEncoderByType = MediaCodec.createEncoderByType("audio/mp4a-latm");
                this.f46138k = createEncoderByType;
                createEncoderByType.configure(createAudioFormat, (Surface) null, (MediaCrypto) null, 1);
                this.f46138k.start();
                AudioCodecFormat audioCodecFormat2 = new AudioCodecFormat((AudioCodecFormat) this.f46078b);
                this.f46132q = audioCodecFormat2;
                c(audioCodecFormat2);
                a(j0.f21249v, false);
                return 0;
            } catch (Exception e4) {
                Log.e(f46129n, "Failed to start MediaCodec audio encoder");
                e4.printStackTrace();
                return -1002;
            }
        }
        throw new IllegalArgumentException("Only aac supported");
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    public int b(AudioBufFrame audioBufFrame) {
        int i4 = 0;
        if (audioBufFrame != null && audioBufFrame.buf != null) {
            if (this.f46081e) {
                for (int i10 = 0; i10 < audioBufFrame.buf.limit(); i10++) {
                    audioBufFrame.buf.put(i10, (byte) 0);
                }
                audioBufFrame.buf.rewind();
            }
            try {
                a(false);
                a(audioBufFrame.buf, audioBufFrame.pts * 1000);
            } catch (Exception e4) {
                Log.e(f46129n, "Encode frame failed!");
                e4.printStackTrace();
                i4 = -1001;
            }
            this.f46133r.offer(audioBufFrame.buf);
        }
        return i4;
    }

    @Override // com.ksyun.media.streamer.encoder.Encoder
    protected void a() {
        try {
            a((ByteBuffer) null, 0L);
            a(true);
        } catch (Exception unused) {
        }
        try {
            this.f46138k.stop();
        } catch (Exception unused2) {
            Log.e(f46129n, "stop encoder failed, ignore");
        }
        this.f46138k.release();
        this.f46138k = null;
        Log.i(f46129n, "MediaCodec released");
        AudioPacket audioPacket = new AudioPacket(this.f46132q, null, 0L);
        audioPacket.flags |= 4;
        a((MediaCodecAudioEncoder) audioPacket);
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

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.Encoder
    /* renamed from: a */
    public boolean c(AudioBufFrame audioBufFrame) {
        ByteBuffer byteBuffer;
        if (audioBufFrame != null && (byteBuffer = audioBufFrame.buf) != null) {
            ByteBuffer poll = this.f46133r.poll(byteBuffer.limit());
            if (poll == null) {
                Log.w(f46129n, "Audio frame dropped, size=" + audioBufFrame.buf.limit() + " pts=" + audioBufFrame.pts);
                return true;
            }
            poll.put(audioBufFrame.buf);
            poll.flip();
            audioBufFrame.buf.rewind();
            audioBufFrame.buf = poll;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.encoder.MediaCodecEncoderBase
    /* renamed from: a */
    public AudioPacket b(ByteBuffer byteBuffer, MediaCodec.BufferInfo bufferInfo) {
        AudioPacket audioPacket = new AudioPacket(this.f46132q, byteBuffer, bufferInfo.presentationTimeUs / 1000);
        int i4 = bufferInfo.flags;
        if ((i4 & 4) != 0) {
            audioPacket.flags |= 4;
        }
        if ((i4 & 1) != 0) {
            audioPacket.flags |= 1;
        }
        if ((i4 & 2) != 0) {
            audioPacket.flags |= 2;
        }
        return audioPacket;
    }
}
