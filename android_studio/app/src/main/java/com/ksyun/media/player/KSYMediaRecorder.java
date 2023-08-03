package com.ksyun.media.player;

import android.annotation.TargetApi;
import android.media.Image;
import android.media.MediaCodec;
import android.media.MediaCodecInfo;
import android.media.MediaCodecList;
import android.media.MediaCrypto;
import android.media.MediaFormat;
import android.text.TextUtils;
import android.util.Log;
import android.view.Surface;
import com.google.android.gms.common.n;
import com.ksyun.media.player.KSYMediaMeta;
import com.ksyun.media.player.KSYMediaPlayer;
import com.ksyun.media.player.misc.KSYTrackInfo;
import com.ksyun.media.player.recorder.KSYMediaRecorderConfig;
import com.ksyun.media.streamer.kit.StreamerConstants;
import java.io.File;
import java.io.IOException;
import java.lang.ref.WeakReference;
import java.nio.ByteBuffer;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.LinkedBlockingQueue;
import java.util.concurrent.TimeUnit;
import kotlin.time.DurationKt;

@TargetApi(18)
/* loaded from: classes3.dex */
public class KSYMediaRecorder {

    /* renamed from: a  reason: collision with root package name */
    private static final String f45252a = "KSYMediaRecorder";

    /* renamed from: d  reason: collision with root package name */
    private static final int f45253d = 20;
    private WeakReference<KSYMediaPlayer> B;
    private KSYMediaRecorderConfig C;
    private Thread I;
    private BlockingQueue<c> J;
    private BlockingQueue<c> K;

    /* renamed from: f  reason: collision with root package name */
    private MediaCodec f45257f;

    /* renamed from: g  reason: collision with root package name */
    private MediaCodec f45258g;

    /* renamed from: h  reason: collision with root package name */
    private MediaCodec.BufferInfo f45259h;

    /* renamed from: i  reason: collision with root package name */
    private MediaCodec.BufferInfo f45260i;

    /* renamed from: j  reason: collision with root package name */
    private BlockingQueue<c> f45261j;

    /* renamed from: k  reason: collision with root package name */
    private BlockingQueue<c> f45262k;

    /* renamed from: l  reason: collision with root package name */
    private Thread f45263l;

    /* renamed from: m  reason: collision with root package name */
    private Thread f45264m;

    /* renamed from: n  reason: collision with root package name */
    private Thread f45265n;

    /* renamed from: o  reason: collision with root package name */
    private Thread f45266o;

    /* renamed from: p  reason: collision with root package name */
    private int f45267p;

    /* renamed from: q  reason: collision with root package name */
    private String f45268q;

    /* renamed from: r  reason: collision with root package name */
    private int f45269r;

    /* renamed from: s  reason: collision with root package name */
    private int f45270s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f45271t;

    /* renamed from: u  reason: collision with root package name */
    private boolean f45272u;

    /* renamed from: v  reason: collision with root package name */
    private boolean f45273v;

    /* renamed from: w  reason: collision with root package name */
    private boolean f45274w;

    /* renamed from: x  reason: collision with root package name */
    private boolean f45275x;

    /* renamed from: y  reason: collision with root package name */
    private long f45276y;

    /* renamed from: z  reason: collision with root package name */
    private long f45277z;

    /* renamed from: b  reason: collision with root package name */
    private final String f45254b = "video/avc";

    /* renamed from: c  reason: collision with root package name */
    private final String f45255c = "audio/mp4a-latm";

