package com.ksyun.media.streamer.filter;

import com.ksyun.media.streamer.framework.AVFrameBase;
import com.ksyun.media.streamer.framework.SinkPin;
import com.ksyun.media.streamer.framework.SrcPin;

/* loaded from: classes3.dex */
public class AVPtsFilter<T extends AVFrameBase> {

    /* renamed from: a  reason: collision with root package name */
    private static final boolean f46195a = false;

    /* renamed from: b  reason: collision with root package name */
    private static final String f46196b = "AVPtsFilter";

    /* renamed from: c  reason: collision with root package name */
    private long f46197c = 0;

    /* renamed from: d  reason: collision with root package name */
    private float f46198d = 1.0f;

    /* renamed from: e  reason: collision with root package name */
    private float f46199e = 1.0f;
    public SrcPin<T> mSrcPin = new SrcPin<>();
    public SinkPin<T> mSinkPin = new PTSFilterSinkPin();

    /* loaded from: classes3.dex */
    public class PTSFilterSinkPin extends SinkPin<T> {
        public PTSFilterSinkPin() {
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onDisconnect(boolean z9) {
            super.onDisconnect(z9);
            AVPtsFilter.this.onDisconnect(z9);
            if (z9) {
                AVPtsFilter.this.mSrcPin.disconnect(true);
            }
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFormatChanged(Object obj) {
            AVPtsFilter.this.mSrcPin.onFormatChanged(obj);
        }

        @Override // com.ksyun.media.streamer.framework.SinkPin
        public void onFrameAvailable(T t9) {
            if (t9 instanceof AVFrameBase) {
                t9.pts = AVPtsFilter.this.a(t9.pts);
            }
            AVPtsFilter.this.mSrcPin.onFrameAvailable(t9);
        }
    }

    public long getPtsOffset() {
        return this.f46197c;
    }

    public void onDisconnect(boolean z9) {
    }

    public void setPtsOffSet(long j4) {
        this.f46197c = j4;
    }

    public void setSpeed(float f10) {
        this.f46198d = f10;
        this.f46199e = 1.0f / f10;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public long a(long j4) {
        long j10;
        if (this.f46198d != 1.0d) {
            j10 = this.f46197c;
            if (j10 == 0) {
                this.f46197c = j4;
                return j4;
            }
            j4 = ((float) (j4 - j10)) * this.f46199e;
        } else {
            j10 = this.f46197c;
        }
        return j4 + j10;
    }
}
