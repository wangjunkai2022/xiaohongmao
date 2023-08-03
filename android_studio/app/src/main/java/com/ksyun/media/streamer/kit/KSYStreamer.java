package com.ksyun.media.streamer.kit;

import android.content.BroadcastReceiver;
import android.content.Context;
import android.content.Intent;
import android.content.IntentFilter;
import android.graphics.Bitmap;
import android.media.AudioManager;
import android.opengl.GLSurfaceView;
import android.os.Handler;
import android.os.Looper;
import android.text.TextUtils;
import android.util.Log;
import android.view.TextureView;
import androidx.vectordrawable.graphics.drawable.PathInterpolatorCompat;
import com.facebook.imagepipeline.common.e;
import com.ksyun.media.streamer.capture.AudioCapture;
import com.ksyun.media.streamer.capture.AudioPlayerCapture;
import com.ksyun.media.streamer.capture.CameraCapture;
import com.ksyun.media.streamer.capture.ImageCapture;
import com.ksyun.media.streamer.capture.WaterMarkCapture;
import com.ksyun.media.streamer.encoder.AVCodecAudioEncoder;
import com.ksyun.media.streamer.encoder.AudioEncoderMgt;
import com.ksyun.media.streamer.encoder.Encoder;
import com.ksyun.media.streamer.encoder.MediaCodecAudioEncoder;
import com.ksyun.media.streamer.encoder.VideoEncoderMgt;
import com.ksyun.media.streamer.filter.audio.AudioAPMFilterMgt;
import com.ksyun.media.streamer.filter.audio.AudioFilterMgt;
import com.ksyun.media.streamer.filter.audio.AudioMixer;
import com.ksyun.media.streamer.filter.audio.AudioPreview;
import com.ksyun.media.streamer.filter.audio.AudioResampleFilter;
import com.ksyun.media.streamer.filter.imgtex.ImgTexFilterMgt;
import com.ksyun.media.streamer.filter.imgtex.ImgTexMixer;
import com.ksyun.media.streamer.filter.imgtex.ImgTexPreview;
import com.ksyun.media.streamer.filter.imgtex.ImgTexScaleFilter;
import com.ksyun.media.streamer.framework.AudioBufFormat;
import com.ksyun.media.streamer.framework.AudioCodecFormat;
import com.ksyun.media.streamer.framework.VideoCodecFormat;
import com.ksyun.media.streamer.logstats.StatsConstant;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import com.ksyun.media.streamer.publisher.FilePublisher;
import com.ksyun.media.streamer.publisher.Publisher;
import com.ksyun.media.streamer.publisher.PublisherMgt;
import com.ksyun.media.streamer.publisher.RtmpPublisher;
import com.ksyun.media.streamer.util.BitmapLoader;
import com.ksyun.media.streamer.util.gles.GLRender;
import io.sentry.protocol.t;
import java.util.concurrent.atomic.AtomicInteger;

/* loaded from: classes3.dex */
public class KSYStreamer {
    private static final boolean DEBUG = false;
    private static final int DEFAULT_PREVIEW_HEIGHT = 1280;
    private static final int DEFAULT_PREVIEW_WIDTH = 720;
    private static final String TAG = "KSYStreamer";
    protected AudioAPMFilterMgt mAudioAPMFilterMgt;
    protected AudioCapture mAudioCapture;
    protected AudioEncoderMgt mAudioEncoderMgt;
    protected AudioFilterMgt mAudioFilterMgt;
    protected AudioMixer mAudioMixer;
    protected AudioPlayerCapture mAudioPlayerCapture;
    protected AudioPreview mAudioPreview;
    protected AudioResampleFilter mAudioResampleFilter;
    protected AtomicInteger mAudioUsingCount;
    protected CameraCapture mCameraCapture;
    protected Context mContext;
    protected FilePublisher mFilePublisher;
    protected GLRender mGLRender;
    private a mHeadSetReceiver;
    protected ImageCapture mImageCapture;
    protected ImgTexFilterMgt mImgTexFilterMgt;
    protected ImgTexMixer mImgTexMixer;
    protected ImgTexPreview mImgTexPreview;
    protected ImgTexMixer mImgTexPreviewMixer;
    protected ImgTexScaleFilter mImgTexScaleFilter;
    private Handler mMainHandler;
    private OnErrorListener mOnErrorListener;
    private OnInfoListener mOnInfoListener;
    protected PublisherMgt mPublisherMgt;
    protected String mRecordUri;
    protected RtmpPublisher mRtmpPublisher;
    protected String mUri;
    protected VideoEncoderMgt mVideoEncoderMgt;
    protected WaterMarkCapture mWaterMarkCapture;
    protected int mAudioCaptureType = 1;
    protected int mIdxCamera = 0;
    protected int mIdxWmLogo = 1;
    protected int mIdxWmTime = 2;
    protected int mIdxAudioMic = 0;
    protected int mIdxAudioBgm = 1;
    protected int mScreenRenderWidth = 0;
    protected int mScreenRenderHeight = 0;
    protected int mPreviewResolution = 0;
    protected int mPreviewWidth = 0;
    protected int mPreviewHeight = 0;
    protected float mPreviewFps = 0.0f;
    protected int mTargetResolution = 0;
    protected int mTargetWidth = 0;
    protected int mTargetHeight = 0;
    protected float mTargetFps = 0.0f;
    protected float mIFrameInterval = 3.0f;
    protected int mVideoCodecId = 1;
    protected int mEncodeScene = 1;
    protected int mEncodeProfile = 3;
    protected int mRotateDegrees = 0;
    protected int mMaxVideoBitrate = StreamerConstants.DEFAULT_MAX_VIDEO_BITRATE;
    protected int mInitVideoBitrate = StreamerConstants.DEFAULT_INIT_VIDEO_BITRATE;
    protected int mMinVideoBitrate = StreamerConstants.DEFAILT_MIN_VIDEO_BITRATE;
    protected boolean mAutoAdjustVideoBitrate = true;
    protected int mBwEstStrategy = 0;
    protected int mAudioBitrate = 48000;
    protected int mAudioSampleRate = StreamerConstants.DEFAULT_AUDIO_SAMPLE_RATE;
    protected int mAudioChannels = 1;
    protected int mAudioProfile = 4;
    protected boolean mFrontCameraMirror = false;
    private boolean mEnableStreamStatModule = true;
    protected int mCameraFacing = 1;
    protected boolean mIsRecording = false;
    protected volatile boolean mIsFileRecording = false;
    protected boolean mIsCaptureStarted = false;
    protected boolean mIsAudioOnly = false;
    protected boolean mIsAudioPreviewing = false;
    protected boolean mIsEnableAudioPreview = false;
    protected boolean mDelayedStartCameraPreview = false;
    protected boolean mDelayedStartStreaming = false;
    protected boolean mDelayedStartRecording = false;
    protected boolean mEnableDebugLog = false;
    protected boolean mEnableAudioMix = false;
    protected boolean mEnableRepeatLastFrame = true;
    protected boolean mUseDummyAudioCapture = false;
    protected boolean mEnableAudioLowDelay = false;
    protected boolean mAutoRestart = false;
    protected int mAutoRestartInterval = PathInterpolatorCompat.MAX_NUM_POINTS;
    protected boolean mHeadSetPluged = false;
    protected boolean mBluetoothPluged = false;
    private final Object mReleaseObject = new Object();
    private GLRender.OnSizeChangedListener mPreviewSizeChangedListener = new GLRender.OnSizeChangedListener() { // from class: com.ksyun.media.streamer.kit.KSYStreamer.7
        @Override // com.ksyun.media.streamer.util.gles.GLRender.OnSizeChangedListener
        public void onSizeChanged(int i4, int i10) {
            KSYStreamer kSYStreamer = KSYStreamer.this;
            kSYStreamer.mScreenRenderWidth = i4;
            kSYStreamer.mScreenRenderHeight = i10;
            kSYStreamer.mWaterMarkCapture.setPreviewSize(i4, i10);
            KSYStreamer.this.setPreviewParams();
            KSYStreamer kSYStreamer2 = KSYStreamer.this;
            if (kSYStreamer2.mDelayedStartCameraPreview) {
                kSYStreamer2.mCameraCapture.start(kSYStreamer2.mCameraFacing);
                KSYStreamer.this.mDelayedStartCameraPreview = false;
            }
            KSYStreamer kSYStreamer3 = KSYStreamer.this;
            if (kSYStreamer3.mDelayedStartStreaming) {
                kSYStreamer3.startStream();
                KSYStreamer.this.mDelayedStartStreaming = false;
            }
            KSYStreamer kSYStreamer4 = KSYStreamer.this;
            if (kSYStreamer4.mDelayedStartRecording) {
                kSYStreamer4.startRecord(kSYStreamer4.mRecordUri);
                KSYStreamer.this.mDelayedStartRecording = false;
            }
        }
    };

