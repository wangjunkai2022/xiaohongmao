package com.ksyun.media.streamer.util.audio;

import android.media.AudioTrack;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Message;
import android.util.Log;
import com.ksyun.media.streamer.kit.StreamerConstants;
import java.nio.ByteBuffer;
import java.nio.ShortBuffer;
import java.util.concurrent.ArrayBlockingQueue;
import java.util.concurrent.BlockingQueue;

/* loaded from: classes3.dex */
public class PcmPlayer {
    private static final int CMD_RELEASE = 4;
    private static final int CMD_STOP = 3;
    private static final int QUEUE_SIZE = 4;
    public static final String TAG = "PcmPlayer";
    private static final boolean VERBOSE = true;
    private BlockingQueue<short[]> mAudioQueue;
    private AudioTrack mAudioTrack;
    private int mChannel;
    private Handler mHandler;
    private HandlerThread mHandlerThread;
    private int mSampleFormat;
    private int mSampleRate;

    public PcmPlayer() {
        this.mSampleRate = StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE;
        this.mChannel = 4;
        this.mSampleFormat = 2;
        init();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void doStop() {
        AudioTrack audioTrack = this.mAudioTrack;
        if (audioTrack != null) {
            audioTrack.pause();
            this.mAudioTrack.flush();
            this.mAudioTrack.stop();
            this.mAudioTrack.release();
            this.mAudioTrack = null;
        }
    }

    private short[] getPcmCache(int i4) {
        short[] poll = this.mAudioQueue.poll();
        if (poll == null) {
            Log.w(TAG, "Dropped " + (i4 * 2) + " bytes pcm data");
            return null;
        }
        int length = poll.length;
        while (length < i4) {
            length *= 2;
        }
        if (poll.length < length) {
            Log.d(TAG, "realloc pcm size from " + poll.length + " to " + length);
            return new short[length];
        }
        return poll;
    }

    private void init() {
        initThread();
        this.mAudioQueue = new ArrayBlockingQueue(4);
        for (int i4 = 0; i4 < 4; i4++) {
            this.mAudioQueue.offer(new short[2048]);
        }
    }

    private void initThread() {
        HandlerThread handlerThread = new HandlerThread("pcm_player_thread");
        this.mHandlerThread = handlerThread;
        handlerThread.start();
        this.mHandler = new Handler(this.mHandlerThread.getLooper()) { // from class: com.ksyun.media.streamer.util.audio.PcmPlayer.1
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int i4 = message.what;
                if (i4 == 3) {
                    PcmPlayer.this.doStop();
                } else if (i4 != 4) {
                } else {
                    PcmPlayer.this.mHandlerThread.quit();
                }
            }
        };
    }

    private void playInternal(final short[] sArr, final int i4, final int i10) {
        this.mHandler.post(new Runnable() { // from class: com.ksyun.media.streamer.util.audio.PcmPlayer.2
            @Override // java.lang.Runnable
            public void run() {
                if (PcmPlayer.this.mAudioTrack == null) {
                    int minBufferSize = AudioTrack.getMinBufferSize(PcmPlayer.this.mSampleRate, PcmPlayer.this.mChannel, PcmPlayer.this.mSampleFormat);
                    PcmPlayer.this.mAudioTrack = new AudioTrack(3, PcmPlayer.this.mSampleRate, PcmPlayer.this.mChannel, PcmPlayer.this.mSampleFormat, minBufferSize, 1);
                    PcmPlayer.this.mAudioTrack.play();
                }
                PcmPlayer.this.mAudioTrack.write(sArr, i4, i10);
                PcmPlayer.this.mAudioQueue.offer(sArr);
            }
        });
    }

    public void play(short[] sArr, int i4, int i10) {
        short[] pcmCache;
        if (sArr == null || sArr.length < i4 + i10 || (pcmCache = getPcmCache(i10)) == null) {
            return;
        }
        System.arraycopy(sArr, i4, pcmCache, 0, i10);
        playInternal(pcmCache, 0, i10);
    }

    public void release() {
        if (this.mHandlerThread != null) {
            stop();
            this.mHandler.sendEmptyMessage(4);
            try {
                this.mHandlerThread.join();
            } catch (InterruptedException unused) {
                Log.d(TAG, "Pcm Player Thread Interrupted!");
            }
            this.mHandlerThread = null;
            this.mHandler = null;
        }
        this.mAudioQueue.clear();
    }

    public void stop() {
        this.mHandler.removeCallbacksAndMessages(null);
        this.mHandler.sendEmptyMessage(3);
    }

    public void play(short[] sArr) {
        play(sArr, 0, sArr.length);
    }

    public PcmPlayer(int i4, int i10, int i11) {
        this.mSampleRate = i4;
        this.mChannel = i10;
        this.mSampleFormat = i11;
        init();
    }

    public void play(ByteBuffer byteBuffer) {
        int limit;
        short[] pcmCache;
        if (byteBuffer == null || (pcmCache = getPcmCache((limit = byteBuffer.limit() / 2))) == null) {
            return;
        }
        ShortBuffer asShortBuffer = byteBuffer.asShortBuffer();
        asShortBuffer.limit(limit);
        asShortBuffer.get(pcmCache, 0, limit);
        playInternal(pcmCache, 0, limit);
    }
}
