package com.ksyun.media.streamer.capture;

import android.content.Context;
import android.media.AudioRecord;
import android.os.Handler;
import android.os.Looper;
import android.os.Process;
import android.util.Log;
import com.google.android.exoplayer2.text.ttml.d;
import com.ksyun.media.streamer.capture.audio.KSYAudioSLRecord;
import com.ksyun.media.streamer.capture.audio.c;
import com.ksyun.media.streamer.filter.audio.b;
import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioBufFrame;
import com.ksyun.media.streamer.framework.SrcPin;
import com.ksyun.media.streamer.kit.OnAudioRawDataListener;
import com.ksyun.media.streamer.kit.StreamerConstants;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;
import java.nio.ShortBuffer;

/* loaded from: classes3.dex */
public class AudioCapture {
    public static final int AUDIO_CAPTURE_TYPE_AUDIORECORDER = 1;
    public static final int AUDIO_CAPTURE_TYPE_DUMMY = 3;
    public static final int AUDIO_CAPTURE_TYPE_OPENSLES = 2;
    public static final int AUDIO_ERROR_UNKNOWN = -2005;
    public static final int AUDIO_START_FAILED = -2003;
    public static final int STATE_IDLE = 0;
    public static final int STATE_INITIALIZED = 1;
    public static final int STATE_RECORDING = 2;

    /* renamed from: a  reason: collision with root package name */
    private static final String f45596a = "AudioCapture";

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f45597b = false;

    /* renamed from: c  reason: collision with root package name */
    private int f45598c;

    /* renamed from: d  reason: collision with root package name */
    private int f45599d;

    /* renamed from: g  reason: collision with root package name */
    private Context f45602g;

    /* renamed from: h  reason: collision with root package name */
    private com.ksyun.media.streamer.capture.audio.a f45603h;

    /* renamed from: i  reason: collision with root package name */
    private Thread f45604i;

    /* renamed from: l  reason: collision with root package name */
    private boolean f45607l;

    /* renamed from: m  reason: collision with root package name */
    private volatile boolean f45608m;

    /* renamed from: n  reason: collision with root package name */
    private OnAudioCaptureListener f45609n;

    /* renamed from: o  reason: collision with root package name */
    private OnAudioRawDataListener f45610o;

    /* renamed from: p  reason: collision with root package name */
    private short[] f45611p;

    /* renamed from: e  reason: collision with root package name */
    private int f45600e = 1;

    /* renamed from: f  reason: collision with root package name */
    private float f45601f = 1.0f;
    public SrcPin<AudioBufFrame> mSrcPin = new b();

    /* renamed from: j  reason: collision with root package name */
    private Handler f45605j = new Handler(Looper.getMainLooper());

    /* renamed from: k  reason: collision with root package name */
    private int f45606k = 0;

    /* loaded from: classes3.dex */
    public interface OnAudioCaptureListener {
        void onError(int i4);

