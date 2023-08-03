package com.ksyun.media.streamer.framework;

import com.ksyun.media.streamer.encoder.VideoEncodeFormat;

/* loaded from: classes3.dex */
public class VideoCodecFormat {
    public static final int ENCODE_BITRATE_MODE_CBR = 2;
    public static final int ENCODE_BITRATE_MODE_CQ = 0;
    public static final int ENCODE_BITRATE_MODE_VBR = 1;
    public static final int ENCODE_PROFILE_BALANCE = 2;
    public static final int ENCODE_PROFILE_DEFAULT = 0;
    public static final int ENCODE_PROFILE_HIGH_PERFORMANCE = 1;
    public static final int ENCODE_PROFILE_LOW_POWER = 3;
    public static final int ENCODE_SCENE_DEFAULT = 0;
    public static final int ENCODE_SCENE_GAME = 2;
    public static final int ENCODE_SCENE_SHOWSELF = 1;
    public long avCodecParPtr;
    public int bitrate;
    public int bitrateMode;
    public int codecId;
    public int crf;
    public float frameRate;
    public int height;
    public float iFrameInterval;
    public boolean liveStreaming;
    public int orientation;
    public int pixFmt;
    public int profile;
    public int scene;
    public int width;

    public VideoCodecFormat(int i4, int i10, int i11, int i12) {
        this.codecId = i4;
        this.width = i10;
        this.height = i11;
        this.orientation = 0;
        this.bitrate = i12;
        this.frameRate = 15.0f;
        this.iFrameInterval = 5.0f;
        this.scene = 1;
        this.profile = 3;
        this.pixFmt = 3;
        this.crf = 23;
        this.liveStreaming = true;
        this.bitrateMode = 1;
        this.avCodecParPtr = 0L;
    }

    public VideoCodecFormat(VideoCodecFormat videoCodecFormat) {
        this.codecId = videoCodecFormat.codecId;
        this.width = videoCodecFormat.width;
        this.height = videoCodecFormat.height;
        this.orientation = videoCodecFormat.orientation;
        this.bitrate = videoCodecFormat.bitrate;
        this.frameRate = videoCodecFormat.frameRate;
        this.iFrameInterval = videoCodecFormat.iFrameInterval;
        this.scene = videoCodecFormat.scene;
        this.profile = videoCodecFormat.profile;
        this.pixFmt = videoCodecFormat.pixFmt;
        this.crf = videoCodecFormat.crf;
        this.liveStreaming = videoCodecFormat.liveStreaming;
        this.bitrateMode = videoCodecFormat.bitrateMode;
        this.avCodecParPtr = videoCodecFormat.avCodecParPtr;
    }

    public VideoCodecFormat(VideoEncodeFormat videoEncodeFormat) {
        this.codecId = videoEncodeFormat.getCodecId();
        this.width = videoEncodeFormat.getWidth();
        this.height = videoEncodeFormat.getHeight();
        this.orientation = 0;
        this.bitrate = videoEncodeFormat.getBitrate();
        this.frameRate = videoEncodeFormat.getFramerate();
        this.iFrameInterval = videoEncodeFormat.getIframeinterval();
        this.scene = videoEncodeFormat.getScene();
        this.profile = videoEncodeFormat.getProfile();
        this.pixFmt = videoEncodeFormat.getPixFmt();
        this.crf = videoEncodeFormat.getCrf();
        this.liveStreaming = videoEncodeFormat.getLiveStreaming();
        this.bitrateMode = videoEncodeFormat.getBitrateMode();
        this.avCodecParPtr = 0L;
    }
}
