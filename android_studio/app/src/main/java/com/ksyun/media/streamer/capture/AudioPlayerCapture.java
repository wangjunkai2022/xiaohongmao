package com.ksyun.media.streamer.capture;

import android.content.Context;
import android.content.res.AssetFileDescriptor;
import android.util.Log;
import com.ksyun.media.player.IMediaPlayer;
import com.ksyun.media.player.KSYMediaPlayer;
import com.ksyun.media.streamer.filter.audio.AudioFilterMgt;
import com.ksyun.media.streamer.filter.audio.AudioSLPlayer;
import com.ksyun.media.streamer.filter.audio.AudioSpeedFilter;
import com.ksyun.media.streamer.filter.audio.b;
import com.ksyun.media.streamer.filter.audio.c;
import com.ksyun.media.streamer.filter.audio.d;
import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.logstats.StatsConstant;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes3.dex */
public class AudioPlayerCapture {
    public static final int AUDIO_PLAYER_TYPE_AUDIOTRACK = 0;
    public static final int AUDIO_PLAYER_TYPE_OPENSLES = 1;

    /* renamed from: a  reason: collision with root package name */
    private static final String f45616a = "AudioPlayerCapture";

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f45617b = true;

    /* renamed from: c  reason: collision with root package name */
    private static final String f45618c = "assets://";

    /* renamed from: e  reason: collision with root package name */
    private AudioSpeedFilter f45620e;

    /* renamed from: f  reason: collision with root package name */
    private Context f45621f;

    /* renamed from: g  reason: collision with root package name */
    private KSYMediaPlayer f45622g;

    /* renamed from: h  reason: collision with root package name */
    private d f45623h;

    /* renamed from: i  reason: collision with root package name */
    private AudioBufFormat f45624i;

    /* renamed from: j  reason: collision with root package name */
    private ByteBuffer f45625j;

    /* renamed from: l  reason: collision with root package name */
    private boolean f45627l;

    /* renamed from: o  reason: collision with root package name */
    private boolean f45630o;

    /* renamed from: t  reason: collision with root package name */
    private PlayRanges f45635t;

    /* renamed from: u  reason: collision with root package name */
    private String f45636u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f45637v;

    /* renamed from: w  reason: collision with root package name */
    private IMediaPlayer.OnPreparedListener f45638w;

    /* renamed from: x  reason: collision with root package name */
    private IMediaPlayer.OnCompletionListener f45639x;

    /* renamed from: y  reason: collision with root package name */
    private IMediaPlayer.OnErrorListener f45640y;

    /* renamed from: k  reason: collision with root package name */
    private int f45626k = 0;

    /* renamed from: m  reason: collision with root package name */
    private boolean f45628m = false;

    /* renamed from: n  reason: collision with root package name */
    private float f45629n = 1.0f;

    /* renamed from: p  reason: collision with root package name */
    private long f45631p = 0;

    /* renamed from: q  reason: collision with root package name */
    private float f45632q = 1.0f;

    /* renamed from: r  reason: collision with root package name */
    private long f45633r = 0;

    /* renamed from: s  reason: collision with root package name */
    private long f45634s = 0;

