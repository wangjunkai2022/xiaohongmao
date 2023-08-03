package com.ksyun.media.streamer.encoder;

@Deprecated
/* loaded from: classes3.dex */
public class AudioEncodeFormat {
    public static final String MIME_AAC = "audio/mp4a-latm";

    /* renamed from: a  reason: collision with root package name */
    private int f46050a;

    /* renamed from: b  reason: collision with root package name */
    private int f46051b;

    /* renamed from: c  reason: collision with root package name */
    private int f46052c;

    /* renamed from: d  reason: collision with root package name */
    private int f46053d;

    /* renamed from: e  reason: collision with root package name */
    private int f46054e;

    /* renamed from: f  reason: collision with root package name */
    private int f46055f;

    public AudioEncodeFormat(String str, int i4, int i10, int i11, int i12) {
        this.f46051b = 4;
        this.f46050a = 256;
        this.f46052c = i4;
        this.f46053d = i10;
        this.f46054e = i11;
        this.f46055f = i12;
    }

    public int getBitrate() {
        return this.f46055f;
    }

    public int getChannels() {
        return this.f46054e;
    }

    public int getCodecId() {
        return this.f46050a;
    }

    public String getMime() {
        return "audio/mp4a-latm";
    }

    public int getProfile() {
        return this.f46051b;
    }

    public int getSampleFmt() {
        return this.f46052c;
    }

    public int getSampleRate() {
        return this.f46053d;
    }

    public void setBitrate(int i4) {
        this.f46055f = i4;
    }

    public void setChannels(int i4) {
        this.f46054e = i4;
    }

    public void setProfile(int i4) {
        this.f46051b = i4;
    }

    public void setSampleFmt(int i4) {
        this.f46052c = i4;
    }

    public void setSampleRate(int i4) {
        this.f46053d = i4;
    }

    public AudioEncodeFormat(int i4, int i10, int i11, int i12, int i13) {
        this.f46051b = 4;
        this.f46050a = i4;
        this.f46052c = i10;
        this.f46053d = i11;
        this.f46054e = i12;
        this.f46055f = i13;
    }
}