    /* loaded from: classes3.dex */
    public interface OnErrorListener {
        void onError(int i4, int i10, int i11);
    }

    /* loaded from: classes3.dex */
    public interface OnInfoListener {
        void onInfo(int i4, int i10, int i11);
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* loaded from: classes3.dex */
    public class a extends BroadcastReceiver {
        private a() {
        }

        @Override // android.content.BroadcastReceiver
        public void onReceive(Context context, Intent intent) {
            String action = intent.getAction();
            boolean z9 = true;
            if (action.equals("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED")) {
                int intExtra = intent.getIntExtra("android.bluetooth.profile.extra.STATE", 0);
                Log.d(KSYStreamer.TAG, "bluetooth state:" + intExtra);
                if (intExtra == 2) {
                    Log.d(KSYStreamer.TAG, "bluetooth Headset is plugged");
                    KSYStreamer.this.mBluetoothPluged = true;
                } else if (intExtra == 0) {
                    Log.d(KSYStreamer.TAG, "bluetooth Headset is unplugged");
                    KSYStreamer.this.mBluetoothPluged = false;
                }
            } else if (action.equals("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED")) {
                int intExtra2 = intent.getIntExtra("android.bluetooth.profile.extra.STATE", 10);
                if (intExtra2 == 12) {
                    Log.d(KSYStreamer.TAG, "bluetooth Headset is plugged");
                    KSYStreamer.this.mBluetoothPluged = true;
                } else if (intExtra2 == 10) {
                    Log.d(KSYStreamer.TAG, "bluetooth Headset is unplugged");
                    KSYStreamer.this.mBluetoothPluged = false;
                }
            } else if (action.equals("android.intent.action.HEADSET_PLUG")) {
                int intExtra3 = intent.getIntExtra(t.b.f83859d, -1);
                if (intExtra3 == 0) {
                    Log.d(KSYStreamer.TAG, "Headset is unplugged");
                    KSYStreamer.this.mHeadSetPluged = false;
                } else if (intExtra3 != 1) {
                    Log.d(KSYStreamer.TAG, "I have no idea what the headset state is");
                } else {
                    Log.d(KSYStreamer.TAG, "Headset is plugged");
                    KSYStreamer.this.mHeadSetPluged = true;
                }
            } else if (action.equals("android.bluetooth.adapter.action.STATE_CHANGED") && intent.getIntExtra("android.bluetooth.adapter.extra.STATE", 10) == 10) {
                Log.d(KSYStreamer.TAG, "bluetooth Headset is unplugged");
                KSYStreamer.this.mBluetoothPluged = false;
            }
            KSYStreamer kSYStreamer = KSYStreamer.this;
            if (kSYStreamer.mIsEnableAudioPreview) {
                if (!kSYStreamer.mHeadSetPluged && !kSYStreamer.mBluetoothPluged && !kSYStreamer.mAudioCapture.getEnableLatencyTest()) {
                    z9 = false;
                }
                kSYStreamer.setEnableAudioPreviewInternal(z9);
            }
        }
    }

    public KSYStreamer(Context context) {
        if (context != null) {
            this.mContext = context.getApplicationContext();
            this.mMainHandler = new Handler(Looper.getMainLooper());
            StatsLogReport.getInstance().setContext(this.mContext);
            initModules();
            return;
        }
        throw new IllegalArgumentException("Context cannot be null!");
    }

