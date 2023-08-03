package com.ksyun.media.streamer.publisher;

import android.util.Log;
import com.ksy.statlibrary.util.PreferenceUtil;
import com.ksyun.media.streamer.framework.AVPacketBase;
import com.ksyun.media.streamer.logstats.StatsLogReport;
import com.ksyun.media.streamer.logstats.c;
import com.ksyun.media.streamer.util.TimeDeltaUtil;
import io.sentry.protocol.Device;

/* loaded from: classes3.dex */
public class RtmpPublisher extends Publisher {
    public static final int BW_EST_STRATEGY_NEGATIVE = 1;
    public static final int BW_EST_STRATEGY_NORMAL = 0;
    public static final int ERROR_AV_ASYNC_ERROR = -2004;
    public static final int ERROR_AkAndUserIsNotMatch = -3112;
    public static final int ERROR_AlreadyExistStreamName = -3103;
    public static final int ERROR_BadParams = -3109;
    public static final int ERROR_CONNECT_BREAKED = -3020;
    public static final int ERROR_CONNECT_FAILED = -3011;
    public static final int ERROR_DNS_PARSE_FAILED = -3010;
    public static final int ERROR_ForbiddenByBlacklist = -3104;
    public static final int ERROR_ForbiddenByRegion = -3110;
    public static final int ERROR_GetServerInfoFailed = -3113;
    public static final int ERROR_GetUserIdFailed = -3111;
    public static final int ERROR_IllegalOutsideUrl = -3114;
    public static final int ERROR_IllegalUserId = -3118;
    public static final int ERROR_InternalError = -3105;
    public static final int ERROR_InvalidAccessKeyId = -3108;
    public static final int ERROR_InvalidAuthType = -3117;
    public static final int ERROR_NonExistApplication = -3102;
    public static final int ERROR_NonExistDomain = -3101;
    public static final int ERROR_OutsideAuthFailed = -3115;
    public static final int ERROR_PUBLISH_FAILED = -3012;
    public static final int ERROR_SignatureDoesNotMatch = -3107;
    public static final int ERROR_SimpleAuthFailed = -3116;
    public static final int ERROR_UNKNOWN = -3000;
    public static final int ERROR_URLExpired = -3106;
    public static final int INFO_CONNECTED = 1;
    public static final int INFO_EST_BW_DROP = 102;
    public static final int INFO_EST_BW_RAISE = 101;
    public static final int INFO_PACKET_SEND_SLOW = 100;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46689a = "RtmpPublisher";

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f46690b = false;

    /* renamed from: c  reason: collision with root package name */
    private BwEstConfig f46691c;

    /* renamed from: d  reason: collision with root package name */
    private String f46692d;

    /* renamed from: e  reason: collision with root package name */
    private String f46693e;

    /* renamed from: f  reason: collision with root package name */
    private int f46694f;

    /* renamed from: g  reason: collision with root package name */
    private int f46695g;

    /* renamed from: h  reason: collision with root package name */
    private int f46696h;

    /* renamed from: i  reason: collision with root package name */
    private int f46697i;

    /* renamed from: j  reason: collision with root package name */
    private long f46698j;

    /* renamed from: k  reason: collision with root package name */
    private int f46699k;

    /* loaded from: classes3.dex */
    public static class BwEstConfig {
        public int initAudioBitrate;
        public int initVideoBitrate;
        public boolean isAdjustBitrate;
        public int maxVideoBitrate;
        public int minVideoBitrate;
        public int strategy = 0;
    }

    public RtmpPublisher() {
        super("RtmpPub");
    }

    public void connect(String str) {
        super.start(str);
        this.f46693e = null;
        this.f46694f = 0;
        this.f46695g = 0;
        this.f46696h = 0;
        this.f46697i = 0;
        this.f46698j = 0L;
        this.f46699k = 0;
        this.f46692d = c.c(str);
        StatsLogReport.getInstance().startStream(str, this.f46692d);
    }