    /* renamed from: e  reason: collision with root package name */
    private final int f45256e = 10000;
    private ByteBuffer[] A = new ByteBuffer[20];
    private int D = StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE;
    private int E = 2;
    private long F = 0;
    private long G = -1;
    private int H = 25;
    private volatile boolean L = false;
    private final int M = 110;
    private final int N = 111;
    private final int O = 1;
    private final int P = 2;
    private final int Q = 4;
    private final int R = 8;
    private KSYMediaPlayer.OnVideoRawDataListener S = new KSYMediaPlayer.OnVideoRawDataListener() { // from class: com.ksyun.media.player.KSYMediaRecorder.1
        @Override // com.ksyun.media.player.KSYMediaPlayer.OnVideoRawDataListener
        public void onVideoRawDataAvailable(IMediaPlayer iMediaPlayer, byte[] bArr, int i4, int i10, int i11, int i12, long j4) {
            KSYMediaRecorder.this.a(bArr, j4);
            if (KSYMediaRecorder.this.B != null && KSYMediaRecorder.this.B.get() != null) {
                ((KSYMediaPlayer) KSYMediaRecorder.this.B.get()).addVideoRawBuffer(bArr);
            }
            if (KSYMediaRecorder.this.f45263l == null) {
                KSYMediaRecorder kSYMediaRecorder = KSYMediaRecorder.this;
                KSYMediaRecorder kSYMediaRecorder2 = KSYMediaRecorder.this;
                kSYMediaRecorder.f45263l = new Thread(new b(kSYMediaRecorder2, true, false));
                KSYMediaRecorder.this.f45263l.start();
            }
        }
    };
    private KSYMediaPlayer.OnAudioPCMListener T = new KSYMediaPlayer.OnAudioPCMListener() { // from class: com.ksyun.media.player.KSYMediaRecorder.2
        @Override // com.ksyun.media.player.KSYMediaPlayer.OnAudioPCMListener
        public void onAudioPCMAvailable(IMediaPlayer iMediaPlayer, ByteBuffer byteBuffer, long j4, int i4, int i10, int i11) {
            KSYMediaRecorder.this.a(byteBuffer, j4);
        }
    };

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a implements Runnable {
        private a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            while (!KSYMediaRecorder.this.f45271t) {
                if (KSYMediaRecorder.this.L) {
                    c cVar = (c) KSYMediaRecorder.this.J.poll();
                    if (cVar == null) {
                        break;
                    }
                    int i4 = KSYMediaRecorder.this.J.size() > 0 ? 0 : 1;
                    KSYMediaRecorder.this.native_writeKeyData(cVar.f45286b.array(), cVar.f45288d, cVar.f45289e, i4);
                    if (i4 > 0) {
                        break;
                    }
                } else {
                    try {
                        TimeUnit.MILLISECONDS.sleep(100L);
                    } catch (InterruptedException e4) {
                        e4.printStackTrace();
                    }
                }
            }
            while (!KSYMediaRecorder.this.f45271t) {
                c cVar2 = (c) KSYMediaRecorder.this.K.poll();
                if (cVar2 != null) {
                    KSYMediaRecorder.this.native_writeSampleData(cVar2.f45286b.array(), cVar2.f45288d, cVar2.f45287c, cVar2.f45289e);
                } else {
                    try {
                        TimeUnit.MILLISECONDS.sleep(50L);
                    } catch (InterruptedException e10) {
                        e10.printStackTrace();
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class b implements Runnable {

        /* renamed from: b  reason: collision with root package name */
        private KSYMediaRecorder f45282b;

        /* renamed from: c  reason: collision with root package name */
        private boolean f45283c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f45284d;

        public b(KSYMediaRecorder kSYMediaRecorder, boolean z9, boolean z10) {
            this.f45282b = kSYMediaRecorder;
            this.f45283c = z9;
            this.f45284d = z10;
        }

        @Override // java.lang.Runnable
        public void run() {
            KSYMediaRecorder kSYMediaRecorder = this.f45282b;
            if (kSYMediaRecorder != null) {
                if (this.f45284d) {
                    if (this.f45283c) {
                        kSYMediaRecorder.g();
                    } else {
                        kSYMediaRecorder.h();
                    }
                } else if (this.f45283c) {
                    kSYMediaRecorder.e();
                } else {
                    kSYMediaRecorder.f();
                }
            }
        }
    }

    public KSYMediaRecorder(KSYMediaRecorderConfig kSYMediaRecorderConfig, String str) {
        if (!TextUtils.isEmpty(str) && kSYMediaRecorderConfig != null) {
            this.f45268q = str;
            this.C = kSYMediaRecorderConfig;
            return;
        }
        throw new IllegalArgumentException("VideoRecorderConfig or outputPath can't be NULL.");
    }

    private native void native_stop();

    /* JADX INFO: Access modifiers changed from: private */
    public native void native_writeKeyData(byte[] bArr, int i4, int i10, int i11);

    /* JADX INFO: Access modifiers changed from: private */
    public native void native_writeSampleData(byte[] bArr, int i4, long j4, int i10);

    public void init(KSYMediaPlayer kSYMediaPlayer) throws IOException {
        int i4;
        int i10;
        int i11;
        if (this.B == null) {
            this.f45271t = false;
            this.f45274w = false;
            this.f45273v = false;
            this.f45275x = true;
            this.B = new WeakReference<>(kSYMediaPlayer);
            this.f45269r = kSYMediaPlayer.getVideoWidth();
            this.f45270s = kSYMediaPlayer.getVideoHeight();
            boolean z9 = false;
            for (KSYTrackInfo kSYTrackInfo : kSYMediaPlayer.getTrackInfo()) {
                int trackType = kSYTrackInfo.getTrackType();
                if (trackType == 1) {
                    z9 = true;
                } else if (trackType == 2) {
                    this.f45275x = false;
                }
            }
            KSYMediaMeta kSYMediaMeta = kSYMediaPlayer.getMediaInfo().mMeta;
            if (kSYMediaMeta != null) {
                KSYMediaMeta.KSYStreamMeta kSYStreamMeta = kSYMediaMeta.mVideoStream;
                if (kSYStreamMeta != null && (i4 = kSYStreamMeta.mFpsNum) > 0 && (i10 = kSYStreamMeta.mFpsDen) > 0 && (i11 = i4 / i10) > 0) {
                    this.H = i11;
                }
                KSYMediaMeta.KSYStreamMeta kSYStreamMeta2 = kSYMediaMeta.mAudioStream;
                if (kSYStreamMeta2 != null) {
                    int i12 = kSYStreamMeta2.mSampleRate;
                    if (i12 > 0) {
                        this.D = i12;
                    }
                    int i13 = kSYStreamMeta2.mChannelNumber;
                    if (i13 > 0 && i13 <= 2) {
                        this.E = i13;
                    }
                }
            }
            if (z9) {
                if (this.f45269r > 0 && this.f45270s > 0) {
                    this.K = new LinkedBlockingQueue();
                    this.J = new LinkedBlockingQueue();
                    boolean z10 = !this.C.getAudioRecordState();
                    this.f45275x = z10;
                    if (z10) {
                        this.C.setAudioBitrate(-1);
                    }
                    this.f45261j = new LinkedBlockingQueue();
                    if (!this.f45275x) {
                        this.f45262k = new LinkedBlockingQueue();
                    }
                    File file = new File(this.f45268q);
                    if (file.exists()) {
                        file.delete();
                    }
                    a(kSYMediaPlayer);
                    a();
                    return;
                }
                throw new RuntimeException("Video width or height is wrong!");
            }
            throw new RuntimeException("This media file has no video!");
        }
        throw new RuntimeException("Input parameter is null or Android version is too low.");
    }

    public void start() {
        Thread thread = new Thread(new b(this, false, false));
        this.f45264m = thread;
        thread.start();
        WeakReference<KSYMediaPlayer> weakReference = this.B;
        if (weakReference == null || weakReference.get() == null) {
            return;
        }
        this.B.get().setVideoRawDataListener(this.S);
        if (this.f45275x) {
            return;
        }
        this.B.get().setOnAudioPCMAvailableListener(this.T);
    }

    public void stop() {
        this.f45271t = true;
        WeakReference<KSYMediaPlayer> weakReference = this.B;
        if (weakReference != null && weakReference.get() != null) {
            this.B.get().setVideoRawDataListener(null);
        }
        try {
            Thread thread = this.f45263l;
            if (thread != null) {
                thread.join();
            }
            this.f45263l = null;
            Thread thread2 = this.f45264m;
            if (thread2 != null) {
                thread2.join();
            }
            this.f45264m = null;
            Thread thread3 = this.f45265n;
            if (thread3 != null) {
                thread3.join();
            }
            this.f45265n = null;
            Thread thread4 = this.f45266o;
            if (thread4 != null) {
                thread4.join();
            }
            this.f45266o = null;
            Thread thread5 = this.I;
            if (thread5 != null) {
                thread5.join();
            }
            this.I = null;
        } catch (InterruptedException e4) {
            e4.printStackTrace();
        }
        MediaCodec mediaCodec = this.f45257f;
        if (mediaCodec != null) {
            mediaCodec.release();
        }
        this.f45257f = null;
        MediaCodec mediaCodec2 = this.f45258g;
        if (mediaCodec2 != null) {
            mediaCodec2.release();
        }
        this.f45258g = null;
        native_stop();
        BlockingQueue<c> blockingQueue = this.f45261j;
        if (blockingQueue != null) {
            blockingQueue.clear();
        }
        this.f45261j = null;
        BlockingQueue<c> blockingQueue2 = this.f45262k;
        if (blockingQueue2 != null) {
            blockingQueue2.clear();
        }
        this.f45262k = null;
    }

    @TargetApi(21)
    private int b() {
        int[] iArr;
        this.f45267p = 2135033992;
        MediaCodecList mediaCodecList = new MediaCodecList(0);
        String findEncoderForFormat = mediaCodecList.findEncoderForFormat(MediaFormat.createVideoFormat("video/avc", this.f45269r, this.f45270s));
        MediaCodecInfo.CodecCapabilities codecCapabilities = null;
        MediaCodecInfo[] codecInfos = mediaCodecList.getCodecInfos();
        int length = codecInfos.length;
        int i4 = 0;
        while (true) {
            if (i4 >= length) {
                break;
            }
            MediaCodecInfo mediaCodecInfo = codecInfos[i4];
            if (mediaCodecInfo.getName().equals(findEncoderForFormat)) {
                codecCapabilities = mediaCodecInfo.getCapabilitiesForType("video/avc");
                break;
            }
            i4++;
        }
        if (codecCapabilities != null && (iArr = codecCapabilities.colorFormats) != null) {
            for (int i10 : iArr) {
                if (i10 == 19) {
                    this.f45267p = i10;
                    return i10;
                }
            }
            return this.f45267p;
        }
        return this.f45267p;
    }

    private c c() {
        BlockingQueue<c> blockingQueue = this.f45262k;
        if (blockingQueue != null) {
            return blockingQueue.poll();
        }
        return null;
    }

    private c d() {
        BlockingQueue<c> blockingQueue = this.f45261j;
        if (blockingQueue != null) {
            return blockingQueue.poll();
        }
        return null;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void e() {
        while (!this.f45271t) {
            c d4 = d();
            if (d4 != null && d4.f45286b != null) {
                int dequeueInputBuffer = this.f45257f.dequeueInputBuffer(10000L);
                if (dequeueInputBuffer < 0) {
                    continue;
                } else if (!i()) {
                    a(d4, dequeueInputBuffer);
                } else {
                    ByteBuffer byteBuffer = this.f45257f.getInputBuffers()[dequeueInputBuffer];
                    if (byteBuffer != null) {
                        byteBuffer.clear();
                        byteBuffer.put(d4.f45286b.array());
                        this.f45257f.queueInputBuffer(dequeueInputBuffer, 0, d4.f45286b.array().length, d4.f45287c, 0);
                    } else {
                        throw new RuntimeException("Video Encoder Input Buffer is null!");
                    }
                }
            } else {
                try {
                    TimeUnit.MILLISECONDS.sleep(50L);
                } catch (InterruptedException e4) {
                    e4.printStackTrace();
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void f() {
        ByteBuffer[] outputBuffers = this.f45257f.getOutputBuffers();
        while (!this.f45271t) {
            int dequeueOutputBuffer = this.f45257f.dequeueOutputBuffer(this.f45259h, 10000L);
            if (dequeueOutputBuffer != -1 && dequeueOutputBuffer != -3) {
                if (dequeueOutputBuffer == -2) {
                    if (!this.f45272u) {
                        if (this.I == null) {
                            Thread thread = new Thread(new a());
                            this.I = thread;
                            thread.start();
                        }
                        this.f45272u = true;
                        if (!this.f45275x) {
                            if (this.f45265n == null) {
                                Thread thread2 = new Thread(new b(this, true, true));
                                this.f45265n = thread2;
                                thread2.start();
                            }
                            if (this.f45266o == null) {
                                Thread thread3 = new Thread(new b(this, false, true));
                                this.f45266o = thread3;
                                thread3.start();
                            }
                        }
                    } else {
                        throw new RuntimeException("format changed twice");
                    }
                } else if (dequeueOutputBuffer < 0) {
                    Log.w(f45252a, "unexpected result from encoder.dequeueVideoOutputBuffer: " + dequeueOutputBuffer);
                } else {
                    ByteBuffer byteBuffer = outputBuffers[dequeueOutputBuffer];
                    if (byteBuffer != null) {
                        MediaCodec.BufferInfo bufferInfo = this.f45259h;
                        if (bufferInfo.size != 0) {
                            if (this.f45272u) {
                                byteBuffer.position(bufferInfo.offset);
                                MediaCodec.BufferInfo bufferInfo2 = this.f45259h;
                                byteBuffer.limit(bufferInfo2.offset + bufferInfo2.size);
                                MediaCodec.BufferInfo bufferInfo3 = this.f45259h;
                                int i4 = bufferInfo3.flags;
                                if ((i4 & 2) != 0) {
                                    b(byteBuffer, 110, bufferInfo3.presentationTimeUs, 1);
                                    if (this.f45275x) {
                                        this.L = true;
                                    }
                                } else {
                                    a(byteBuffer, 110, bufferInfo3.presentationTimeUs, (i4 & 1) > 0 ? 2 : 4);
                                }
                                this.G = this.f45259h.presentationTimeUs;
                            } else {
                                throw new RuntimeException("muxer hasn't started");
                            }
                        }
                        this.f45257f.releaseOutputBuffer(dequeueOutputBuffer, false);
                    } else {
                        throw new RuntimeException("encoderOutputBuffer " + dequeueOutputBuffer + " was null");
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void g() {
        ByteBuffer[] inputBuffers = this.f45258g.getInputBuffers();
        while (!this.f45271t) {
            c c10 = c();
            if (c10 != null && c10.f45286b != null) {
                ByteBuffer byteBuffer = c10.f45286b;
                int position = byteBuffer.position();
                while (position < byteBuffer.limit() && !this.f45271t) {
                    int dequeueInputBuffer = this.f45258g.dequeueInputBuffer(10000L);
                    if (dequeueInputBuffer >= 0) {
                        ByteBuffer byteBuffer2 = inputBuffers[dequeueInputBuffer];
                        int limit = byteBuffer.limit() - position;
                        byteBuffer2.clear();
                        if (limit > byteBuffer2.limit() - byteBuffer2.position()) {
                            limit = byteBuffer2.limit() - byteBuffer2.position();
                        }
                        int i4 = limit;
                        long j4 = ((DurationKt.NANOS_IN_MILLIS / this.D) * position) + c10.f45287c;
                        byteBuffer2.put(byteBuffer.array(), position, i4);
                        position += i4;
                        this.f45258g.queueInputBuffer(dequeueInputBuffer, 0, i4, j4, 0);
                    }
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void h() {
        ByteBuffer[] outputBuffers = this.f45258g.getOutputBuffers();
        while (!this.f45271t) {
            int dequeueOutputBuffer = this.f45258g.dequeueOutputBuffer(this.f45260i, 10000L);
            if (dequeueOutputBuffer >= 0) {
                ByteBuffer byteBuffer = outputBuffers[dequeueOutputBuffer];
                byteBuffer.position(this.f45260i.offset);
                MediaCodec.BufferInfo bufferInfo = this.f45260i;
                byteBuffer.limit(bufferInfo.offset + bufferInfo.size);
                if (this.F == 0) {
                    this.F = this.f45260i.presentationTimeUs;
                }
                MediaCodec.BufferInfo bufferInfo2 = this.f45260i;
                if ((bufferInfo2.flags & 2) != 0) {
                    b(byteBuffer, 111, bufferInfo2.presentationTimeUs, 8);
                    this.L = true;
                } else {
                    long j4 = this.F;
                    long j10 = bufferInfo2.presentationTimeUs;
                    if (j4 <= j10) {
                        this.F = j10;
                        a(byteBuffer, 111, j10, 4);
                    }
                }
                this.f45258g.releaseOutputBuffer(dequeueOutputBuffer, false);
            }
        }
    }

    private boolean i() {
        return this.f45267p == 19;
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class c {

        /* renamed from: b  reason: collision with root package name */
        private ByteBuffer f45286b;

        /* renamed from: c  reason: collision with root package name */
        private long f45287c;

        /* renamed from: d  reason: collision with root package name */
        private int f45288d;

        /* renamed from: e  reason: collision with root package name */
        private int f45289e;

        public c(int i4, long j4) {
            this.f45286b = ByteBuffer.allocate(i4);
            this.f45287c = j4;
        }

        public c(ByteBuffer byteBuffer, int i4, long j4, int i10) {
            ByteBuffer allocate = ByteBuffer.allocate(byteBuffer.limit());
            this.f45286b = allocate;
            byteBuffer.get(allocate.array());
            this.f45286b.flip();
            this.f45288d = i4;
            this.f45287c = j4;
            this.f45289e = i10;
        }
    }

    private void a() throws IOException {
        int i4;
        WeakReference<KSYMediaPlayer> weakReference = this.B;
        if (weakReference != null && weakReference.get() != null) {
            this.B.get().initRecorderMuxer(this.f45268q, this.C.getVideoBitrate(), this.C.getAudioBitrate());
        }
        MediaFormat createVideoFormat = MediaFormat.createVideoFormat("video/avc", this.f45269r, this.f45270s);
        createVideoFormat.setInteger("color-format", b());
        createVideoFormat.setInteger(KSYMediaMeta.IJKM_KEY_BITRATE, this.C.getVideoBitrate());
        createVideoFormat.setInteger("frame-rate", this.H);
        createVideoFormat.setInteger("i-frame-interval", this.C.getKeyFrameIntervalSecond());
        createVideoFormat.setInteger(n.f29237a, 1);
        createVideoFormat.setInteger("level", 512);
        MediaCodec createEncoderByType = MediaCodec.createEncoderByType("video/avc");
        this.f45257f = createEncoderByType;
        createEncoderByType.configure(createVideoFormat, (Surface) null, (MediaCrypto) null, 1);
        this.f45257f.start();
        this.f45259h = new MediaCodec.BufferInfo();
        if (this.f45275x) {
            return;
        }
        int i10 = this.E;
        if (i10 == 1) {
            i4 = 16;
        } else if (i10 != 2) {
            throw new IllegalArgumentException("Invalid channel count. Must be 1 or 2");
        } else {
            i4 = 12;
        }
        MediaFormat createAudioFormat = MediaFormat.createAudioFormat("audio/mp4a-latm", this.D, i4);
        createAudioFormat.setInteger("sample-rate", this.D);
        createAudioFormat.setInteger("channel-count", this.E);
        createAudioFormat.setInteger("aac-profile", 2);
        createAudioFormat.setInteger(KSYMediaMeta.IJKM_KEY_BITRATE, this.C.getAudioBitrate());
        MediaCodec createEncoderByType2 = MediaCodec.createEncoderByType("audio/mp4a-latm");
        this.f45258g = createEncoderByType2;
        createEncoderByType2.configure(createAudioFormat, (Surface) null, (MediaCrypto) null, 1);
        this.f45258g.start();
        this.f45260i = new MediaCodec.BufferInfo();
    }

    private void b(ByteBuffer byteBuffer, int i4, long j4, int i10) {
        if (this.J != null) {
            this.J.offer(new c(byteBuffer, i4, j4, i10));
        }
    }

    private void a(KSYMediaPlayer kSYMediaPlayer) {
        int i4 = ((this.f45270s * (((this.f45269r + 15) / 16) * 16)) * 3) / 2;
        for (int i10 = 0; i10 < 20; i10++) {
            this.A[i10] = ByteBuffer.allocate(i4);
            kSYMediaPlayer.addVideoRawBuffer(this.A[i10].array());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(ByteBuffer byteBuffer, long j4) {
        if (!this.f45274w) {
            this.f45277z = j4;
            this.f45274w = true;
        }
        long j10 = (j4 - this.f45277z) * 1000;
        if (this.f45262k != null) {
            c cVar = new c(byteBuffer.limit(), j10);
            cVar.f45286b.put(byteBuffer.array(), 0, byteBuffer.limit());
            cVar.f45286b.flip();
            this.f45262k.offer(cVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(byte[] bArr, long j4) {
        if (!this.f45273v) {
            this.f45276y = j4;
            this.f45273v = true;
        }
        long j10 = (j4 - this.f45276y) * 1000;
        if (this.f45261j != null) {
            c cVar = new c(bArr.length, j10);
            cVar.f45286b.put(bArr);
            cVar.f45286b.flip();
            this.f45261j.offer(cVar);
        }
    }

    private void a(ByteBuffer byteBuffer, int i4, long j4, int i10) {
        if (this.K != null) {
            this.K.offer(new c(byteBuffer, i4, j4, i10));
        }
    }

    @TargetApi(21)
    private void a(c cVar, int i4) {
        Image inputImage = this.f45257f.getInputImage(i4);
        ByteBuffer byteBuffer = cVar.f45286b;
        int i10 = (this.f45269r + 15) / 16;
        int height = inputImage.getHeight();
        int width = inputImage.getWidth();
        int i11 = 0;
        int i12 = 0;
        while (i11 < inputImage.getPlanes().length) {
            ByteBuffer buffer = inputImage.getPlanes()[i11].getBuffer();
            int i13 = i11 == 0 ? 0 : 1;
            int i14 = width >> i13;
            int i15 = height >> i13;
            int rowStride = inputImage.getPlanes()[i11].getRowStride();
            int i16 = i15 * i14;
            int pixelStride = inputImage.getPlanes()[i11].getPixelStride();
            if (rowStride == i14) {
                buffer.put(byteBuffer.array(), i12, i16);
            } else {
                byte[] array = byteBuffer.array();
                int i17 = i12;
                for (int i18 = 0; i18 < i15; i18++) {
                    int i19 = i18 * pixelStride * i14;
                    int i20 = 0;
                    while (i20 < i14) {
                        buffer.put(i19 + (i20 * pixelStride), array[i17 + i20]);
                        i20++;
                        inputImage = inputImage;
                        byteBuffer = byteBuffer;
                    }
                    i17 += i14;
                }
            }
            i12 += i16;
            i11++;
            inputImage = inputImage;
            byteBuffer = byteBuffer;
        }
        this.f45257f.queueInputBuffer(i4, 0, cVar.f45286b.array().length, cVar.f45287c, 0);
    }
}