    private int align(int i4, int i10) {
        return (((i4 + i10) - 1) / i10) * i10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void autoRestart() {
        if (!this.mAutoRestart || this.mMainHandler == null) {
            return;
        }
        stopStream();
        this.mMainHandler.postDelayed(new Runnable() { // from class: com.ksyun.media.streamer.kit.KSYStreamer.8
            @Override // java.lang.Runnable
            public void run() {
                synchronized (KSYStreamer.this.mReleaseObject) {
                    if (KSYStreamer.this.mMainHandler != null) {
                        KSYStreamer.this.startStream();
                    }
                }
            }
        }, this.mAutoRestartInterval);
    }

    private void calResolution() {
        int i4;
        if (this.mPreviewWidth == 0 && this.mPreviewHeight == 0) {
            int shortEdgeLength = getShortEdgeLength(this.mPreviewResolution);
            if (this.mScreenRenderWidth > this.mScreenRenderHeight) {
                this.mPreviewHeight = shortEdgeLength;
            } else {
                this.mPreviewWidth = shortEdgeLength;
            }
        }
        if (this.mTargetWidth == 0 && this.mTargetHeight == 0) {
            int shortEdgeLength2 = getShortEdgeLength(this.mTargetResolution);
            if (this.mScreenRenderWidth > this.mScreenRenderHeight) {
                this.mTargetHeight = shortEdgeLength2;
            } else {
                this.mTargetWidth = shortEdgeLength2;
            }
        }
        int i10 = this.mScreenRenderWidth;
        if (i10 != 0 && (i4 = this.mScreenRenderHeight) != 0) {
            int i11 = this.mPreviewWidth;
            if (i11 == 0) {
                this.mPreviewWidth = (this.mPreviewHeight * i10) / i4;
            } else if (this.mPreviewHeight == 0) {
                this.mPreviewHeight = (i11 * i4) / i10;
            }
            int i12 = this.mTargetWidth;
            if (i12 == 0) {
                this.mTargetWidth = (this.mTargetHeight * i10) / i4;
            } else if (this.mTargetHeight == 0) {
                this.mTargetHeight = (i12 * i4) / i10;
            }
        }
        this.mPreviewWidth = align(this.mPreviewWidth, 8);
        this.mPreviewHeight = align(this.mPreviewHeight, 8);
        this.mTargetWidth = align(this.mTargetWidth, 8);
        this.mTargetHeight = align(this.mTargetHeight, 8);
    }

    private int getShortEdgeLength(int i4) {
        if (i4 != 0) {
            if (i4 != 1) {
                if (i4 != 2) {
                    if (i4 != 4) {
                        return DEFAULT_PREVIEW_WIDTH;
                    }
                    return 1080;
                }
                return 540;
            }
            return 480;
        }
        return 360;
    }

    public static String getVersion() {
        return StatsConstant.SDK_VERSION_VALUE;
    }

    private boolean isValidEncodeMethod(int i4) {
        return i4 == 3 || i4 == 1 || i4 == 2;
    }

    private void registerHeadsetPlugReceiver() {
        if (this.mHeadSetReceiver != null || this.mContext == null) {
            return;
        }
        this.mHeadSetReceiver = new a();
        IntentFilter intentFilter = new IntentFilter("android.intent.action.HEADSET_PLUG");
        intentFilter.addAction("android.bluetooth.headset.profile.action.AUDIO_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.headset.profile.action.CONNECTION_STATE_CHANGED");
        intentFilter.addAction("android.bluetooth.adapter.action.STATE_CHANGED");
        this.mContext.registerReceiver(this.mHeadSetReceiver, intentFilter);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void setEnableAudioPreviewInternal(boolean z9) {
        if (z9 == this.mIsAudioPreviewing) {
            return;
        }
        if (z9 && !this.mHeadSetPluged && !this.mBluetoothPluged && !this.mAudioCapture.getEnableLatencyTest()) {
            Log.w(TAG, "please connect the earphone");
            return;
        }
        this.mIsAudioPreviewing = z9;
        if (z9) {
            setAudioParams();
            startAudioCapture();
            this.mAudioPreview.start();
            return;
        }
        this.mAudioPreview.stop();
        stopAudioCapture();
    }

    private void unregisterHeadsetPlugReceiver() {
        a aVar = this.mHeadSetReceiver;
        if (aVar != null) {
            this.mContext.unregisterReceiver(aVar);
        }
    }

    public void enableDebugLog(boolean z9) {
        this.mEnableDebugLog = z9;
        StatsLogReport.getInstance().setEnableDebugLog(this.mEnableDebugLog);
    }

    public int getAudioBitrate() {
        return this.mAudioBitrate;
    }

    public AudioCapture getAudioCapture() {
        return this.mAudioCapture;
    }

    public int getAudioChannels() {
        return this.mAudioChannels;
    }

    public int getAudioEncodeMethod() {
        return this.mAudioEncoderMgt.getEncodeMethod();
    }

    public int getAudioEncodeProfile() {
        return this.mAudioProfile;
    }

    public AudioEncoderMgt getAudioEncoderMgt() {
        return this.mAudioEncoderMgt;
    }

    public AudioFilterMgt getAudioFilterMgt() {
        return this.mAudioFilterMgt;
    }

    public AudioMixer getAudioMixer() {
        return this.mAudioMixer;
    }

    public AudioPlayerCapture getAudioPlayerCapture() {
        return this.mAudioPlayerCapture;
    }

    public int getAudioSampleRate() {
        return this.mAudioSampleRate;
    }

    public AudioFilterMgt getBGMAudioFilterMgt() {
        return this.mAudioPlayerCapture.getAudioFilterMgt();
    }

    public int getBwEstStrategy() {
        return this.mBwEstStrategy;
    }

    public CameraCapture getCameraCapture() {
        return this.mCameraCapture;
    }

    public int getCameraFacing() {
        return this.mCameraFacing;
    }

    public int getConnectTime() {
        return this.mRtmpPublisher.getConnectTime();
    }

    @Deprecated
    public float getCurrentBitrate() {
        return getCurrentUploadKBitrate();
    }

    public float getCurrentPreviewFps() {
        return this.mCameraCapture.getCurrentPreviewFps();
    }

    public int getCurrentUploadKBitrate() {
        return this.mRtmpPublisher.getCurrentUploadKBitrate();
    }

    public int getDnsParseTime() {
        return this.mRtmpPublisher.getDnsParseTime();
    }

    public int getDroppedFrameCount() {
        return this.mVideoEncoderMgt.getEncoder().getFrameDropped() + this.mRtmpPublisher.getDroppedVideoFrames();
    }

    public boolean getEnableAudioLowDelay() {
        return this.mEnableAudioLowDelay;
    }

    public boolean getEnableAutoRestart() {
        return this.mAutoRestart;
    }

    public boolean getEnableRepeatLastFrame() {
        return this.mEnableRepeatLastFrame;
    }

    public long getEncodedFrames() {
        return this.mVideoEncoderMgt.getEncoder().getFrameEncoded();
    }

    public FilePublisher getFilePublisher() {
        return this.mFilePublisher;
    }

    public GLRender getGLRender() {
        return this.mGLRender;
    }

    public float getIFrameInterval() {
        return this.mIFrameInterval;
    }

    public ImgTexFilterMgt getImgTexFilterMgt() {
        return this.mImgTexFilterMgt;
    }

    public ImgTexMixer getImgTexMixer() {
        return this.mImgTexMixer;
    }

    public ImgTexMixer getImgTexPreviewMixer() {
        return this.mImgTexPreviewMixer;
    }

    public int getInitVideoBitrate() {
        return this.mInitVideoBitrate;
    }

    public int getMaxVideoBitrate() {
        return this.mMaxVideoBitrate;
    }

    public int getMinVideoBitrate() {
        return this.mMinVideoBitrate;
    }

    public OnErrorListener getOnErrorListener() {
        return this.mOnErrorListener;
    }

    public OnInfoListener getOnInfoListener() {
        return this.mOnInfoListener;
    }

    public float getPreviewFps() {
        return this.mPreviewFps;
    }

    public int getPreviewHeight() {
        return this.mPreviewHeight;
    }

    public int getPreviewWidth() {
        return this.mPreviewWidth;
    }

    public int getRotateDegrees() {
        return this.mRotateDegrees;
    }

    public String getRtmpHostIP() {
        return this.mRtmpPublisher.getHostIp();
    }

    public RtmpPublisher getRtmpPublisher() {
        return this.mRtmpPublisher;
    }

    public float getTargetFps() {
        return this.mTargetFps;
    }

    public int getTargetHeight() {
        return this.mTargetHeight;
    }

    public int getTargetWidth() {
        return this.mTargetWidth;
    }

    public int getUploadedKBytes() {
        return this.mRtmpPublisher.getUploadedKBytes();
    }

    public String getUrl() {
        return this.mUri;
    }

    public int getVideoCodecId() {
        return this.mVideoCodecId;
    }

    public int getVideoEncodeMethod() {
        return this.mVideoEncoderMgt.getEncodeMethod();
    }

    public int getVideoEncodeProfile() {
        return this.mEncodeProfile;
    }

    public int getVideoEncodeScene() {
        return this.mEncodeScene;
    }

    public VideoEncoderMgt getVideoEncoderMgt() {
        return this.mVideoEncoderMgt;
    }

    public float getVoiceVolume() {
        return this.mAudioCapture.getVolume();
    }

    public void hideWaterMarkLogo() {
        this.mWaterMarkCapture.hideLogo();
    }

    public void hideWaterMarkTime() {
        this.mWaterMarkCapture.hideTime();
    }

    protected void initModules() {
        GLRender gLRender = new GLRender();
        this.mGLRender = gLRender;
        this.mWaterMarkCapture = new WaterMarkCapture(gLRender);
        this.mImageCapture = new ImageCapture(this.mGLRender);
        this.mCameraCapture = new CameraCapture(this.mContext, this.mGLRender);
        this.mImgTexScaleFilter = new ImgTexScaleFilter(this.mGLRender);
        this.mImgTexFilterMgt = new ImgTexFilterMgt(this.mContext);
        ImgTexMixer imgTexMixer = new ImgTexMixer(this.mGLRender);
        this.mImgTexMixer = imgTexMixer;
        imgTexMixer.setScalingMode(this.mIdxCamera, 2);
        ImgTexMixer imgTexMixer2 = new ImgTexMixer(this.mGLRender);
        this.mImgTexPreviewMixer = imgTexMixer2;
        imgTexMixer2.setScalingMode(this.mIdxCamera, 2);
        this.mImgTexPreview = new ImgTexPreview();
        this.mCameraCapture.mImgTexSrcPin.connect(this.mImgTexScaleFilter.getSinkPin());
        this.mImgTexScaleFilter.getSrcPin().connect(this.mImgTexFilterMgt.getSinkPin());
        this.mImgTexFilterMgt.getSrcPin().connect(this.mImgTexMixer.getSinkPin(this.mIdxCamera));
        this.mWaterMarkCapture.mLogoTexSrcPin.connect(this.mImgTexMixer.getSinkPin(this.mIdxWmLogo));
        this.mWaterMarkCapture.mTimeTexSrcPin.connect(this.mImgTexMixer.getSinkPin(this.mIdxWmTime));
        this.mImgTexFilterMgt.getSrcPin().connect(this.mImgTexPreviewMixer.getSinkPin(this.mIdxCamera));
        this.mWaterMarkCapture.mLogoTexSrcPin.connect(this.mImgTexPreviewMixer.getSinkPin(this.mIdxWmLogo));
        this.mWaterMarkCapture.mTimeTexSrcPin.connect(this.mImgTexPreviewMixer.getSinkPin(this.mIdxWmTime));
        this.mImgTexPreviewMixer.getSrcPin().connect(this.mImgTexPreview.getSinkPin());
        this.mAudioPlayerCapture = new AudioPlayerCapture(this.mContext);
        AudioCapture audioCapture = new AudioCapture(this.mContext);
        this.mAudioCapture = audioCapture;
        audioCapture.setAudioCaptureType(this.mAudioCaptureType);
        this.mAudioFilterMgt = new AudioFilterMgt();
        this.mAudioPreview = new AudioPreview(this.mContext);
        this.mAudioResampleFilter = new AudioResampleFilter();
        this.mAudioMixer = new AudioMixer();
        this.mAudioAPMFilterMgt = new AudioAPMFilterMgt();
        this.mAudioCapture.getSrcPin().connect(this.mAudioFilterMgt.getSinkPin());
        this.mAudioFilterMgt.getSrcPin().connect(this.mAudioPreview.getSinkPin());
        this.mAudioPreview.getSrcPin().connect(this.mAudioResampleFilter.getSinkPin());
        this.mAudioResampleFilter.getSrcPin().connect(this.mAudioMixer.getSinkPin(this.mIdxAudioMic));
        if (this.mEnableAudioMix) {
            this.mAudioPlayerCapture.getSrcPin().connect(this.mAudioMixer.getSinkPin(this.mIdxAudioBgm));
        }
        this.mVideoEncoderMgt = new VideoEncoderMgt(this.mGLRender);
        this.mAudioEncoderMgt = new AudioEncoderMgt();
        this.mWaterMarkCapture.mLogoBufSrcPin.connect(this.mVideoEncoderMgt.getImgBufMixer().getSinkPin(this.mIdxWmLogo));
        this.mWaterMarkCapture.mTimeBufSrcPin.connect(this.mVideoEncoderMgt.getImgBufMixer().getSinkPin(this.mIdxWmTime));
        this.mImgTexMixer.getSrcPin().connect(this.mVideoEncoderMgt.getImgTexSinkPin());
        this.mCameraCapture.mImgBufSrcPin.connect(this.mVideoEncoderMgt.getImgBufSinkPin());
        this.mAudioMixer.getSrcPin().connect(this.mAudioEncoderMgt.getSinkPin());
        this.mRtmpPublisher = new RtmpPublisher();
        FilePublisher filePublisher = new FilePublisher();
        this.mFilePublisher = filePublisher;
        filePublisher.setAutoWork(true);
        this.mPublisherMgt = new PublisherMgt();
        this.mAudioEncoderMgt.getSrcPin().connect(this.mPublisherMgt.getAudioSink());
        this.mVideoEncoderMgt.getSrcPin().connect(this.mPublisherMgt.getVideoSink());
        this.mPublisherMgt.addPublisher(this.mRtmpPublisher);
        this.mGLRender.addListener(new GLRender.OnReadyListener() { // from class: com.ksyun.media.streamer.kit.KSYStreamer.1
            @Override // com.ksyun.media.streamer.util.gles.GLRender.OnReadyListener
            public void onReady() {
                KSYStreamer kSYStreamer = KSYStreamer.this;
                kSYStreamer.mImgTexPreview.setEGL10Context(kSYStreamer.mGLRender.getEGL10Context());
            }
        });
        this.mAudioCapture.setAudioCaptureListener(new AudioCapture.OnAudioCaptureListener() { // from class: com.ksyun.media.streamer.kit.KSYStreamer.2
            @Override // com.ksyun.media.streamer.capture.AudioCapture.OnAudioCaptureListener
            public void onError(int i4) {
                Log.e(KSYStreamer.TAG, "AudioCapture error: " + i4);
                int i10 = i4 != -2003 ? -2005 : -2003;
                if (KSYStreamer.this.mOnErrorListener != null) {
                    KSYStreamer.this.mOnErrorListener.onError(i10, 0, 0);
                }
            }

            @Override // com.ksyun.media.streamer.capture.AudioCapture.OnAudioCaptureListener
            public void onStatusChanged(int i4) {
            }
        });
        this.mCameraCapture.setOnCameraCaptureListener(new CameraCapture.OnCameraCaptureListener() { // from class: com.ksyun.media.streamer.kit.KSYStreamer.3
            @Override // com.ksyun.media.streamer.capture.CameraCapture.OnCameraCaptureListener
            public void onError(int i4) {
                Log.e(KSYStreamer.TAG, "CameraCapture error: " + i4);
                int i10 = -2002;
                if (i4 == -2007) {
                    i10 = -2007;
                } else if (i4 == -2006) {
                    i10 = -2006;
                } else if (i4 != -2002) {
                    i10 = -2001;
                }
                if (KSYStreamer.this.mOnErrorListener != null) {
                    KSYStreamer.this.mOnErrorListener.onError(i10, 0, 0);
                }
            }

            @Override // com.ksyun.media.streamer.capture.CameraCapture.OnCameraCaptureListener
            public void onFacingChanged(int i4) {
                KSYStreamer kSYStreamer = KSYStreamer.this;
                kSYStreamer.mCameraFacing = i4;
                kSYStreamer.updateFrontMirror();
                if (KSYStreamer.this.mOnInfoListener != null) {
                    KSYStreamer.this.mOnInfoListener.onInfo(1002, i4, 0);
                }
            }

            @Override // com.ksyun.media.streamer.capture.CameraCapture.OnCameraCaptureListener
            public void onStarted() {
                Log.d(KSYStreamer.TAG, "CameraCapture ready");
                if (KSYStreamer.this.mOnInfoListener != null) {
                    KSYStreamer.this.mOnInfoListener.onInfo(1000, 0, 0);
                }
            }
        });
        Encoder.EncoderListener encoderListener = new Encoder.EncoderListener() { // from class: com.ksyun.media.streamer.kit.KSYStreamer.4
            @Override // com.ksyun.media.streamer.encoder.Encoder.EncoderListener
            public void onError(Encoder encoder, int i4) {
                if (i4 != 0) {
                    KSYStreamer.this.stopStream();
                }
                boolean z9 = true;
                z9 = ((encoder instanceof MediaCodecAudioEncoder) || (encoder instanceof AVCodecAudioEncoder)) ? false : false;
                int i10 = i4 != -1002 ? z9 ? StreamerConstants.KSY_STREAMER_VIDEO_ENCODER_ERROR_UNKNOWN : StreamerConstants.KSY_STREAMER_AUDIO_ENCODER_ERROR_UNKNOWN : z9 ? -1004 : StreamerConstants.KSY_STREAMER_AUDIO_ENCODER_ERROR_UNSUPPORTED;
                if (KSYStreamer.this.mOnErrorListener != null) {
                    KSYStreamer.this.mOnErrorListener.onError(i10, 0, 0);
                }
            }
        };
        this.mVideoEncoderMgt.setEncoderListener(encoderListener);
        this.mAudioEncoderMgt.setEncoderListener(encoderListener);
        this.mRtmpPublisher.setPubListener(new Publisher.PubListener() { // from class: com.ksyun.media.streamer.kit.KSYStreamer.5
            @Override // com.ksyun.media.streamer.publisher.Publisher.PubListener
            public void onError(int i4, long j4) {
                Log.e(KSYStreamer.TAG, "RtmpPub err=" + i4);
                if (i4 != 0) {
                    KSYStreamer.this.stopStream();
                }
                if (KSYStreamer.this.mOnErrorListener != null) {
                    if (i4 == -3020) {
                        i4 = -1007;
                    } else if (i4 != -2004) {
                        switch (i4) {
                            case -3012:
                                i4 = -1010;
                                break;
                            case -3011:
                                i4 = StreamerConstants.KSY_STREAMER_ERROR_CONNECT_FAILED;
                                break;
                            case -3010:
                                i4 = StreamerConstants.KSY_STREAMER_ERROR_DNS_PARSE_FAILED;
                                break;
                        }
                    } else {
                        i4 = -2004;
                    }
                    KSYStreamer.this.mOnErrorListener.onError(i4, (int) j4, 0);
                    KSYStreamer.this.autoRestart();
                }
            }

            @Override // com.ksyun.media.streamer.publisher.Publisher.PubListener
            public void onInfo(int i4, long j4) {
                if (i4 == 1) {
                    if (!KSYStreamer.this.mAudioEncoderMgt.getEncoder().isEncoding()) {
                        KSYStreamer.this.mAudioEncoderMgt.getEncoder().start();
                    } else if (!KSYStreamer.this.mRtmpPublisher.isAudioExtraGot()) {
                        KSYStreamer kSYStreamer = KSYStreamer.this;
                        kSYStreamer.mRtmpPublisher.setAudioExtra(kSYStreamer.mAudioEncoderMgt.getEncoder().getExtra());
                    }
                    if (KSYStreamer.this.mOnInfoListener != null) {
                        KSYStreamer.this.mOnInfoListener.onInfo(0, 0, 0);
                    }
                } else if (i4 != 2) {
                    switch (i4) {
                        case 100:
                            Log.i(KSYStreamer.TAG, "packet send slow, delayed " + j4 + "ms");
                            if (KSYStreamer.this.mOnInfoListener != null) {
                                KSYStreamer.this.mOnInfoListener.onInfo(StreamerConstants.KSY_STREAMER_FRAME_SEND_SLOW, (int) j4, 0);
                                return;
                            }
                            return;
                        case 101:
                            KSYStreamer kSYStreamer2 = KSYStreamer.this;
                            if (kSYStreamer2.mIsAudioOnly || !kSYStreamer2.mAutoAdjustVideoBitrate) {
                                return;
                            }
                            long min = Math.min(j4 - kSYStreamer2.mAudioBitrate, kSYStreamer2.mMaxVideoBitrate);
                            Log.d(KSYStreamer.TAG, "Raise video bitrate to " + min);
                            int i10 = (int) min;
                            KSYStreamer.this.mVideoEncoderMgt.getEncoder().adjustBitrate(i10);
                            if (KSYStreamer.this.mOnInfoListener != null) {
                                KSYStreamer.this.mOnInfoListener.onInfo(StreamerConstants.KSY_STREAMER_EST_BW_RAISE, i10, 0);
                                return;
                            }
                            return;
                        case 102:
                            KSYStreamer kSYStreamer3 = KSYStreamer.this;
                            if (kSYStreamer3.mIsAudioOnly || !kSYStreamer3.mAutoAdjustVideoBitrate) {
                                return;
                            }
                            long max = Math.max(j4 - kSYStreamer3.mAudioBitrate, kSYStreamer3.mMinVideoBitrate);
                            Log.d(KSYStreamer.TAG, "Drop video bitrate to " + max);
                            int i11 = (int) max;
                            KSYStreamer.this.mVideoEncoderMgt.getEncoder().adjustBitrate(i11);
                            if (KSYStreamer.this.mOnInfoListener != null) {
                                KSYStreamer.this.mOnInfoListener.onInfo(StreamerConstants.KSY_STREAMER_EST_BW_DROP, i11, 0);
                                return;
                            }
                            return;
                        default:
                            return;
                    }
                } else {
                    KSYStreamer kSYStreamer4 = KSYStreamer.this;
                    if (kSYStreamer4.mIsAudioOnly) {
                        return;
                    }
                    if (!kSYStreamer4.mVideoEncoderMgt.getEncoder().isEncoding()) {
                        KSYStreamer.this.mVideoEncoderMgt.start();
                    } else if (KSYStreamer.this.mRtmpPublisher.isVideoExtraGot()) {
                    } else {
                        KSYStreamer kSYStreamer5 = KSYStreamer.this;
                        kSYStreamer5.mRtmpPublisher.setVideoExtra(kSYStreamer5.mVideoEncoderMgt.getEncoder().getExtra());
                        KSYStreamer.this.mVideoEncoderMgt.getEncoder().forceKeyFrame();
                    }
                }
            }
        });
        this.mFilePublisher.setPubListener(new Publisher.PubListener() { // from class: com.ksyun.media.streamer.kit.KSYStreamer.6
            @Override // com.ksyun.media.streamer.publisher.Publisher.PubListener
            public void onError(int i4, long j4) {
                int i10;
                Log.e(KSYStreamer.TAG, "FilePublisher err=" + i4);
                if (i4 != 0) {
                    KSYStreamer.this.stopRecord();
                }
                if (KSYStreamer.this.mOnErrorListener != null) {
                    switch (i4) {
                        case -4004:
                            i10 = -4004;
                            break;
                        case -4003:
                            i10 = -4003;
                            break;
                        case -4002:
                            i10 = -4002;
                            break;
                        case -4001:
                            i10 = -4001;
                            break;
                        default:
                            i10 = -4000;
                            break;
                    }
                    KSYStreamer.this.mOnErrorListener.onError(i10, (int) j4, 0);
                }
            }

            @Override // com.ksyun.media.streamer.publisher.Publisher.PubListener
            public void onInfo(int i4, long j4) {
                Log.d(KSYStreamer.TAG, "file publisher info:" + i4);
                if (i4 == 1) {
                    if (!KSYStreamer.this.mAudioEncoderMgt.getEncoder().isEncoding()) {
                        KSYStreamer.this.mAudioEncoderMgt.getEncoder().start();
                    } else if (!KSYStreamer.this.mFilePublisher.isAudioExtraGot()) {
                        KSYStreamer kSYStreamer = KSYStreamer.this;
                        kSYStreamer.mFilePublisher.setAudioExtra(kSYStreamer.mAudioEncoderMgt.getEncoder().getExtra());
                    }
                    if (KSYStreamer.this.mOnInfoListener != null) {
                        KSYStreamer.this.mOnInfoListener.onInfo(1, 0, 0);
                    }
                } else if (i4 != 2) {
                    if (i4 != 4) {
                        return;
                    }
                    KSYStreamer kSYStreamer2 = KSYStreamer.this;
                    kSYStreamer2.mPublisherMgt.removePublisher(kSYStreamer2.mFilePublisher);
                    KSYStreamer.this.mIsFileRecording = false;
                    if (KSYStreamer.this.mOnInfoListener != null) {
                        KSYStreamer.this.mOnInfoListener.onInfo(2, 0, 0);
                    }
                } else {
                    KSYStreamer kSYStreamer3 = KSYStreamer.this;
                    if (kSYStreamer3.mIsAudioOnly) {
                        return;
                    }
                    if (!kSYStreamer3.mVideoEncoderMgt.getEncoder().isEncoding()) {
                        KSYStreamer.this.mVideoEncoderMgt.start();
                    } else if (KSYStreamer.this.mFilePublisher.isVideoExtraGot()) {
                    } else {
                        KSYStreamer kSYStreamer4 = KSYStreamer.this;
                        kSYStreamer4.mFilePublisher.setVideoExtra(kSYStreamer4.mVideoEncoderMgt.getEncoder().getExtra());
                        KSYStreamer.this.mVideoEncoderMgt.getEncoder().forceKeyFrame();
                    }
                }
            }
        });
        this.mGLRender.init(1, 1);
        Context context = this.mContext;
        if (context != null) {
            AudioManager audioManager = (AudioManager) context.getSystemService("audio");
            this.mHeadSetPluged = audioManager.isWiredHeadsetOn();
            this.mBluetoothPluged = audioManager.isBluetoothA2dpOn();
        }
        registerHeadsetPlugReceiver();
    }

    public boolean isAudioMixEnabled() {
        return this.mEnableAudioMix;
    }

    public boolean isAudioMuted() {
        return this.mAudioMixer.getMute();
    }

    public boolean isAudioPreviewing() {
        return this.mIsEnableAudioPreview;
    }

    public boolean isAutoAdjustVideoBitrate() {
        return this.mAutoAdjustVideoBitrate;
    }

    public boolean isFileRecording() {
        return this.mIsFileRecording;
    }

    public boolean isFrontCamera() {
        return this.mCameraFacing == 1;
    }

    public boolean isFrontCameraMirrorEnabled() {
        return this.mFrontCameraMirror;
    }

    public boolean isMp4FastStartEnabled() {
        return this.mFilePublisher.isMp4FastStartEnabled();
    }

    public boolean isRecording() {
        return this.mIsRecording;
    }

    public boolean isTorchSupported() {
        return this.mCameraCapture.isTorchSupported();
    }

    public void onPause() {
        Log.d(TAG, "onPause");
        this.mImgTexPreview.onPause();
        if (this.mEnableRepeatLastFrame && this.mIsRecording && !this.mIsAudioOnly) {
            getVideoEncoderMgt().getEncoder().startRepeatLastFrame();
        }
    }

    public void onResume() {
        Log.d(TAG, "onResume");
        if (this.mEnableRepeatLastFrame && this.mIsRecording && !this.mIsAudioOnly) {
            getVideoEncoderMgt().getEncoder().stopRepeatLastFrame();
        }
        this.mImgTexPreview.onResume();
    }

    public void release() {
        Handler handler = this.mMainHandler;
        if (handler != null) {
            handler.removeCallbacksAndMessages(null);
            this.mMainHandler = null;
        }
        synchronized (this.mReleaseObject) {
            this.mImageCapture.release();
            this.mWaterMarkCapture.release();
            this.mAudioPlayerCapture.release();
            this.mCameraCapture.release();
            this.mAudioCapture.release();
            this.mFilePublisher.release();
            this.mGLRender.release();
            setOnLogEventListener(null);
            unregisterHeadsetPlugReceiver();
            if (!this.mAudioAPMFilterMgt.getNSState()) {
                this.mAudioAPMFilterMgt.release();
            }
        }
    }

    public void requestScreenShot(GLRender.ScreenShotListener screenShotListener) {
        this.mImgTexMixer.requestScreenShot(screenShotListener);
    }

    public void setAudioBitrate(int i4) {
        if (i4 > 0) {
            this.mAudioBitrate = i4;
            return;
        }
        throw new IllegalArgumentException("the AudioBitrate must >0");
    }

    public void setAudioChannels(int i4) {
        if (i4 != 1 && i4 != 2) {
            throw new IllegalArgumentException("the AudioChannels must be mono or stereo");
        }
        this.mAudioChannels = i4;
    }

    public void setAudioEncodeMethod(int i4) {
        if (isValidEncodeMethod(i4)) {
            if (!this.mIsRecording) {
                this.mAudioEncoderMgt.setEncodeMethod(i4);
                return;
            }
            throw new IllegalStateException("Cannot set encode method while recording");
        }
        throw new IllegalArgumentException();
    }

    public void setAudioEncodeProfile(int i4) {
        this.mAudioProfile = i4;
    }

    public void setAudioKBitrate(int i4) {
        setAudioBitrate(i4 * 1000);
    }

    public void setAudioNSLevel(int i4) {
        if (i4 >= 0 && i4 <= 3) {
            this.mAudioAPMFilterMgt.setAudioNSLevel(i4);
            return;
        }
        throw new IllegalArgumentException("the NS level must be between 0 and 3");
    }

    public void setAudioOnly(boolean z9) {
        if (this.mIsAudioOnly == z9) {
            return;
        }
        if (z9) {
            this.mVideoEncoderMgt.getSrcPin().disconnect(false);
            if (this.mIsRecording) {
                this.mVideoEncoderMgt.getEncoder().stop();
            }
        } else {
            this.mVideoEncoderMgt.getSrcPin().connect(this.mPublisherMgt.getVideoSink());
            if (this.mIsRecording) {
                this.mVideoEncoderMgt.getEncoder().start();
            }
        }
        this.mRtmpPublisher.setAudioOnly(z9);
        this.mFilePublisher.setAudioOnly(z9);
        this.mIsAudioOnly = z9;
    }

    protected void setAudioParams() {
        this.mAudioResampleFilter.setOutFormat(new AudioBufFormat(1, this.mAudioSampleRate, this.mAudioChannels));
    }

    public void setAudioSampleRate(int i4) {
        if (i4 > 0) {
            this.mAudioSampleRate = i4;
            return;
        }
        throw new IllegalArgumentException("the AudioSampleRate must > 0");
    }

    public void setBwEstStrategy(int i4) {
        this.mBwEstStrategy = i4;
    }

    public void setCameraCaptureResolution(int i4, int i10) {
        if (i4 > 0 && i10 > 0) {
            this.mCameraCapture.setPreviewSize(i4, i10);
            return;
        }
        throw new IllegalArgumentException("Invalid resolution");
    }

    public void setCameraFacing(int i4) {
        this.mCameraFacing = i4;
    }

    public void setDisplayPreview(GLSurfaceView gLSurfaceView) {
        this.mImgTexPreview.setDisplayPreview(gLSurfaceView);
        this.mImgTexPreview.getGLRender().addListener(this.mPreviewSizeChangedListener);
    }

    public void setEnableAudioLowDelay(boolean z9) {
        this.mEnableAudioLowDelay = z9;
        if (!this.mUseDummyAudioCapture) {
            this.mAudioCapture.setAudioCaptureType(z9 ? 2 : 1);
        }
        this.mAudioPlayerCapture.setAudioPlayerType(z9 ? 1 : 0);
    }

    public void setEnableAudioMix(boolean z9) {
        this.mEnableAudioMix = z9;
        if (z9) {
            this.mAudioPlayerCapture.getSrcPin().connect(this.mAudioMixer.getSinkPin(this.mIdxAudioBgm));
        } else {
            this.mAudioPlayerCapture.getSrcPin().disconnect(this.mAudioMixer.getSinkPin(this.mIdxAudioBgm), false);
        }
    }

    public void setEnableAudioNS(boolean z9) {
        if (this.mAudioAPMFilterMgt.getNSState() == z9) {
            return;
        }
        if (z9) {
            this.mAudioCapture.getSrcPin().disconnect(this.mAudioFilterMgt.getSinkPin(), false);
            this.mAudioCapture.getSrcPin().connect(this.mAudioAPMFilterMgt.getSinkPin());
            this.mAudioAPMFilterMgt.getSrcPin().connect(this.mAudioFilterMgt.getSinkPin());
        } else {
            this.mAudioCapture.getSrcPin().disconnect(this.mAudioAPMFilterMgt.getSinkPin(), false);
            this.mAudioAPMFilterMgt.getSrcPin().disconnect(this.mAudioFilterMgt.getSinkPin(), false);
            this.mAudioCapture.getSrcPin().connect(this.mAudioFilterMgt.getSinkPin());
        }
        this.mAudioAPMFilterMgt.setEnableAudioNS(z9);
    }

    public void setEnableAudioPreview(boolean z9) {
        this.mIsEnableAudioPreview = z9;
        setEnableAudioPreviewInternal(z9);
    }

    public void setEnableAutoRestart(boolean z9, int i4) {
        this.mAutoRestart = z9;
        this.mAutoRestartInterval = i4;
    }

    @Deprecated
    public void setEnableCameraMirror(boolean z9) {
        setFrontCameraMirror(z9);
    }

    @Deprecated
    public void setEnableEarMirror(boolean z9) {
        setEnableAudioPreview(z9);
    }

    public void setEnableImgBufBeauty(boolean z9) {
        this.mVideoEncoderMgt.setEnableImgBufBeauty(z9);
    }

    public void setEnableMp4FastStart(boolean z9) {
        this.mFilePublisher.setEnableMp4FastStart(z9);
    }

    public void setEnableRepeatLastFrame(boolean z9) {
        this.mEnableRepeatLastFrame = z9;
    }

    public void setEnableStreamStatModule(boolean z9) {
        this.mEnableStreamStatModule = z9;
    }

    public void setEncodeMethod(int i4) {
        if (isValidEncodeMethod(i4)) {
            setVideoEncodeMethod(i4);
            setAudioEncodeMethod(i4);
            return;
        }
        throw new IllegalArgumentException();
    }

    public void setFrontCameraMirror(boolean z9) {
        this.mFrontCameraMirror = z9;
        updateFrontMirror();
        StatsLogReport.getInstance().setIsFrontCameraMirror(z9);
    }

    @Deprecated
    public void setHeadsetPlugged(boolean z9) {
        setEnableAudioMix(z9);
    }

    public void setIFrameInterval(float f10) {
        if (f10 > 0.0f) {
            this.mIFrameInterval = f10;
            return;
        }
        throw new IllegalArgumentException("the IFrameInterval must > 0");
    }

    public void setMuteAudio(boolean z9) {
        this.mAudioPlayerCapture.setMute(z9);
        this.mAudioPreview.setMute(z9);
        this.mAudioMixer.setMute(z9);
    }

    @Deprecated
    public void setOffscreenPreview(int i4, int i10) {
    }

    @Deprecated
    public void setOnAudioRawDataListener(OnAudioRawDataListener onAudioRawDataListener) {
        this.mAudioCapture.setOnAudioRawDataListener(onAudioRawDataListener);
    }

    public void setOnErrorListener(OnErrorListener onErrorListener) {
        this.mOnErrorListener = onErrorListener;
    }

    public void setOnInfoListener(OnInfoListener onInfoListener) {
        this.mOnInfoListener = onInfoListener;
    }

    public void setOnLogEventListener(StatsLogReport.OnLogEventListener onLogEventListener) {
        StatsLogReport.getInstance().setOnLogEventListener(onLogEventListener);
    }

    @Deprecated
    public void setOnPreviewFrameListener(OnPreviewFrameListener onPreviewFrameListener) {
        this.mCameraCapture.setOnPreviewFrameListener(onPreviewFrameListener);
    }

    public void setPreviewFps(float f10) {
        if (f10 > 0.0f) {
            this.mPreviewFps = f10;
            if (this.mTargetFps == 0.0f) {
                this.mTargetFps = f10;
                return;
            }
            return;
        }
        throw new IllegalArgumentException("the fps must > 0");
    }

    protected void setPreviewParams() {
        calResolution();
        this.mWaterMarkCapture.setPreviewSize(this.mPreviewWidth, this.mPreviewHeight);
        this.mWaterMarkCapture.setTargetSize(this.mTargetWidth, this.mTargetHeight);
        this.mCameraCapture.setOrientation(this.mRotateDegrees);
        if (this.mPreviewFps == 0.0f) {
            this.mPreviewFps = 15.0f;
        }
        this.mCameraCapture.setPreviewFps(this.mPreviewFps);
        this.mImgTexScaleFilter.setTargetSize(this.mPreviewWidth, this.mPreviewHeight);
        this.mImgTexPreviewMixer.setTargetSize(this.mPreviewWidth, this.mPreviewHeight);
        this.mImgTexMixer.setTargetSize(this.mTargetWidth, this.mTargetHeight);
        setAudioParams();
    }

    public void setPreviewResolution(int i4, int i10) {
        if (i4 >= 0 && i10 >= 0 && (i4 != 0 || i10 != 0)) {
            this.mPreviewWidth = i4;
            this.mPreviewHeight = i10;
            if (this.mScreenRenderWidth == 0 || this.mScreenRenderHeight == 0) {
                return;
            }
            calResolution();
            this.mImgTexScaleFilter.setTargetSize(this.mPreviewWidth, this.mPreviewHeight);
            this.mImgTexPreviewMixer.setTargetSize(this.mPreviewWidth, this.mPreviewHeight);
            return;
        }
        throw new IllegalArgumentException("Invalid resolution");
    }

    protected void setRecordingParams() {
        calResolution();
        this.mImgTexMixer.setTargetSize(this.mTargetWidth, this.mTargetHeight);
        VideoCodecFormat videoCodecFormat = new VideoCodecFormat(this.mVideoCodecId, this.mTargetWidth, this.mTargetHeight, this.mInitVideoBitrate);
        if (this.mTargetFps == 0.0f) {
            this.mTargetFps = 15.0f;
        }
        videoCodecFormat.frameRate = this.mTargetFps;
        videoCodecFormat.iFrameInterval = this.mIFrameInterval;
        videoCodecFormat.scene = this.mEncodeScene;
        videoCodecFormat.profile = this.mEncodeProfile;
        this.mVideoEncoderMgt.setEncodeFormat(videoCodecFormat);
        if (this.mAudioProfile != 1) {
            this.mAudioEncoderMgt.setEncodeMethod(3);
        }
        AudioCodecFormat audioCodecFormat = new AudioCodecFormat(256, 1, this.mAudioSampleRate, this.mAudioChannels, this.mAudioBitrate);
        audioCodecFormat.profile = this.mAudioProfile;
        this.mAudioEncoderMgt.setEncodeFormat(audioCodecFormat);
        RtmpPublisher.BwEstConfig bwEstConfig = new RtmpPublisher.BwEstConfig();
        bwEstConfig.strategy = this.mBwEstStrategy;
        bwEstConfig.initAudioBitrate = this.mAudioBitrate;
        bwEstConfig.initVideoBitrate = this.mInitVideoBitrate;
        bwEstConfig.minVideoBitrate = this.mMinVideoBitrate;
        bwEstConfig.maxVideoBitrate = this.mMaxVideoBitrate;
        bwEstConfig.isAdjustBitrate = this.mAutoAdjustVideoBitrate;
        this.mRtmpPublisher.setBwEstConfig(bwEstConfig);
        this.mRtmpPublisher.setFramerate(this.mTargetFps);
        this.mRtmpPublisher.setVideoBitrate(this.mMaxVideoBitrate);
        this.mRtmpPublisher.setAudioBitrate(this.mAudioBitrate);
        this.mFilePublisher.setVideoBitrate(this.mInitVideoBitrate);
        this.mFilePublisher.setAudioBitrate(this.mAudioBitrate);
        this.mFilePublisher.setFramerate(this.mTargetFps);
    }

    public void setRotateDegrees(int i4) {
        int i10 = i4 % 360;
        if (i10 % 90 == 0) {
            int i11 = this.mRotateDegrees;
            if (i11 == i10) {
                return;
            }
            if ((i11 % e.f12205e != 0) != (i10 % e.f12205e != 0)) {
                int i12 = this.mPreviewWidth;
                if (i12 > 0 || this.mPreviewHeight > 0) {
                    setPreviewResolution(this.mPreviewHeight, i12);
                }
                int i13 = this.mTargetWidth;
                if (i13 > 0 || this.mTargetHeight > 0) {
                    setTargetResolution(this.mTargetHeight, i13);
                    this.mWaterMarkCapture.setTargetSize(this.mTargetWidth, this.mTargetHeight);
                }
            }
            this.mRotateDegrees = i10;
            this.mCameraCapture.setOrientation(i10);
            return;
        }
        throw new IllegalArgumentException("Invalid rotate degrees");
    }

    public void setTargetFps(float f10) {
        if (f10 > 0.0f) {
            this.mTargetFps = f10;
            if (this.mPreviewFps == 0.0f) {
                this.mPreviewFps = f10;
                return;
            }
            return;
        }
        throw new IllegalArgumentException("the fps must > 0");
    }

    public void setTargetResolution(int i4, int i10) {
        if (i4 >= 0 && i10 >= 0 && (i4 != 0 || i10 != 0)) {
            this.mTargetWidth = i4;
            this.mTargetHeight = i10;
            if (this.mScreenRenderWidth == 0 || this.mScreenRenderHeight == 0) {
                return;
            }
            calResolution();
            this.mImgTexMixer.setTargetSize(this.mTargetWidth, this.mTargetHeight);
            this.mVideoEncoderMgt.setImgBufTargetSize(this.mTargetWidth, this.mTargetHeight);
            return;
        }
        throw new IllegalArgumentException("Invalid resolution");
    }

    public void setUrl(String str) {
        if (!TextUtils.isEmpty(str)) {
            this.mUri = str;
            return;
        }
        throw new IllegalArgumentException("url can not be null");
    }

    public void setUseDummyAudioCapture(boolean z9) {
        this.mUseDummyAudioCapture = z9;
        if (z9) {
            this.mAudioCapture.setAudioCaptureType(3);
        } else {
            this.mAudioCapture.setAudioCaptureType(this.mEnableAudioLowDelay ? 2 : 1);
        }
    }

    public void setVideoBitrate(int i4) {
        if (i4 > 0) {
            this.mInitVideoBitrate = i4;
            this.mMaxVideoBitrate = i4;
            this.mMinVideoBitrate = i4;
            this.mAutoAdjustVideoBitrate = false;
            return;
        }
        throw new IllegalArgumentException("the VideoBitrate must > 0");
    }

    public void setVideoCodecId(int i4) {
        if (i4 != 1 && i4 != 2) {
            throw new IllegalArgumentException("input video codecid error");
        }
        this.mVideoCodecId = i4;
    }

    public void setVideoEncodeMethod(int i4) {
        if (isValidEncodeMethod(i4)) {
            if (!this.mIsRecording) {
                this.mVideoEncoderMgt.setEncodeMethod(i4);
                return;
            }
            throw new IllegalStateException("Cannot set encode method while recording");
        }
        throw new IllegalArgumentException();
    }

    public void setVideoEncodeProfile(int i4) {
        this.mEncodeProfile = i4;
    }

    public void setVideoEncodeScene(int i4) {
        this.mEncodeScene = i4;
    }

    public void setVideoKBitrate(int i4) {
        setVideoBitrate(i4 * 1000);
    }

    public void setVoiceVolume(float f10) {
        this.mAudioCapture.setVolume(f10);
    }

    public void showWaterMarkLogo(String str, float f10, float f11, float f12, float f13, float f14) {
        float min = Math.min(Math.max(0.0f, f14), 1.0f);
        this.mImgTexMixer.setRenderRect(this.mIdxWmLogo, f10, f11, f12, f13, min);
        this.mImgTexPreviewMixer.setRenderRect(this.mIdxWmLogo, f10, f11, f12, f13, min);
        this.mVideoEncoderMgt.getImgBufMixer().setRenderRect(1, f10, f11, f12, f13, min);
        this.mWaterMarkCapture.showLogo(this.mContext, str, f12, f13);
    }

    public void showWaterMarkTime(float f10, float f11, float f12, int i4, float f13) {
        float min = Math.min(Math.max(0.0f, f13), 1.0f);
        this.mImgTexMixer.setRenderRect(this.mIdxWmTime, f10, f11, f12, 0.0f, min);
        this.mImgTexPreviewMixer.setRenderRect(this.mIdxWmTime, f10, f11, f12, 0.0f, min);
        this.mVideoEncoderMgt.getImgBufMixer().setRenderRect(2, f10, f11, f12, 0.0f, min);
        this.mWaterMarkCapture.showTime(i4, "yyyy-MM-dd HH:mm:ss", f12, 0.0f);
    }

    protected void startAudioCapture() {
        if (this.mAudioCapture.getSrcPin().isConnected()) {
            if (this.mAudioUsingCount == null) {
                this.mAudioUsingCount = new AtomicInteger(0);
            }
            if (this.mAudioUsingCount.getAndIncrement() == 0) {
                this.mAudioCapture.start();
            }
        }
    }

    public void startBgm(String str, boolean z9) {
        this.mAudioPlayerCapture.start(str, z9);
    }

    public void startCameraPreview() {
        startCameraPreview(this.mCameraFacing);
    }

    protected void startCapture() {
        if (this.mIsCaptureStarted) {
            return;
        }
        this.mIsCaptureStarted = true;
        setAudioParams();
        setRecordingParams();
        startAudioCapture();
        this.mCameraCapture.startRecord();
    }

    public void startImageCapture(String str) {
        startImageCapture(BitmapLoader.loadBitmap(this.mContext, str), true);
    }

    public boolean startRecord(String str) {
        if (this.mIsFileRecording || TextUtils.isEmpty(str)) {
            return false;
        }
        this.mRecordUri = str;
        if (!this.mIsAudioOnly && ((this.mTargetWidth == 0 || this.mTargetHeight == 0) && (this.mScreenRenderWidth == 0 || this.mScreenRenderHeight == 0))) {
            if (this.mImgTexPreview.getDisplayPreview() != null) {
                this.mDelayedStartStreaming = true;
                return true;
            }
            this.mScreenRenderWidth = DEFAULT_PREVIEW_WIDTH;
            this.mScreenRenderHeight = 1280;
        }
        this.mIsFileRecording = true;
        this.mFilePublisher.startRecording(str);
        this.mPublisherMgt.addPublisher(this.mFilePublisher);
        startCapture();
        return true;
    }

    public boolean startStream() {
        if (this.mIsRecording) {
            return false;
        }
        if (!this.mIsAudioOnly && ((this.mTargetWidth == 0 || this.mTargetHeight == 0) && (this.mScreenRenderWidth == 0 || this.mScreenRenderHeight == 0))) {
            if (this.mImgTexPreview.getDisplayPreview() != null) {
                this.mDelayedStartStreaming = true;
                return true;
            }
            this.mScreenRenderWidth = DEFAULT_PREVIEW_WIDTH;
            this.mScreenRenderHeight = 1280;
        }
        this.mIsRecording = true;
        startCapture();
        this.mRtmpPublisher.connect(this.mUri);
        return true;
    }

    protected void stopAudioCapture() {
        if (this.mAudioUsingCount == null) {
            this.mAudioUsingCount = new AtomicInteger(0);
        }
        if (this.mAudioUsingCount.get() != 0 && this.mAudioUsingCount.decrementAndGet() == 0) {
            this.mAudioCapture.stop();
        }
    }

    public void stopBgm() {
        this.mAudioPlayerCapture.stop();
    }

    public void stopCameraPreview() {
        this.mCameraCapture.stop();
    }

    protected void stopCapture() {
        if (this.mIsCaptureStarted) {
            this.mIsCaptureStarted = false;
            stopAudioCapture();
            if (this.mCameraCapture.isRecording()) {
                this.mCameraCapture.stopRecord();
            }
            if (!this.mIsRecording) {
                this.mVideoEncoderMgt.getEncoder().flush();
                this.mAudioEncoderMgt.getEncoder().flush();
            }
            this.mVideoEncoderMgt.stop();
            this.mAudioEncoderMgt.getEncoder().stop();
        }
    }

    public void stopImageCapture() {
        this.mImageCapture.getSrcPin().disconnect(this.mImgTexPreviewMixer.getSinkPin(this.mIdxCamera), false);
        this.mImageCapture.getSrcPin().disconnect(this.mImgTexMixer.getSinkPin(this.mIdxCamera), false);
        this.mImageCapture.stop();
    }

    public void stopRecord() {
        if (this.mIsFileRecording) {
            if (!this.mIsRecording && this.mVideoEncoderMgt.getEncoder().isEncoding() && this.mAudioEncoderMgt.getEncoder().isEncoding()) {
                stopCapture();
            } else {
                this.mFilePublisher.stop();
            }
        }
    }

    public boolean stopStream() {
        if (this.mIsRecording) {
            if (!this.mIsFileRecording) {
                stopCapture();
            }
            this.mIsRecording = false;
            this.mRtmpPublisher.disconnect();
            return true;
        }
        return false;
    }

    public void switchCamera() {
        this.mCameraCapture.switchCamera();
    }

    public boolean toggleTorch(boolean z9) {
        return this.mCameraCapture.toggleTorch(z9);
    }

    protected void updateFrontMirror() {
        if (this.mCameraFacing == 1) {
            this.mImgTexMixer.setMirror(this.mIdxCamera, true ^ this.mFrontCameraMirror);
            this.mVideoEncoderMgt.setImgBufMirror(this.mFrontCameraMirror);
            return;
        }
        this.mImgTexMixer.setMirror(this.mIdxCamera, false);
        this.mVideoEncoderMgt.setImgBufMirror(false);
    }

    @Deprecated
    public void updateUrl(String str) {
        setUrl(str);
    }

    public void requestScreenShot(float f10, GLRender.ScreenShotListener screenShotListener) {
        this.mImgTexMixer.requestScreenShot(f10, screenShotListener);
    }

    public void setVideoKBitrate(int i4, int i10, int i11) {
        setVideoBitrate(i4 * 1000, i10 * 1000, i11 * 1000);
    }

    public void startCameraPreview(int i4) {
        this.mCameraFacing = i4;
        if ((this.mPreviewWidth == 0 || this.mPreviewHeight == 0) && (this.mScreenRenderWidth == 0 || this.mScreenRenderHeight == 0)) {
            if (this.mImgTexPreview.getDisplayPreview() != null) {
                this.mDelayedStartCameraPreview = true;
                return;
            } else {
                this.mScreenRenderWidth = DEFAULT_PREVIEW_WIDTH;
                this.mScreenRenderHeight = 1280;
            }
        }
        setPreviewParams();
        this.mCameraCapture.start(this.mCameraFacing);
    }

    public void setCameraCaptureResolution(int i4) {
        if (i4 >= 0 && i4 <= 4) {
            int shortEdgeLength = getShortEdgeLength(i4);
            this.mCameraCapture.setPreviewSize((shortEdgeLength * 16) / 9, shortEdgeLength);
            return;
        }
        throw new IllegalArgumentException("Invalid resolution index");
    }

    public void setDisplayPreview(TextureView textureView) {
        this.mImgTexPreview.setDisplayPreview(textureView);
        this.mImgTexPreview.getGLRender().addListener(this.mPreviewSizeChangedListener);
    }

    public void startImageCapture(Bitmap bitmap) {
        startImageCapture(bitmap, false);
    }

    public void startImageCapture(Bitmap bitmap, boolean z9) {
        this.mImageCapture.getSrcPin().connect(this.mImgTexPreviewMixer.getSinkPin(this.mIdxCamera));
        this.mImageCapture.getSrcPin().connect(this.mImgTexMixer.getSinkPin(this.mIdxCamera));
        this.mImageCapture.setRepeatFps(this.mPreviewFps);
        this.mImageCapture.start(bitmap, z9);
    }

    public void setVideoBitrate(int i4, int i10, int i11) {
        if (i4 <= 0 || i10 <= 0) {
            throw new IllegalArgumentException("the initial and max VideoBitrate must > 0");
        }
        if (i11 >= 0) {
            this.mInitVideoBitrate = i4;
            this.mMaxVideoBitrate = i10;
            this.mMinVideoBitrate = i11;
            this.mAutoAdjustVideoBitrate = true;
            return;
        }
        throw new IllegalArgumentException("the min VideoBitrate must >= 0");
    }

    public void showWaterMarkLogo(Bitmap bitmap, float f10, float f11, float f12, float f13, float f14) {
        float min = Math.min(Math.max(0.0f, f14), 1.0f);
        this.mImgTexMixer.setRenderRect(this.mIdxWmLogo, f10, f11, f12, f13, min);
        this.mImgTexPreviewMixer.setRenderRect(this.mIdxWmLogo, f10, f11, f12, f13, min);
        this.mVideoEncoderMgt.getImgBufMixer().setRenderRect(1, f10, f11, f12, f13, min);
        this.mWaterMarkCapture.showLogo(bitmap, f12, f13);
    }

    public void setPreviewResolution(int i4) {
        if (i4 >= 0 && i4 <= 4) {
            this.mPreviewResolution = i4;
            this.mPreviewWidth = 0;
            this.mPreviewHeight = 0;
            if (this.mScreenRenderWidth == 0 || this.mScreenRenderHeight == 0) {
                return;
            }
            calResolution();
            this.mImgTexScaleFilter.setTargetSize(this.mPreviewWidth, this.mPreviewHeight);
            this.mImgTexPreviewMixer.setTargetSize(this.mPreviewWidth, this.mPreviewHeight);
            return;
        }
        throw new IllegalArgumentException("Invalid resolution index");
    }

    public void setTargetResolution(int i4) {
        if (i4 >= 0 && i4 <= 4) {
            this.mTargetResolution = i4;
            this.mTargetWidth = 0;
            this.mTargetHeight = 0;
            if (this.mScreenRenderWidth == 0 || this.mScreenRenderHeight == 0) {
                return;
            }
            calResolution();
            this.mImgTexMixer.setTargetSize(this.mTargetWidth, this.mTargetHeight);
            this.mVideoEncoderMgt.setImgBufTargetSize(this.mTargetWidth, this.mTargetHeight);
            return;
        }
        throw new IllegalArgumentException("Invalid resolution index");
    }
}
