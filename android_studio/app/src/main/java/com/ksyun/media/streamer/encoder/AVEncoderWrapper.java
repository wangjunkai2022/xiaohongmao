package com.ksyun.media.streamer.encoder;

import com.ksyun.media.streamer.util.LibraryLoader;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AVEncoderWrapper {

    /* renamed from: a  reason: collision with root package name */
    public static final int f46036a = 0;

    /* renamed from: b  reason: collision with root package name */
    public static final int f46037b = 1;

    /* renamed from: c  reason: collision with root package name */
    public static final int f46038c = 2;

    /* renamed from: d  reason: collision with root package name */
    public static final int f46039d = 0;

    /* renamed from: e  reason: collision with root package name */
    public static final int f46040e = 1;

    /* renamed from: f  reason: collision with root package name */
    public static final int f46041f = 2;

    /* renamed from: g  reason: collision with root package name */
    public static final int f46042g = 3;

    /* renamed from: h  reason: collision with root package name */
    public static final int f46043h = 4;

    /* renamed from: i  reason: collision with root package name */
    private static final String f46044i = "AVEncoderWrapper";

    /* renamed from: j  reason: collision with root package name */
    private static final int f46045j = 1;

    /* renamed from: k  reason: collision with root package name */
    private static final int f46046k = 2;

    /* renamed from: l  reason: collision with root package name */
    private long f46047l = _init();

    /* renamed from: m  reason: collision with root package name */
    private int f46048m;

    /* renamed from: n  reason: collision with root package name */
    private a f46049n;

    /* loaded from: classes3.dex */
    public interface a {
        void onEncoded(long j4, ByteBuffer byteBuffer, long j10, long j11, int i4);
    }

    static {
        LibraryLoader.load();
    }

    private native int _adjust_bitrate(long j4, int i4);

    private native int _close(long j4);

    private native int _encode(long j4, int i4, ByteBuffer byteBuffer, int i10, long j10, int i11);

    private native long _get_avcodec_par(long j4);

    private native long _init();

    private native int _open_audio(long j4, int i4, int i10, int i11, int i12, int i13, int i14);

    private native int _open_video(long j4, int i4, int i10, int i11, int i12, int i13, float f10, float f11, int i14, int i15, int i16, boolean z9, int i17);

    private native void _release(long j4);

    private void onEncoded(long j4, ByteBuffer byteBuffer, long j10, long j11, int i4) {
        a aVar = this.f46049n;
        if (aVar != null) {
            aVar.onEncoded(j4, byteBuffer, j10, j11, i4);
        }
    }

    public void a(a aVar) {
        this.f46049n = aVar;
    }

    public void b() {
        _release(this.f46047l);
    }

    public long c() {
        return _get_avcodec_par(this.f46047l);
    }

    public int a(int i4, int i10, int i11, int i12, int i13, int i14) {
        this.f46048m = 1;
        return _open_audio(this.f46047l, i4, i10, i11, i12, i13, i14);
    }

    public int a(int i4, int i10, int i11, int i12, int i13, float f10, float f11, int i14, int i15, int i16, boolean z9, int i17) {
        this.f46048m = 2;
        return _open_video(this.f46047l, i4, i10, i11, i12, i13, f10, f11, i14, i15, i16, z9, i17);
    }

    public int a(int i4) {
        return _adjust_bitrate(this.f46047l, i4);
    }

    public int a(ByteBuffer byteBuffer, long j4, int i4) {
        if (byteBuffer != null) {
            return _encode(this.f46047l, this.f46048m, byteBuffer, byteBuffer.limit(), j4, i4);
        }
        return _encode(this.f46047l, this.f46048m, null, 0, j4, i4);
    }

    public int a() {
        return _close(this.f46047l);
    }
}