    /* renamed from: z  reason: collision with root package name */
    private IMediaPlayer.OnPreparedListener f45641z = new IMediaPlayer.OnPreparedListener() { // from class: com.ksyun.media.streamer.capture.AudioPlayerCapture.3
        @Override // com.ksyun.media.player.IMediaPlayer.OnPreparedListener
        public void onPrepared(IMediaPlayer iMediaPlayer) {
            Log.d(AudioPlayerCapture.f45616a, com.ksyun.media.player.d.d.aq);
            if (AudioPlayerCapture.this.f45638w != null) {
                AudioPlayerCapture.this.f45638w.onPrepared(iMediaPlayer);
            }
            AudioPlayerCapture.this.f45631p = iMediaPlayer.getDuration();
            AudioPlayerCapture.this.f45624i = null;
            AudioPlayerCapture.this.f45625j.clear();
            iMediaPlayer.start();
        }
    };
    private IMediaPlayer.OnCompletionListener A = new IMediaPlayer.OnCompletionListener() { // from class: com.ksyun.media.streamer.capture.AudioPlayerCapture.4
        @Override // com.ksyun.media.player.IMediaPlayer.OnCompletionListener
        public void onCompletion(IMediaPlayer iMediaPlayer) {
            Log.d(AudioPlayerCapture.f45616a, "onCompletion");
            if (!AudioPlayerCapture.this.f45637v) {
                AudioPlayerCapture.this.a();
            }
            if (AudioPlayerCapture.this.f45639x != null) {
                AudioPlayerCapture.this.f45639x.onCompletion(iMediaPlayer);
            }
        }
    };
    private IMediaPlayer.OnErrorListener B = new IMediaPlayer.OnErrorListener() { // from class: com.ksyun.media.streamer.capture.AudioPlayerCapture.5
        @Override // com.ksyun.media.player.IMediaPlayer.OnErrorListener
        public boolean onError(IMediaPlayer iMediaPlayer, int i4, int i10) {
            Log.d(AudioPlayerCapture.f45616a, "onError:" + i4 + "/" + i10);
            return AudioPlayerCapture.this.f45640y != null && AudioPlayerCapture.this.f45640y.onError(iMediaPlayer, i4, i10);
        }
    };
    private KSYMediaPlayer.OnAudioPCMListener C = new KSYMediaPlayer.OnAudioPCMListener() { // from class: com.ksyun.media.streamer.capture.AudioPlayerCapture.6
        @Override // com.ksyun.media.player.KSYMediaPlayer.OnAudioPCMListener
        public void onAudioPCMAvailable(IMediaPlayer iMediaPlayer, ByteBuffer byteBuffer, long j4, int i4, int i10, int i11) {
            if (byteBuffer == null) {
                return;
            }
            if (AudioPlayerCapture.this.f45627l) {
                AudioPlayerCapture.this.f45627l = false;
                if ((AudioPlayerCapture.this.f45626k == 1 && (AudioPlayerCapture.this.f45623h instanceof c)) || (AudioPlayerCapture.this.f45626k == 0 && (AudioPlayerCapture.this.f45623h instanceof AudioSLPlayer))) {
                    if (AudioPlayerCapture.this.f45624i != null) {
                        AudioBufFrame audioBufFrame = new AudioBufFrame(AudioPlayerCapture.this.f45624i, null, 0L);
                        audioBufFrame.flags |= 65536;
                        AudioPlayerCapture.this.mSrcPin.onFrameAvailable(audioBufFrame);
                    }
                    d dVar = AudioPlayerCapture.this.f45623h;
                    AudioPlayerCapture.this.f45623h = null;
                    dVar.c();
                    dVar.f();
                    if (AudioPlayerCapture.this.f45626k == 1) {
                        AudioPlayerCapture.this.f45623h = new AudioSLPlayer();
                    } else {
                        AudioPlayerCapture.this.f45623h = new c();
                    }
                    AudioPlayerCapture.this.f45623h.b(AudioPlayerCapture.this.f45628m);
                    AudioPlayerCapture.this.f45624i = null;
                    AudioPlayerCapture.this.f45625j.clear();
                }
            }
            if (AudioPlayerCapture.this.f45624i == null) {
                AudioPlayerCapture.this.f45623h.a(i10, i4, com.ksyun.media.streamer.util.audio.a.a(AudioPlayerCapture.this.f45621f, i10), 40);
                AudioPlayerCapture.this.f45623h.b();
                AudioPlayerCapture.this.f45624i = new AudioBufFormat(i11, i10, i4);
                AudioPlayerCapture.this.f45619d.getSinkPin().onFormatChanged(AudioPlayerCapture.this.f45624i);
            }
            int position = AudioPlayerCapture.this.f45625j.position() + byteBuffer.limit();
            if (AudioPlayerCapture.this.f45625j.capacity() < position) {
                Log.d(AudioPlayerCapture.f45616a, "expand buffer to " + position + " bytes");
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(position);
                allocateDirect.order(ByteOrder.nativeOrder());
                allocateDirect.put(AudioPlayerCapture.this.f45625j);
                AudioPlayerCapture.this.f45625j = allocateDirect;
            }
            AudioPlayerCapture.this.f45625j.put(byteBuffer);
            if (AudioPlayerCapture.this.f45625j.position() >= i4 * 2048) {
                AudioPlayerCapture.this.f45625j.flip();
                AudioPlayerCapture.this.f45619d.getSinkPin().onFrameAvailable(new AudioBufFrame(AudioPlayerCapture.this.f45624i, AudioPlayerCapture.this.f45625j, j4));
                AudioPlayerCapture.this.f45625j.clear();
            }
        }
    };
    public SrcPin<AudioBufFrame> mSrcPin = new b();

    /* renamed from: d  reason: collision with root package name */
    private AudioFilterMgt f45619d = new AudioFilterMgt();

    /* loaded from: classes3.dex */
    public class PlayRanges {
        public long endTime;
        public long startTime;

        public PlayRanges() {
        }
    }

