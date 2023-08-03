package com.ksyun.media.streamer.publisher;

/* loaded from: classes3.dex */
public class RTPPublisher extends Publisher {

    /* renamed from: a  reason: collision with root package name */
    private static String f46688a = "RTPPublisher";

    public RTPPublisher() {
        super(f46688a);
    }

    @Override // com.ksyun.media.streamer.publisher.Publisher
    protected boolean isAddExtraForVideoKeyFrame() {
        return true;
    }

    @Override // com.ksyun.media.streamer.publisher.Publisher
    public void release() {
        stop();
        super.release();
    }
}
