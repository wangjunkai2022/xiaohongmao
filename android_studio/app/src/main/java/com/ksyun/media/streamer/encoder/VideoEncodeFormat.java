package com.ksyun.media.streamer.encoder;

@Deprecated
/* loaded from: classes3.dex */
public class VideoEncodeFormat {
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

    /* renamed from: b  reason: collision with root package name */
    private int f46156b;

    /* renamed from: c  reason: collision with root package name */
    private int f46157c;

    /* renamed from: d  reason: collision with root package name */
    private int f46158d;

    /* renamed from: e  reason: collision with root package name */
    private int f46159e;

    /* renamed from: f  reason: collision with root package name */
    private float f46160f = 15.0f;

    /* renamed from: g  reason: collision with root package name */
    private float f46161g = 5.0f;

    /* renamed from: h  reason: collision with root package name */
    private int f46162h = 1;

    /* renamed from: i  reason: collision with root package name */
    private int f46163i = 3;

    /* renamed from: a  reason: collision with root package name */
    private int f46155a = 3;

    /* renamed from: j  reason: collision with root package name */
    private int f46164j = 23;

    /* renamed from: k  reason: collision with root package name */
    private boolean f46165k = true;

    /* renamed from: l  reason: collision with root package name */
    private int f46166l = 1;

    public VideoEncodeFormat(int i4, int i10, int i11, int i12) {
        this.f46156b = i4;
        this.f46157c = i10;
        this.f46158d = i11;
        this.f46159e = i12;
    }

    public int getBitrate() {
        return this.f46159e;
    }

    public int getBitrateMode() {
        return this.f46166l;
    }

    public int getCodecId() {
        return this.f46156b;
    }

    public int getCrf() {
        return this.f46164j;
    }

    public float getFramerate() {
        return this.f46160f;
    }

    public int getHeight() {
        return this.f46158d;
    }

    public float getIframeinterval() {
        return this.f46161g;
    }

    public boolean getLiveStreaming() {
        return this.f46165k;
    }

    public int getPixFmt() {
        return this.f46155a;
    }

    public int getProfile() {
        return this.f46163i;
    }

    public int getScene() {
        return this.f46162h;
    }

    public int getWidth() {
        return this.f46157c;
    }

    public void setBitrate(int i4) {
        this.f46159e = i4;
    }

    public void setBitrateMode(int i4) {
        if (i4 < 0 || i4 > 2) {
            return;
        }
        this.f46166l = i4;
    }

    public void setCodecId(int i4) {
        this.f46156b = i4;
    }

    public void setCrf(int i4) {
        this.f46164j = i4;
    }

    public void setFramerate(float f10) {
        this.f46160f = f10;
    }

    public void setHeight(int i4) {
        this.f46158d = i4;
    }

    public void setIframeinterval(float f10) {
        this.f46161g = f10;
    }

    public void setLiveStreaming(boolean z9) {
        this.f46165k = z9;
    }

    public void setPixFmt(int i4) {
        this.f46155a = i4;
    }

    public void setProfile(int i4) {
        this.f46163i = i4;
    }

    public void setScene(int i4) {
        this.f46162h = i4;
    }

    public void setWidth(int i4) {
        this.f46157c = i4;
    }

    /* renamed from: clone */
    public VideoEncodeFormat m64clone() {
        VideoEncodeFormat videoEncodeFormat = new VideoEncodeFormat(this.f46156b, this.f46157c, this.f46158d, this.f46159e);
        videoEncodeFormat.setFramerate(this.f46160f);
        videoEncodeFormat.setIframeinterval(this.f46161g);
        videoEncodeFormat.setScene(this.f46162h);
        videoEncodeFormat.setProfile(this.f46163i);
        videoEncodeFormat.setPixFmt(this.f46155a);
        videoEncodeFormat.setCrf(this.f46164j);
        videoEncodeFormat.setLiveStreaming(this.f46165k);
        videoEncodeFormat.setBitrateMode(this.f46166l);
        return videoEncodeFormat;
    }
}