    public AudioPlayerCapture(Context context) {
        this.f45621f = context;
        SinkPin<AudioBufFrame> sinkPin = new SinkPin<AudioBufFrame>() { // from class: com.ksyun.media.streamer.capture.AudioPlayerCapture.1

            /* renamed from: a  reason: collision with root package name */
            AudioBufFormat f45642a = null;

            @Override // com.ksyun.media.streamer.framework.SinkPin
            /* renamed from: a */
            public void onFrameAvailable(AudioBufFrame audioBufFrame) {
                ByteBuffer byteBuffer = audioBufFrame.buf;
                if (byteBuffer == null || byteBuffer.limit() <= 0) {
                    return;
                }
                if (!AudioPlayerCapture.this.f45630o && AudioPlayerCapture.this.f45632q == 1.0f) {
                    AudioPlayerCapture.this.f45623h.a(audioBufFrame.buf);
                }
                AudioBufFrame audioBufFrame2 = new AudioBufFrame(audioBufFrame);
                audioBufFrame2.format = this.f45642a;
                AudioPlayerCapture.this.mSrcPin.onFrameAvailable(audioBufFrame2);
            }

            @Override // com.ksyun.media.streamer.framework.SinkPin
            public void onFormatChanged(Object obj) {
                AudioBufFormat audioBufFormat = new AudioBufFormat((AudioBufFormat) obj);
                this.f45642a = audioBufFormat;
                audioBufFormat.nativeModule = AudioPlayerCapture.this.f45623h.a();
                AudioPlayerCapture.this.mSrcPin.onFormatChanged(this.f45642a);
            }
        };
        SinkPin<AudioBufFrame> sinkPin2 = new SinkPin<AudioBufFrame>() { // from class: com.ksyun.media.streamer.capture.AudioPlayerCapture.2
            @Override // com.ksyun.media.streamer.framework.SinkPin
            /* renamed from: a */
            public void onFrameAvailable(AudioBufFrame audioBufFrame) {
                ByteBuffer byteBuffer = audioBufFrame.buf;
                if (byteBuffer == null || byteBuffer.limit() <= 0 || AudioPlayerCapture.this.f45630o || AudioPlayerCapture.this.f45632q == 1.0f) {
                    return;
                }
                AudioPlayerCapture.this.f45623h.a(audioBufFrame.buf);
            }

            @Override // com.ksyun.media.streamer.framework.SinkPin
            public void onFormatChanged(Object obj) {
            }
        };
        AudioSpeedFilter audioSpeedFilter = new AudioSpeedFilter();
        this.f45620e = audioSpeedFilter;
        audioSpeedFilter.getSrcPin().connect(sinkPin2);
        this.f45619d.getSrcPin().connect(sinkPin);
    }

    public AudioFilterMgt getAudioFilterMgt() {
        return this.f45619d;
    }

    public long getFileDuration() {
        return this.f45631p;
    }

    public KSYMediaPlayer getMediaPlayer() {
        if (this.f45622g == null) {
            this.f45622g = new KSYMediaPlayer.Builder(this.f45621f).build();
            if (this.f45626k == 1) {
                this.f45623h = new AudioSLPlayer();
            } else {
                this.f45623h = new c();
            }
            this.f45622g.setOnErrorListener(this.B);
            ByteBuffer allocateDirect = ByteBuffer.allocateDirect(8192);
            this.f45625j = allocateDirect;
            allocateDirect.order(ByteOrder.nativeOrder());
        }
        return this.f45622g;
    }

    public PlayRanges getPlayableRanges() {
        return this.f45635t;
    }

    public SrcPin<AudioBufFrame> getSrcPin() {
        return this.mSrcPin;
    }

    public float getVolume() {
        return this.f45629n;
    }

