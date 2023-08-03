package com.ksyun.media.streamer.publisher;

import android.os.ConditionVariable;
import android.os.Handler;
import android.os.HandlerThread;
import android.os.Looper;
import android.os.Message;
import android.text.TextUtils;
import android.util.Log;
import com.ksyun.media.streamer.framework.AVPacketBase;
import com.ksyun.media.streamer.framework.AudioCodecFormat;
import com.ksyun.media.streamer.framework.AudioPacket;
import com.ksyun.media.streamer.framework.ImgPacket;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.VideoCodecFormat;
import com.ksyun.media.streamer.publisher.PublisherWrapper;
import com.ksyun.media.streamer.util.FrameBufferCache;
import java.nio.ByteBuffer;
import java.util.LinkedHashMap;
import java.util.Map;
import java.util.concurrent.BlockingQueue;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public abstract class Publisher {
    protected static final int CMD_ADD_AUDIO_TRACK = 5;
    protected static final int CMD_ADD_VIDEO_TRACK = 6;
    protected static final int CMD_RELEASE = 4;
    protected static final int CMD_START = 1;
    protected static final int CMD_STOP = 2;
    protected static final int CMD_WRITE_FRAME = 3;
    public static final int ERROR_AV_ASYNC_ERROR = -2004;
    public static final int ERROR_INVALID_STATE = -2010;
    public static final int INFO_AUDIO_HEADER_GOT = 2;
    public static final int INFO_STARTED = 1;
    public static final int INFO_STOPPED = 4;
    public static final int INFO_VIDEO_HEADER_GOT = 3;
    protected static final long INVALID_TS = Long.MIN_VALUE;
    public static final int STATE_IDLE = 0;
    public static final int STATE_PUBLISHING = 2;
    public static final int STATE_STARTING = 1;
    public static final int STATE_STOPPING = 3;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46628a = "Publisher";

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f46629b = false;

    /* renamed from: c  reason: collision with root package name */
    private static final int f46630c = 10000;

    /* renamed from: d  reason: collision with root package name */
    private static final int f46631d = 204800;

    /* renamed from: e  reason: collision with root package name */
    private static final int f46632e = 1024;

    /* renamed from: f  reason: collision with root package name */
    private static final int f46633f = 1024;

    /* renamed from: g  reason: collision with root package name */
    private FrameBufferCache f46634g;

    /* renamed from: h  reason: collision with root package name */
    private FrameBufferCache f46635h;

    /* renamed from: i  reason: collision with root package name */
    private BlockingQueue<AVPacketBase> f46636i;

    /* renamed from: k  reason: collision with root package name */
    private ByteBuffer f46638k;

    /* renamed from: l  reason: collision with root package name */
    private ByteBuffer f46639l;

    /* renamed from: m  reason: collision with root package name */
    private final Map<String, String> f46640m;
    protected int mAFrameDropped;
    protected int mAudioBitrate;
    protected boolean mAudioFrameGot;
    protected boolean mAudioHeaderGot;
    protected boolean mAudioTrackAdded;
    protected boolean mForceVideoFrameFirst;
    protected float mFramerate;
    protected long mInitDts;
    protected boolean mIsAudioOnly;
    protected volatile boolean mIsPublishing;
    protected boolean mIsVideoOnly;
    protected long mLastAudioDts;
    protected long mLastVideoDts;
    protected PubListener mPubListener;
    protected PublisherWrapper mPubWrapper;
    protected Handler mPublishHandler;
    protected HandlerThread mPublishThread;
    protected String mUrl;
    protected int mVFrameDroppedInner;
    protected int mVFrameDroppedUpper;
    protected int mVideoBitrate;
    protected boolean mVideoHeaderGot;
    protected boolean mVideoKeyFrameGot;
    protected boolean mVideoTrackAdded;

    /* renamed from: p  reason: collision with root package name */
    private boolean f46643p;

    /* renamed from: q  reason: collision with root package name */
    private boolean f46644q;

    /* renamed from: j  reason: collision with root package name */
    private final Object f46637j = new Object();

    /* renamed from: n  reason: collision with root package name */
    private boolean f46641n = false;

    /* renamed from: o  reason: collision with root package name */
    private boolean f46642o = false;

    /* renamed from: r  reason: collision with root package name */
    private ConditionVariable f46645r = new ConditionVariable();

    /* renamed from: s  reason: collision with root package name */
    private SinkPin<ImgPacket> f46646s = new b();

    /* renamed from: t  reason: collision with root package name */
    private SinkPin<AudioPacket> f46647t = new a();
    protected final Handler mMainHandler = new Handler(Looper.getMainLooper());
    protected AtomicInteger mState = new AtomicInteger(0);

    /* loaded from: classes3.dex */
    public interface PubListener {
        void onError(int i4, long j4);

        void onInfo(int i4, long j4);
    }

    /* loaded from: classes3.dex */
    private class a extends SinkPin<AudioPacket> {
        private a() {
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        /* renamed from: a */
        public void onFrameAvailable(AudioPacket audioPacket) {
            Publisher.this.handleAVFrame(audioPacket);
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onDisconnect(boolean z9) {
            if (z9) {
                Publisher publisher = Publisher.this;
                if (publisher.mIsVideoOnly) {
                    return;
                }
                publisher.release();
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFormatChanged(Object obj) {
            Publisher.this.a(obj);
        }
    }

    /* loaded from: classes3.dex */
    private class b extends SinkPin<ImgPacket> {
        private b() {
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        /* renamed from: a */
        public void onFrameAvailable(ImgPacket imgPacket) {
            Publisher.this.handleAVFrame(imgPacket);
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onDisconnect(boolean z9) {
            if (z9) {
                Publisher publisher = Publisher.this;
                if (publisher.mIsVideoOnly) {
                    publisher.release();
                }
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFormatChanged(Object obj) {
            Publisher.this.a(obj);
        }
    }

    public Publisher(String str) {
        a(str);
        this.mPubWrapper = new PublisherWrapper();
        this.mPubWrapper.a(new PublisherWrapper.a() { // from class: com.ksyun.media.streamer.publisher.Publisher.1
            @Override // com.ksyun.media.streamer.publisher.PublisherWrapper.a
            public void a(int i4, long j4) {
                Publisher.this.postInfo(i4, j4);
            }
        });
        this.f46640m = new LinkedHashMap();
    }

    public void addMetaOption(String str, String str2) {
        synchronized (this.f46640m) {
            this.f46640m.put(str, str2);
        }
    }

    protected int doAddAudioTrack(AudioPacket audioPacket) {
        if (this.mAudioTrackAdded) {
            return 0;
        }
        PublisherWrapper publisherWrapper = this.mPubWrapper;
        AudioCodecFormat audioCodecFormat = audioPacket.format;
        int a10 = publisherWrapper.a(audioCodecFormat.codecId, audioCodecFormat.sampleFmt, audioCodecFormat.sampleRate, audioCodecFormat.channels, this.mAudioBitrate, audioPacket.buf, audioCodecFormat.avCodecParPtr);
        if (a10 == 0) {
            postInfo(2);
            this.mAudioTrackAdded = true;
        }
        return a10;
    }

    protected int doAddVideoTrack(ImgPacket imgPacket) {
        PublisherWrapper publisherWrapper = this.mPubWrapper;
        VideoCodecFormat videoCodecFormat = imgPacket.format;
        int a10 = publisherWrapper.a(videoCodecFormat.codecId, videoCodecFormat.width, videoCodecFormat.height, this.mFramerate, this.mVideoBitrate, imgPacket.buf, videoCodecFormat.avCodecParPtr);
        if (a10 == 0 && !this.mVideoTrackAdded) {
            postInfo(3);
            this.mVideoTrackAdded = true;
        }
        return a10;
    }

    protected void doRelease() {
        PublisherWrapper publisherWrapper = this.mPubWrapper;
        if (publisherWrapper != null) {
            publisherWrapper.b();
            this.mPubWrapper = null;
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int doStart(String str) {
        int a10 = this.mPubWrapper.a(str);
        if (a10 == 0) {
            synchronized (this.f46640m) {
                for (String str2 : this.f46640m.keySet()) {
                    this.mPubWrapper.a(str2, this.f46640m.get(str2));
                }
            }
        }
        return a10;
    }

    protected void doStop() {
        this.mPubWrapper.c();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public int doWriteFrame(AVPacketBase aVPacketBase) {
        if (aVPacketBase instanceof AudioPacket) {
            if (aVPacketBase.pts < 0) {
                return 0;
            }
            return writeFrame(1, aVPacketBase.getAvPacketOpaque(), aVPacketBase.buf, aVPacketBase.dts, aVPacketBase.pts, aVPacketBase.flags);
        } else if (aVPacketBase instanceof ImgPacket) {
            return writeFrame(2, aVPacketBase.getAvPacketOpaque(), aVPacketBase.buf, aVPacketBase.dts, aVPacketBase.pts, aVPacketBase.flags);
        } else {
            return 0;
        }
    }

    public SinkPin<AudioPacket> getAudioSink() {
        return this.f46647t;
    }

    public boolean getAutoWork() {
        return this.f46641n;
    }

    public boolean getBlockingMode() {
        return this.f46642o;
    }

    public boolean getForceVideoFrameFirst() {
        return this.mForceVideoFrameFirst;
    }

    public PubListener getPubListener() {
        return this.mPubListener;
    }

    public String getUrl() {
        return this.mUrl;
    }

    public int getVideoCacheLength() {
        PublisherWrapper publisherWrapper = this.mPubWrapper;
        if (publisherWrapper == null) {
            return 0;
        }
        return publisherWrapper.a(10);
    }

    public SinkPin<ImgPacket> getVideoSink() {
        return this.f46646s;
    }

    /* JADX WARN: Removed duplicated region for block: B:157:0x0258 A[Catch: all -> 0x0241, TryCatch #1 {all -> 0x0241, blocks: (B:146:0x0235, B:148:0x0239, B:155:0x0254, B:157:0x0258, B:159:0x0261, B:161:0x0266, B:160:0x0264, B:152:0x0246, B:154:0x024a), top: B:233:0x0235 }] */
    /* JADX WARN: Removed duplicated region for block: B:159:0x0261 A[Catch: all -> 0x0241, TryCatch #1 {all -> 0x0241, blocks: (B:146:0x0235, B:148:0x0239, B:155:0x0254, B:157:0x0258, B:159:0x0261, B:161:0x0266, B:160:0x0264, B:152:0x0246, B:154:0x024a), top: B:233:0x0235 }] */
    /* JADX WARN: Removed duplicated region for block: B:160:0x0264 A[Catch: all -> 0x0241, TryCatch #1 {all -> 0x0241, blocks: (B:146:0x0235, B:148:0x0239, B:155:0x0254, B:157:0x0258, B:159:0x0261, B:161:0x0266, B:160:0x0264, B:152:0x0246, B:154:0x024a), top: B:233:0x0235 }] */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    protected void handleAVFrame(com.ksyun.media.streamer.framework.AVPacketBase r19) {
        /*
            Method dump skipped, instructions count: 866
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.ksyun.media.streamer.publisher.Publisher.handleAVFrame(com.ksyun.media.streamer.framework.AVPacketBase):void");
    }

    protected abstract boolean isAddExtraForVideoKeyFrame();

    public boolean isAudioExtraGot() {
        return this.f46639l != null;
    }

    public boolean isAudioOnly() {
        return this.mIsAudioOnly;
    }

    public boolean isPublishing() {
        return this.mIsPublishing;
    }

    protected boolean isUseFFmpeg() {
        return true;
    }

    public boolean isVideoExtraGot() {
        return this.f46638k != null;
    }

    public boolean isVideoOnly() {
        return this.mIsVideoOnly;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void postError(int i4) {
        postError(i4, 0L);
    }

    protected void postInfo(int i4) {
        postInfo(i4, 0L);
    }

    public void release() {
        HandlerThread handlerThread = this.mPublishThread;
        if (handlerThread != null) {
            this.mPublishHandler.sendMessage(this.mPublishHandler.obtainMessage(4, handlerThread));
            this.mPublishThread = null;
        }
    }

    public void setAudioBitrate(int i4) {
        this.mAudioBitrate = i4;
    }

    public void setAudioExtra(AVPacketBase aVPacketBase) {
        a(aVPacketBase);
    }

    public void setAudioOnly(boolean z9) {
        if (this.mIsVideoOnly && z9) {
            throw new IllegalArgumentException("audioOnly and videoOnly both be true");
        }
        this.mIsAudioOnly = z9;
        this.mPubWrapper.a(z9);
    }

    public void setAutoWork(boolean z9) {
        this.f46641n = z9;
    }

    public void setBlockingMode(boolean z9) {
        this.f46642o = z9;
    }

    public void setForceVideoFrameFirst(boolean z9) {
        this.mForceVideoFrameFirst = z9;
    }

    public void setFramerate(float f10) {
        this.mFramerate = f10;
    }

    public void setPubListener(PubListener pubListener) {
        this.mPubListener = pubListener;
    }

    public void setUrl(String str) {
        this.mUrl = str;
    }

    public void setVideoBitrate(int i4) {
        this.mVideoBitrate = i4;
    }

    public void setVideoExtra(AVPacketBase aVPacketBase) {
        a(aVPacketBase);
    }

    public void setVideoOnly(boolean z9) {
        if (this.mIsAudioOnly && z9) {
            throw new IllegalArgumentException("audioOnly and videoOnly both be true");
        }
        this.mIsVideoOnly = z9;
        this.mPubWrapper.b(z9);
    }

    public boolean start(String str) {
        if (this.mState.get() != 0 && this.mState.get() != 3) {
            Log.e(f46628a, "startRecording on invalid state");
            return false;
        } else if (TextUtils.isEmpty(str)) {
            Log.e(f46628a, "uri is empty");
            return false;
        } else {
            this.mIsPublishing = true;
            this.mInitDts = Long.MIN_VALUE;
            this.mLastVideoDts = Long.MIN_VALUE;
            this.mLastAudioDts = Long.MIN_VALUE;
            this.mAFrameDropped = 0;
            this.mVFrameDroppedUpper = 0;
            this.mVFrameDroppedInner = 0;
            this.mUrl = str;
            if (this.mPublishThread != null) {
                this.mPublishHandler.sendMessage(this.mPublishHandler.obtainMessage(1, str));
                return true;
            }
            return false;
        }
    }

    public void stop() {
        if (this.mState.get() == 0 || this.mState.get() == 3) {
            return;
        }
        this.mIsPublishing = false;
        if (this.mState.get() == 1) {
            Log.d(f46628a, "abort connecting...");
            this.mPubWrapper.a();
        }
        if (this.mPublishThread != null) {
            this.mPublishHandler.sendEmptyMessage(2);
        }
        synchronized (this.f46640m) {
            this.f46640m.clear();
        }
    }

    protected int writeFrame(int i4, long j4, ByteBuffer byteBuffer, long j10, long j11, int i10) {
        return this.mPubWrapper.a(i4, j4, byteBuffer, j10, j11, i10);
    }

    protected void postError(final int i4, final long j4) {
        if (isPublishing()) {
            this.mMainHandler.post(new Runnable() { // from class: com.ksyun.media.streamer.publisher.Publisher.3
                @Override // java.lang.Runnable
                public void run() {
                    if (Publisher.this.getPubListener() != null) {
                        Publisher.this.getPubListener().onError(i4, j4);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void postInfo(final int i4, final long j4) {
        this.mMainHandler.post(new Runnable() { // from class: com.ksyun.media.streamer.publisher.Publisher.2
            @Override // java.lang.Runnable
            public void run() {
                if (Publisher.this.getPubListener() != null) {
                    Publisher.this.getPubListener().onInfo(i4, j4);
                }
            }
        });
    }

    private void a(AVPacketBase aVPacketBase) {
        if (aVPacketBase == null || aVPacketBase.buf == null) {
            return;
        }
        handleAVFrame(aVPacketBase);
    }

    protected int doWriteFrame(boolean z9) {
        ByteBuffer byteBuffer;
        ByteBuffer byteBuffer2;
        int i4 = 0;
        while (true) {
            AVPacketBase poll = this.f46636i.poll();
            if (poll == null) {
                return i4;
            }
            long j4 = poll.dts;
            long j10 = this.mInitDts;
            poll.dts = j4 - j10;
            poll.pts -= j10;
            if (i4 == 0 && !z9) {
                i4 = doWriteFrame(poll);
            }
            if (poll.isRefCounted()) {
                poll.unref();
            } else {
                synchronized (this.f46637j) {
                    if ((poll instanceof AudioPacket) && (byteBuffer2 = poll.buf) != null) {
                        this.f46634g.offer(byteBuffer2);
                    } else if ((poll instanceof ImgPacket) && (byteBuffer = poll.buf) != null) {
                        this.f46635h.offer(byteBuffer);
                    }
                }
            }
        }
    }

    private void a(String str) {
        HandlerThread handlerThread = new HandlerThread(str + "thread");
        this.mPublishThread = handlerThread;
        handlerThread.start();
        this.mPublishHandler = new Handler(this.mPublishThread.getLooper()) { // from class: com.ksyun.media.streamer.publisher.Publisher.4
            @Override // android.os.Handler
            public void handleMessage(Message message) {
                int doAddAudioTrack;
                int doAddVideoTrack;
                switch (message.what) {
                    case 1:
                        if (Publisher.this.mState.get() == 0) {
                            Publisher.this.mState.set(1);
                            Publisher publisher = Publisher.this;
                            publisher.mAudioHeaderGot = false;
                            publisher.mVideoHeaderGot = false;
                            publisher.mAudioTrackAdded = false;
                            publisher.mVideoTrackAdded = false;
                            publisher.mAudioFrameGot = false;
                            publisher.mVideoKeyFrameGot = false;
                            publisher.f46644q = false;
                            Publisher.this.f46643p = false;
                            int doStart = Publisher.this.doStart((String) message.obj);
                            Publisher.this.mState.set(doStart != 0 ? 0 : 2);
                            if (Publisher.this.getAutoWork()) {
                                Publisher.this.f46645r.open();
                            }
                            if (doStart == 0) {
                                Publisher.this.postInfo(1);
                                return;
                            } else {
                                Publisher.this.postError(doStart);
                                return;
                            }
                        }
                        return;
                    case 2:
                        if (Publisher.this.mState.get() == 2) {
                            Publisher.this.mState.set(3);
                            synchronized (Publisher.this.f46637j) {
                                Publisher.this.f46639l = null;
                                Publisher.this.f46638k = null;
                                if (Publisher.this.f46634g != null) {
                                    Publisher.this.f46634g.clear();
                                    Publisher.this.f46634g = null;
                                }
                                if (Publisher.this.f46635h != null) {
                                    Publisher.this.f46635h.clear();
                                    Publisher.this.f46635h = null;
                                }
                                if (Publisher.this.f46636i != null) {
                                    Publisher.this.f46636i.clear();
                                }
                            }
                            Publisher.this.doStop();
                            Publisher.this.mState.set(0);
                            Publisher.this.postInfo(4);
                            return;
                        }
                        return;
                    case 3:
                        if (Publisher.this.mState.get() == 2) {
                            int doWriteFrame = Publisher.this.doWriteFrame(false);
                            if (doWriteFrame != 0) {
                                Publisher.this.postError(doWriteFrame);
                                return;
                            }
                            return;
                        }
                        Log.e(Publisher.f46628a, "Please start publisher before encoder, or enable auto work mode!");
                        Publisher.this.doWriteFrame(true);
                        return;
                    case 4:
                        Publisher.this.doRelease();
                        ((HandlerThread) message.obj).quit();
                        return;
                    case 5:
                        if (Publisher.this.mState.get() != 2 || (doAddAudioTrack = Publisher.this.doAddAudioTrack((AudioPacket) message.obj)) == 0) {
                            return;
                        }
                        Publisher.this.postError(doAddAudioTrack);
                        return;
                    case 6:
                        if (Publisher.this.mState.get() != 2 || (doAddVideoTrack = Publisher.this.doAddVideoTrack((ImgPacket) message.obj)) == 0) {
                            return;
                        }
                        Publisher.this.postError(doAddVideoTrack);
                        return;
                    default:
                        return;
                }
            }
        };
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void a(Object obj) {
        boolean z9;
        if (getAutoWork()) {
            if (obj instanceof VideoCodecFormat) {
                z9 = true;
            } else if (!(obj instanceof AudioCodecFormat)) {
                return;
            } else {
                z9 = false;
            }
            if (isAudioOnly() && z9) {
                return;
            }
            if ((!isVideoOnly() || z9) && !this.mIsPublishing && this.mState.get() == 0) {
                this.f46645r.close();
                if (start(this.mUrl)) {
                    this.f46645r.block();
                    return;
                }
                this.f46645r.open();
                postError(ERROR_INVALID_STATE);
            }
        }
    }
}
