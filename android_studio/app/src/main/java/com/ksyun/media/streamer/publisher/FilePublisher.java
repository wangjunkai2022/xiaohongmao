package com.ksyun.media.streamer.publisher;

import com.ksyun.media.streamer.logstats.StatsLogReport;

/* loaded from: classes3.dex */
public class FilePublisher extends Publisher {
    public static final int FILE_PUBLISHER_ERROR_CLOSE_FAILED = -4003;
    public static final int FILE_PUBLISHER_ERROR_OPEN_FAILED = -4001;
    public static final int FILE_PUBLISHER_ERROR_UNKNOWN = -4000;
    public static final int FILE_PUBLISHER_ERROR_WRITE_FAILED = -4002;
    public static final int FILE_PUBLISHER_FORMAT_NOT_SUPPORTED = -4004;
    public static final int INFO_OPENED = 1;
    public static final int INFO_STOPED = 4;

    /* renamed from: a  reason: collision with root package name */
    private static final String f46625a = "FilePublisher";

    /* renamed from: b  reason: collision with root package name */
    private static final boolean f46626b = false;

    /* renamed from: c  reason: collision with root package name */
    private boolean f46627c;

    public FilePublisher() {
        super("FilePub");
        this.f46627c = false;
        setForceVideoFrameFirst(true);
    }

    @Override // com.ksyun.media.streamer.publisher.Publisher
    protected boolean isAddExtraForVideoKeyFrame() {
        return false;
    }

    public boolean isMp4FastStartEnabled() {
        return this.f46627c;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.ksyun.media.streamer.publisher.Publisher
    public void postInfo(int i4, long j4) {
        super.postInfo(i4, j4);
        if (i4 == 1) {
            StatsLogReport.getInstance().startRecordSuccess();
        } else if (i4 != 4) {
        } else {
            StatsLogReport.getInstance().stopRecord();
        }
    }

    @Override // com.ksyun.media.streamer.publisher.Publisher
    public void release() {
        stop();
        super.release();
    }

    public void setEnableMp4FastStart(boolean z9) {
        this.mPubWrapper.c(z9);
        this.f46627c = z9;
    }

    public void startRecording(String str) {
        super.start(str);
    }
}