    public void pause() {
        KSYMediaPlayer kSYMediaPlayer = this.f45622g;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.pause();
            this.f45623h.d();
        }
    }

    public void release() {
        stop();
        this.mSrcPin.disconnect(true);
        KSYMediaPlayer kSYMediaPlayer = this.f45622g;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.release();
            this.f45622g = null;
        }
        d dVar = this.f45623h;
        if (dVar != null) {
            dVar.f();
            this.f45623h = null;
        }
        this.f45625j = null;
        this.f45620e.release();
    }

    public void restart() {
        KSYMediaPlayer kSYMediaPlayer = this.f45622g;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.stop();
            this.f45622g.reset();
            this.f45622g.setOnPreparedListener(this.f45641z);
            this.f45622g.setOnCompletionListener(this.A);
            this.f45622g.setOnAudioPCMAvailableListener(this.C);
            this.f45622g.setLooping(this.f45637v);
            this.f45622g.shouldAutoPlay(false);
            this.f45622g.enableFastPlayMode(true);
            long j4 = this.f45633r;
            if (j4 >= 0) {
                long j10 = this.f45634s;
                if (j10 > j4) {
                    this.f45622g.setPlayableRanges(j4, j10);
                }
            }
            a(this.f45636u);
            KSYMediaPlayer kSYMediaPlayer2 = this.f45622g;
            float f10 = this.f45629n;
            kSYMediaPlayer2.setVolume(f10, f10);
            this.f45623h.b(this.f45628m);
        }
    }

    public void resume() {
        KSYMediaPlayer kSYMediaPlayer = this.f45622g;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.start();
            this.f45623h.e();
        }
    }

    public void setAudioPlayerType(int i4) {
        this.f45627l = this.f45626k != i4;
        this.f45626k = i4;
    }

    public void setEnableFastPlay(boolean z9) {
        this.f45630o = z9;
    }

    public void setMute(boolean z9) {
        d dVar = this.f45623h;
        if (dVar != null) {
            dVar.b(z9);
        }
        this.f45628m = z9;
    }

    public void setOnCompletionListener(IMediaPlayer.OnCompletionListener onCompletionListener) {
        this.f45639x = onCompletionListener;
    }

    public void setOnErrorListener(IMediaPlayer.OnErrorListener onErrorListener) {
        this.f45640y = onErrorListener;
    }

    public void setOnPreparedListener(IMediaPlayer.OnPreparedListener onPreparedListener) {
        this.f45638w = onPreparedListener;
    }

    public void setPlayableRanges(long j4, long j10) {
        this.f45633r = j4;
        this.f45634s = j10;
        if (this.f45635t == null) {
            this.f45635t = new PlayRanges();
        }
        PlayRanges playRanges = this.f45635t;
        playRanges.startTime = this.f45633r;
        playRanges.endTime = this.f45634s;
    }

    public void setSpeed(float f10) {
        this.f45632q = f10;
        this.f45620e.setSpeed(f10);
        if (this.f45632q != 1.0f) {
            AudioBufFormat audioBufFormat = this.f45624i;
            if (audioBufFormat != null) {
                this.f45620e.config(audioBufFormat);
            }
            this.f45619d.getSrcPin().connect(this.f45620e.getSinkPin());
            return;
        }
        this.f45619d.getSrcPin().disconnect(this.f45620e.getSinkPin(), false);
    }

    public void setVolume(float f10) {
        this.f45629n = f10;
        KSYMediaPlayer kSYMediaPlayer = this.f45622g;
        if (kSYMediaPlayer != null) {
            kSYMediaPlayer.setVolume(f10, f10);
        }
    }

    public void start(String str, boolean z9) {
        getMediaPlayer();
        this.f45622g.reset();
        this.f45622g.setOnPreparedListener(this.f45641z);
        this.f45622g.setOnCompletionListener(this.A);
        this.f45622g.setOnAudioPCMAvailableListener(this.C);
        this.f45637v = z9;
        this.f45622g.setLooping(z9);
        this.f45622g.shouldAutoPlay(false);
        this.f45622g.enableFastPlayMode(true);
        this.f45636u = str;
        long j4 = this.f45633r;
        if (j4 >= 0) {
            long j10 = this.f45634s;
            if (j10 > j4) {
                this.f45622g.setPlayableRanges(j4, j10);
            }
        }
        a(this.f45636u);
        KSYMediaPlayer kSYMediaPlayer = this.f45622g;
        float f10 = this.f45629n;
        kSYMediaPlayer.setVolume(f10, f10);
        this.f45623h.b(this.f45628m);
        StatsLogReport.getInstance().updateFunctionPoint(StatsConstant.FUNCTION_BGM);
    }

    public void stop() {
        if (this.f45622g != null) {
            Log.d(f45616a, "stop");
            this.f45622g.setOnAudioPCMAvailableListener(null);
            this.f45622g.stop();
            this.f45623h.c();
            a();
        }
    }

    private void a(String str) {
        try {
            if (str.startsWith(f45618c) && this.f45621f != null) {
                AssetFileDescriptor openFd = this.f45621f.getAssets().openFd(str.substring(9));
                this.f45622g.setDataSource(openFd.getFileDescriptor(), openFd.getStartOffset(), openFd.getLength());
            } else {
                this.f45622g.setDataSource(str);
            }
            this.f45622g.prepareAsync();
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a() {
        Log.d(f45616a, "sendEos");
        AudioBufFormat audioBufFormat = this.f45624i;
        if (audioBufFormat != null) {
            AudioBufFrame audioBufFrame = new AudioBufFrame(audioBufFormat, null, 0L);
            audioBufFrame.flags = audioBufFrame.flags | 65536 | 4;
            this.mSrcPin.onFrameAvailable(audioBufFrame);
        }
    }
}