    public void disconnect() {
        super.stop();
        StatsLogReport.getInstance().stopStream();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.publisher.Publisher
    public int doStart(String str) {
        int a10 = a(str);
        if (a10 == 0) {
            this.f46693e = this.mPubWrapper.c(1);
            StatsLogReport.getInstance().setRtmpHostIp(this.f46693e);
            this.f46694f = (int) this.mPubWrapper.b(2);
            StatsLogReport.getInstance().setDnsParseTime(this.f46694f);
            this.f46695g = (int) this.mPubWrapper.b(3);
            StatsLogReport.getInstance().setConnectTime(this.f46695g);
        } else {
            this.f46693e = this.mPubWrapper.c(1);
            StatsLogReport.getInstance().setRtmpHostIp(this.f46693e);
        }
        return a10;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.publisher.Publisher
    public int doWriteFrame(AVPacketBase aVPacketBase) {
        int doWriteFrame = super.doWriteFrame(aVPacketBase);
        if (doWriteFrame < 0) {
            postError(doWriteFrame);
        } else {
            this.mVFrameDroppedInner = (int) this.mPubWrapper.b(5);
            StatsLogReport.getInstance().setRtmpDroppedFrameCount(this.mVFrameDroppedInner + this.mVFrameDroppedUpper);
            this.f46696h = (int) this.mPubWrapper.b(4);
            StatsLogReport.getInstance().setUploadedKBytes(this.f46696h);
            long currentTimeMillis = System.currentTimeMillis();
            if (this.f46698j == 0) {
                this.f46698j = currentTimeMillis;
            }
            int i4 = (int) (currentTimeMillis - this.f46698j);
            if (i4 >= 1000) {
                int i10 = this.f46696h;
                this.f46697i = ((i10 - this.f46699k) * 8000) / i4;
                this.f46699k = i10;
                this.f46698j = currentTimeMillis;
            }
        }
        return doWriteFrame;
    }

    public int getConnectTime() {
        if (StatsLogReport.getInstance().isPermitLogReport()) {
            return this.f46695g;
        }
        Log.w(f46689a, "you must enableStreamStatModule");
        return 0;
    }

    public int getCurrentUploadKBitrate() {
        if (StatsLogReport.getInstance().isPermitLogReport()) {
            return this.f46697i;
        }
        Log.w(f46689a, "you must enableStreamStatModule");
        return 0;
    }

    public int getDnsParseTime() {
        if (StatsLogReport.getInstance().isPermitLogReport()) {
            return this.f46694f;
        }
        Log.w(f46689a, "you must enableStreamStatModule");
        return 0;
    }

    public int getDroppedVideoFrames() {
        return this.mVFrameDroppedInner + this.mVFrameDroppedUpper;
    }

    public String getHostIp() {
        if (StatsLogReport.getInstance().isPermitLogReport()) {
            String str = this.f46693e;
            return str != null ? str : "unknown";
        }
        Log.w(f46689a, "you must enableStreamStatModule");
        return "";
    }

    public int getUploadedKBytes() {
        if (StatsLogReport.getInstance().isPermitLogReport()) {
            return this.f46696h;
        }
        Log.w(f46689a, "you must enableStreamStatModule");
        return 0;
    }

    @Override // com.ksyun.media.streamer.publisher.Publisher
    protected boolean isAddExtraForVideoKeyFrame() {
        return true;
    }

    @Override // com.ksyun.media.streamer.publisher.Publisher
    protected void postError(final int i4, final long j4) {
        if (this.mIsPublishing) {
            this.mMainHandler.post(new Runnable() { // from class: com.ksyun.media.streamer.publisher.RtmpPublisher.2
                @Override // java.lang.Runnable
                public void run() {
                    StatsLogReport.getInstance().reportError(i4, 5);
                    if (RtmpPublisher.this.getPubListener() != null) {
                        RtmpPublisher.this.getPubListener().onError(i4, j4);
                    }
                }
            });
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.publisher.Publisher
    public void postInfo(final int i4, final long j4) {
        if (this.mIsPublishing) {
            final int a10 = this.mPubWrapper.a(6);
            final int a11 = this.mPubWrapper.a(7);
            final int a12 = this.mPubWrapper.a(8);
            this.mMainHandler.post(new Runnable() { // from class: com.ksyun.media.streamer.publisher.RtmpPublisher.1
                @Override // java.lang.Runnable
                public void run() {
                    if (RtmpPublisher.this.mIsPublishing) {
                        int i10 = i4;
                        if (i10 != 1) {
                            switch (i10) {
                                case 100:
                                    StatsLogReport.getInstance().frameDataSendSlow();
                                    break;
                                case 101:
                                    StatsLogReport.getInstance().estBitrateRaise(RtmpPublisher.this.f46697i, j4);
                                    break;
                                case 102:
                                    StatsLogReport.getInstance().estBitrateDrop(RtmpPublisher.this.f46697i, j4);
                                    break;
                                case 103:
                                    StatsLogReport.getInstance().setAudioFrameNum(a10);
                                    StatsLogReport.getInstance().setVideoFrameNum(a11);
                                    StatsLogReport.getInstance().setAudioSendDelay(a12);
                                    StatsLogReport.getInstance().setAudioPts(j4);
                                    break;
                            }
                        } else {
                            StatsLogReport.getInstance().setCurrentBitrate(RtmpPublisher.this.f46697i);
                            StatsLogReport.getInstance().startStreamSuccess();
                        }
                        if (RtmpPublisher.this.getPubListener() != null) {
                            RtmpPublisher.this.getPubListener().onInfo(i4, j4);
                        }
                    }
                }
            });
        }
    }

    @Override // com.ksyun.media.streamer.publisher.Publisher
    public void release() {
        this.mPubWrapper.a();
        disconnect();
        super.release();
    }

    @Override // com.ksyun.media.streamer.publisher.Publisher
    public void setAudioBitrate(int i4) {
        this.mAudioBitrate = i4;
        StatsLogReport.getInstance().setAudioBitrate(this.mAudioBitrate);
    }

    public void setBwEstConfig(BwEstConfig bwEstConfig) {
        this.mPubWrapper.a(bwEstConfig.initAudioBitrate, bwEstConfig.initVideoBitrate, bwEstConfig.minVideoBitrate, bwEstConfig.maxVideoBitrate, bwEstConfig.strategy);
        StatsLogReport.getInstance().setBwEstStrategy(bwEstConfig.strategy);
        StatsLogReport.getInstance().setAudioBitrate(bwEstConfig.initAudioBitrate);
        StatsLogReport.getInstance().setInitVideoBitrate(bwEstConfig.initVideoBitrate);
        StatsLogReport.getInstance().setMaxVideoBitrate(bwEstConfig.maxVideoBitrate);
        StatsLogReport.getInstance().setMinVideoBitrate(bwEstConfig.minVideoBitrate);
        StatsLogReport.getInstance().setAutoAdjustVideoBitrate(bwEstConfig.isAdjustBitrate);
    }

    @Override // com.ksyun.media.streamer.publisher.Publisher
    public void setFramerate(float f10) {
        this.mFramerate = f10;
        StatsLogReport.getInstance().setFrameRate(this.mFramerate);
    }

    @Override // com.ksyun.media.streamer.publisher.Publisher
    public void setVideoBitrate(int i4) {
        this.mVideoBitrate = i4;
        StatsLogReport.getInstance().setMaxVideoBitrate(this.mVideoBitrate);
    }

    private int a(String str) {
        int doStart = super.doStart(str);
        if (doStart == 0) {
            this.mPubWrapper.a("streamId", this.f46692d);
            this.mPubWrapper.a(Device.b.f83591b, "KSY-a-v5.0.1.3");
            this.mPubWrapper.a(PreferenceUtil.INTERVAL, Long.toString(StatsLogReport.getInstance().getLogInterval()));
            long timeDelta = TimeDeltaUtil.getInstance().getTimeDelta();
            if (timeDelta != Long.MAX_VALUE) {
                this.mPubWrapper.a("utcstarttime", Long.toString(System.currentTimeMillis() + timeDelta));
            }
        }
        return doStart;
    }
}