        void onStatusChanged(int i4);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a extends Thread {
        private a() {
        }

        @Override // java.lang.Thread, java.lang.Runnable
        public void run() {
            int i4;
            int i10;
            Process.setThreadPriority(-19);
            try {
                int i11 = AudioCapture.this.f45600e;
                if (i11 == 2) {
                    int a10 = com.ksyun.media.streamer.util.audio.a.a(AudioCapture.this.f45602g, AudioCapture.this.f45598c);
                    int i12 = a10;
                    while (i12 < (AudioCapture.this.f45598c * 20) / 1000) {
                        i12 += a10;
                    }
                    AudioCapture.this.f45603h = new KSYAudioSLRecord(AudioCapture.this.f45598c, AudioCapture.this.f45599d, a10);
                    i4 = a10;
                    i10 = i12;
                } else if (i11 != 3) {
                    i10 = AudioRecord.getMinBufferSize(AudioCapture.this.f45598c, AudioCapture.this.f45599d == 1 ? 16 : 12, 2) / (AudioCapture.this.f45599d * 2);
                    AudioCapture audioCapture = AudioCapture.this;
                    audioCapture.f45603h = new c(audioCapture.f45598c, AudioCapture.this.f45599d, i10);
                    i4 = i10;
                } else {
                    int i13 = (AudioCapture.this.f45598c * 10) / 1000;
                    AudioCapture audioCapture2 = AudioCapture.this;
                    audioCapture2.f45603h = new com.ksyun.media.streamer.capture.audio.b(audioCapture2.f45598c, AudioCapture.this.f45599d, i13);
                    i4 = i13;
                    i10 = i13 * 2;
                }
                AudioCapture.this.a(1);
                int i14 = i10 * AudioCapture.this.f45599d * 2;
                Log.i(AudioCapture.f45596a, "atomSize:" + i4);
                Log.i(AudioCapture.f45596a, "readSize:" + i14);
                Log.i(AudioCapture.f45596a, "sampleRate:" + AudioCapture.this.f45598c);
                Log.i(AudioCapture.f45596a, "channels:" + AudioCapture.this.f45599d);
                ByteBuffer allocateDirect = ByteBuffer.allocateDirect(i14);
                allocateDirect.order(ByteOrder.nativeOrder());
                AudioBufFormat audioBufFormat = new AudioBufFormat(1, AudioCapture.this.f45598c, AudioCapture.this.f45599d);
                if (AudioCapture.this.f45598c == com.ksyun.media.streamer.util.audio.a.a(AudioCapture.this.f45602g)) {
                    audioBufFormat.nativeModule = AudioCapture.this.f45603h.d();
                }
                AudioCapture.this.mSrcPin.onFormatChanged(audioBufFormat);
                AudioCapture.this.f45603h.a(AudioCapture.this.f45607l);
                AudioCapture.this.f45603h.a(AudioCapture.this.f45601f);
                if (AudioCapture.this.f45603h.a() == 0) {
                    AudioCapture.this.a(2);
                    while (true) {
                        if (!AudioCapture.this.f45608m) {
                            int a11 = AudioCapture.this.f45603h.a(allocateDirect, i14);
                            if (AudioCapture.this.f45608m) {
                                break;
                            } else if (a11 > 0) {
                                long nanoTime = ((System.nanoTime() / 1000) - (((a11 / 2) / AudioCapture.this.f45599d) / AudioCapture.this.f45598c)) / 1000;
                                if (AudioCapture.this.f45610o != null) {
                                    int limit = allocateDirect.limit() / 2;
                                    if (AudioCapture.this.f45611p == null || AudioCapture.this.f45611p.length < limit) {
                                        AudioCapture.this.f45611p = new short[limit];
                                    }
                                    ShortBuffer asShortBuffer = allocateDirect.asShortBuffer();
                                    asShortBuffer.get(AudioCapture.this.f45611p, 0, limit);
                                    short[] OnAudioRawData = AudioCapture.this.f45610o.OnAudioRawData(AudioCapture.this.f45611p, limit, AudioCapture.this.f45598c, AudioCapture.this.f45599d);
                                    asShortBuffer.clear();
                                    asShortBuffer.put(OnAudioRawData, 0, limit);
                                    asShortBuffer.rewind();
                                }
                                AudioCapture.this.mSrcPin.onFrameAvailable(new AudioBufFrame(audioBufFormat, allocateDirect, nanoTime));
                            } else if (a11 < 0) {
                                Log.e(AudioCapture.f45596a, "read error: " + a11);
                                AudioCapture.this.b(-2005);
                                break;
                            }
                        } else {
                            break;
                        }
                    }
                    AudioBufFrame audioBufFrame = new AudioBufFrame(audioBufFormat, null, 0L);
                    audioBufFrame.flags |= 65536;
                    AudioCapture.this.mSrcPin.onFrameAvailable(audioBufFrame);
                    AudioCapture.this.f45603h.b();
                    AudioCapture.this.a(1);
                    com.ksyun.media.streamer.capture.audio.a aVar = AudioCapture.this.f45603h;
                    AudioCapture.this.f45603h = null;
                    aVar.c();
                    AudioCapture.this.a(0);
                    return;
                }
                Log.e(AudioCapture.f45596a, "start recording failed!");
                AudioCapture.this.b(-2003);
                AudioCapture.this.f45603h.c();
                AudioCapture.this.a(0);
            } catch (Exception e4) {
                e4.printStackTrace();
                AudioCapture.this.b(-2003);
            }
        }
    }

