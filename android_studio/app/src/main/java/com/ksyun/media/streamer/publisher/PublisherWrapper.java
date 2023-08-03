package com.ksyun.media.streamer.publisher;

import com.ksyun.media.streamer.util.LibraryLoader;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class PublisherWrapper {
    public static final int A = -3118;
    public static final int B = 100;
    public static final int C = 101;
    public static final int D = 102;
    public static final int E = 103;
    public static final int F = 1;
    public static final int G = 2;
    public static final int H = 3;
    public static final int I = 4;
    public static final int J = 5;
    public static final int K = 6;
    public static final int L = 7;
    public static final int M = 8;
    public static final int N = 9;
    public static final int O = 10;
    private static final String P = "PublisherWrapper";

    /* renamed from: a  reason: collision with root package name */
    public static final int f46662a = 1;

    /* renamed from: b  reason: collision with root package name */
    public static final int f46663b = 2;

    /* renamed from: c  reason: collision with root package name */
    public static final int f46664c = 0;

    /* renamed from: d  reason: collision with root package name */
    public static final int f46665d = 1;

    /* renamed from: e  reason: collision with root package name */
    public static final int f46666e = -3000;

    /* renamed from: f  reason: collision with root package name */
    public static final int f46667f = -3010;

    /* renamed from: g  reason: collision with root package name */
    public static final int f46668g = -3011;

    /* renamed from: h  reason: collision with root package name */
    public static final int f46669h = -3012;

    /* renamed from: i  reason: collision with root package name */
    public static final int f46670i = -3020;

    /* renamed from: j  reason: collision with root package name */
    public static final int f46671j = -3101;

    /* renamed from: k  reason: collision with root package name */
    public static final int f46672k = -3102;

    /* renamed from: l  reason: collision with root package name */
    public static final int f46673l = -3103;

    /* renamed from: m  reason: collision with root package name */
    public static final int f46674m = -3104;

    /* renamed from: n  reason: collision with root package name */
    public static final int f46675n = -3105;

    /* renamed from: o  reason: collision with root package name */
    public static final int f46676o = -3106;

    /* renamed from: p  reason: collision with root package name */
    public static final int f46677p = -3107;

    /* renamed from: q  reason: collision with root package name */
    public static final int f46678q = -3108;

    /* renamed from: r  reason: collision with root package name */
    public static final int f46679r = -3109;

    /* renamed from: s  reason: collision with root package name */
    public static final int f46680s = -3110;

    /* renamed from: t  reason: collision with root package name */
    public static final int f46681t = -3111;

    /* renamed from: u  reason: collision with root package name */
    public static final int f46682u = -3112;

    /* renamed from: v  reason: collision with root package name */
    public static final int f46683v = -3113;

    /* renamed from: w  reason: collision with root package name */
    public static final int f46684w = -3114;

    /* renamed from: x  reason: collision with root package name */
    public static final int f46685x = -3115;

    /* renamed from: y  reason: collision with root package name */
    public static final int f46686y = -3116;

    /* renamed from: z  reason: collision with root package name */
    public static final int f46687z = -3117;
    private long Q;
    private a R;

    /* loaded from: classes3.dex */
    public interface a {
        void a(int i4, long j4);
    }

    static {
        LibraryLoader.load();
    }

    public PublisherWrapper() {
        this.Q = 0L;
        this.Q = _init();
    }

    private native void _abort(long j4);

    private native int _add_audio_track(long j4, int i4, int i10, int i11, int i12, int i13, ByteBuffer byteBuffer, int i14, long j10);

    private native void _add_meta_option(long j4, String str, String str2);

    private native int _add_video_track(long j4, int i4, int i10, int i11, float f10, int i12, ByteBuffer byteBuffer, int i13, long j10);

    private native long _get_property_long(long j4, int i4);

    private native String _get_property_string(long j4, int i4);

    private native long _init();

    private native void _release(long j4);

    private native void _set_audio_only(long j4, boolean z9);

    private native void _set_bw_est_config(long j4, int i4, int i10, int i11, int i12, int i13);

    private native void _set_enable_mp4_fast_start(long j4, boolean z9);

    private native void _set_video_only(long j4, boolean z9);

    private native int _start(long j4, String str);

    private native int _stop(long j4);

    private native int _write_frame(long j4, int i4, long j10, ByteBuffer byteBuffer, int i10, long j11, long j12, int i11);

    private void onEvent(int i4, long j4) {
        a aVar = this.R;
        if (aVar != null) {
            aVar.a(i4, j4);
        }
    }

    public void a(a aVar) {
        this.R = aVar;
    }

    public void b(boolean z9) {
        _set_video_only(this.Q, z9);
    }

    public void c(boolean z9) {
        _set_enable_mp4_fast_start(this.Q, z9);
    }

    public void a(int i4, int i10, int i11, int i12, int i13) {
        _set_bw_est_config(this.Q, i4, i10, i11, i12, i13);
    }

    public long b(int i4) {
        return _get_property_long(this.Q, i4);
    }

    public String c(int i4) {
        return _get_property_string(this.Q, i4);
    }

    public void a(boolean z9) {
        _set_audio_only(this.Q, z9);
    }

    public synchronized void b() {
        long j4 = this.Q;
        if (j4 != 0) {
            _release(j4);
            this.Q = 0L;
        }
    }

    public int c() {
        return _stop(this.Q);
    }

    public void a(String str, String str2) {
        _add_meta_option(this.Q, str, str2);
    }

    public int a(int i4, int i10, int i11, float f10, int i12, ByteBuffer byteBuffer, long j4) {
        return _add_video_track(this.Q, i4, i10, i11, f10, i12, byteBuffer, byteBuffer == null ? 0 : byteBuffer.limit(), j4);
    }

    public int a(int i4, int i10, int i11, int i12, int i13, ByteBuffer byteBuffer, long j4) {
        return _add_audio_track(this.Q, i4, i10, i11, i12, i13, byteBuffer, byteBuffer == null ? 0 : byteBuffer.limit(), j4);
    }

    public int a(int i4) {
        return (int) _get_property_long(this.Q, i4);
    }

    public void a() {
        _abort(this.Q);
    }

    public int a(String str) {
        return _start(this.Q, str);
    }

    public int a(int i4, long j4, ByteBuffer byteBuffer, long j10, long j11, int i10) {
        return _write_frame(this.Q, i4, j4, byteBuffer, byteBuffer.limit(), j10, j11, i10);
    }
}
