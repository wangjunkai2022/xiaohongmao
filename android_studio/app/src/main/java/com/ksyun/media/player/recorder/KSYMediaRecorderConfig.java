package com.ksyun.media.player.recorder;

import com.ksyun.media.streamer.kit.StreamerConstants;

/* loaded from: classes3.dex */
public class KSYMediaRecorderConfig {

    /* renamed from: b  reason: collision with root package name */
    private int f45590b = StreamerConstants.DEFAULT_MAX_VIDEO_BITRATE;

    /* renamed from: c  reason: collision with root package name */
    private int f45591c = 3;

    /* renamed from: a  reason: collision with root package name */
    private int f45589a = 64000;

    /* renamed from: d  reason: collision with root package name */
    private boolean f45592d = true;

    public int getAudioBitrate() {
        return this.f45589a;
    }

    public boolean getAudioRecordState() {
        return this.f45592d;
    }

    public int getKeyFrameIntervalSecond() {
        return this.f45591c;
    }

    public int getVideoBitrate() {
        return this.f45590b;
    }

    public void setAudioBitrate(int i4) {
        this.f45589a = i4;
    }

    public void setAudioRecordState(boolean z9) {
        this.f45592d = z9;
    }

    public void setKeyFrameIntervalSecond(int i4) {
        this.f45591c = i4;
    }

    public void setVideoBitrate(int i4) {
        this.f45590b = i4;
    }
}