    public AudioCapture(Context context) {
        this.f45598c = StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE;
        this.f45599d = 1;
        this.f45602g = context;
        this.f45598c = com.ksyun.media.streamer.util.audio.a.a(context);
        this.f45599d = 1;
    }

    public int getChannels() {
        return this.f45599d;
    }

    public boolean getEnableLatencyTest() {
        return this.f45607l;
    }

    public int getSampleRate() {
        return this.f45598c;
    }

    public SrcPin<AudioBufFrame> getSrcPin() {
        return this.mSrcPin;
    }

    public float getVolume() {
        return this.f45601f;
    }

    public boolean isRecordingState() {
        return this.f45604i != null;
    }

    public void release() {
        stop();
        this.f45611p = null;
        this.f45605j.removeCallbacksAndMessages(null);
        this.f45605j = null;
        this.mSrcPin.disconnect(true);
    }

    public void setAudioCaptureListener(OnAudioCaptureListener onAudioCaptureListener) {
        this.f45609n = onAudioCaptureListener;
    }

    public void setAudioCaptureType(int i4) {
        if (isRecordingState() && this.f45600e != i4) {
            Log.d(f45596a, "switch audio capture type from " + this.f45600e + " to " + i4);
            stop();
            start();
        }
        this.f45600e = i4;
    }

    public void setChannels(int i4) {
        this.f45599d = i4;
    }

    public void setEnableLatencyTest(boolean z9) {
        this.f45607l = z9;
        com.ksyun.media.streamer.capture.audio.a aVar = this.f45603h;
        if (aVar != null) {
            aVar.a(z9);
        }
    }

    @Deprecated
    public void setOnAudioRawDataListener(OnAudioRawDataListener onAudioRawDataListener) {
        this.f45610o = onAudioRawDataListener;
    }

    public void setSampleRate(int i4) {
        this.f45598c = i4;
    }

    public void setVolume(float f10) {
        this.f45601f = f10;
        com.ksyun.media.streamer.capture.audio.a aVar = this.f45603h;
        if (aVar != null) {
            aVar.a(f10);
        }
    }

    public void start() {
        if (this.f45604i == null) {
            Log.d(f45596a, d.f25725o0);
            this.f45608m = false;
            a aVar = new a();
            this.f45604i = aVar;
            aVar.start();
        }
    }

    public void stop() {
        if (this.f45604i != null) {
            Log.d(f45596a, "stop");
            this.f45608m = true;
            this.f45604i.interrupt();
            try {
                try {
                    this.f45604i.join();
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
            } finally {
                this.f45604i = null;
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void b(final int i4) {
        this.f45605j.post(new Runnable() { // from class: com.ksyun.media.streamer.capture.AudioCapture.2
            @Override // java.lang.Runnable
            public void run() {
                StatsLogReport.getInstance().reportError(i4, 1);
                if (AudioCapture.this.f45609n != null) {
                    AudioCapture.this.f45609n.onError(i4);
                }
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(int i4) {
        this.f45606k = i4;
        this.f45605j.post(new Runnable() { // from class: com.ksyun.media.streamer.capture.AudioCapture.1
            @Override // java.lang.Runnable
            public void run() {
                if (AudioCapture.this.f45609n != null) {
                    AudioCapture.this.f45609n.onStatusChanged(AudioCapture.this.f45606k);
                }
            }
        });
    }
}
