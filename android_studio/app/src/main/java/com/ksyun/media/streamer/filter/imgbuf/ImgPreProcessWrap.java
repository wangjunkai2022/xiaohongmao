package com.ksyun.media.streamer.filter.imgbuf;

import com.ksyun.media.streamer.framework.ImgBufFrame;
import com.ksyun.media.streamer.util.LibraryLoader;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class ImgPreProcessWrap {

    /* renamed from: a  reason: collision with root package name */
    private boolean f46311a = false;

    /* renamed from: b  reason: collision with root package name */
    private int f46312b = 1;

    /* renamed from: c  reason: collision with root package name */
    private long f46313c;

    static {
        LibraryLoader.load();
    }

    public ImgPreProcessWrap() {
        this.f46313c = 0L;
        this.f46313c = create();
    }

    private native ImgBufFrame convertI420ToNv21(long j4, ImgBufFrame imgBufFrame);

    private native long create();

    private native ImgBufFrame doBeauty(long j4, ImgBufFrame imgBufFrame);

    private native ImgBufFrame doMixer(long j4, ImgBufFrame[] imgBufFrameArr, int i4, ImgBufMixerConfig[] imgBufMixerConfigArr, int i10);

    private native ImgBufFrame doScale(long j4, ImgBufFrame imgBufFrame);

    private native ImgBufFrame doScaleAndConvert2RGBA(long j4, ImgBufFrame imgBufFrame);

    private native void releaseInfo(long j4);

    private native void setBeautyInfo(long j4, int i4);

    private native void setTargetSize(long j4, int i4, int i10);

    private native void updateIsFrontMirror(long j4, boolean z9);

    public void a(int i4, int i10) {
        setTargetSize(this.f46313c, i4, i10);
    }

    public ImgBufFrame b(ImgBufFrame imgBufFrame) {
        return doScaleAndConvert2RGBA(this.f46313c, imgBufFrame);
    }

    public ImgBufFrame c(ImgBufFrame imgBufFrame) {
        return doBeauty(this.f46313c, imgBufFrame);
    }

    public ImgBufFrame d(ImgBufFrame imgBufFrame) {
        return convertI420ToNv21(this.f46313c, imgBufFrame);
    }

    public native void debugBeautyFlag(long j4, boolean z9);

    public native void debugMixerFlag(long j4, boolean z9);

    public native void debugScaleFlag(long j4, boolean z9);

    public native void priteByteBuffer(long j4, ByteBuffer byteBuffer);

    public void a(boolean z9) {
        if (this.f46311a != z9) {
            this.f46311a = z9;
            updateIsFrontMirror(this.f46313c, z9);
        }
    }

    public void a(int i4) {
        if (this.f46312b != i4) {
            this.f46312b = i4;
            setBeautyInfo(this.f46313c, i4);
        }
    }

    /* loaded from: classes3.dex */
    public static class ImgBufMixerConfig {
        public int alpha;
        public int color;

        /* renamed from: h  reason: collision with root package name */
        public int f46314h;

        /* renamed from: w  reason: collision with root package name */
        public int f46315w;

        /* renamed from: x  reason: collision with root package name */
        public int f46316x;

        /* renamed from: y  reason: collision with root package name */
        public int f46317y;

        public ImgBufMixerConfig(int i4, int i10, int i11, int i12, int i13) {
            this.f46316x = i4;
            this.f46317y = i10;
            this.f46315w = i11;
            this.f46314h = i12;
            this.color = 0;
            this.alpha = i13;
        }

        public ImgBufMixerConfig(int i4, int i10, int i11, int i12, int i13, int i14) {
            this.f46316x = i4;
            this.f46317y = i10;
            this.f46315w = i11;
            this.f46314h = i12;
            this.color = i13;
            this.alpha = i14;
        }

        public ImgBufMixerConfig() {
        }
    }

    public ImgBufFrame a(ImgBufFrame imgBufFrame) {
        return doScale(this.f46313c, imgBufFrame);
    }

    public ImgBufFrame a(ImgBufFrame[] imgBufFrameArr, ImgBufMixerConfig[] imgBufMixerConfigArr) {
        return doMixer(this.f46313c, imgBufFrameArr, imgBufFrameArr.length, imgBufMixerConfigArr, imgBufMixerConfigArr.length);
    }

    public void a() {
        long j4 = this.f46313c;
        if (j4 != 0) {
            releaseInfo(j4);
            this.f46313c = 0L;
        }
    }
}
