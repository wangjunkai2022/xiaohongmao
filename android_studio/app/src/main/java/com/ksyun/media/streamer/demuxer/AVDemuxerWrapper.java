package com.ksyun.media.streamer.demuxer;

import com.ksyun.media.streamer.util.LibraryLoader;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AVDemuxerWrapper {

    /* renamed from: a  reason: collision with root package name */
    public static final int f45987a = 1;

    /* renamed from: b  reason: collision with root package name */
    public static final int f45988b = 2;

    /* renamed from: c  reason: collision with root package name */
    public static final int f45989c = 3;

    /* renamed from: d  reason: collision with root package name */
    public static final int f45990d = 4;

    /* renamed from: e  reason: collision with root package name */
    public static final int f45991e = 5;

    /* renamed from: f  reason: collision with root package name */
    public static final int f45992f = 6;

    /* renamed from: g  reason: collision with root package name */
    public static final int f45993g = 7;

    /* renamed from: h  reason: collision with root package name */
    public static final int f45994h = 8;

    /* renamed from: i  reason: collision with root package name */
    public static final int f45995i = 9;

    /* renamed from: j  reason: collision with root package name */
    public static final int f45996j = 10;

    /* renamed from: k  reason: collision with root package name */
    public static final int f45997k = 11;

    /* renamed from: l  reason: collision with root package name */
    public static final int f45998l = 12;

    /* renamed from: m  reason: collision with root package name */
    public static final int f45999m = 13;

    /* renamed from: n  reason: collision with root package name */
    public static final int f46000n = 14;

    /* renamed from: o  reason: collision with root package name */
    public static final int f46001o = 15;

    /* renamed from: p  reason: collision with root package name */
    public static final int f46002p = 16;

    /* renamed from: q  reason: collision with root package name */
    private static final String f46003q = "AVDemuxerWrapper";

    /* renamed from: r  reason: collision with root package name */
    private static final boolean f46004r = false;

    /* renamed from: s  reason: collision with root package name */
    private long f46005s;

    /* renamed from: t  reason: collision with root package name */
    private a f46006t;

    /* loaded from: classes3.dex */
    public interface a {
        void onDemuxed(long j4, ByteBuffer byteBuffer, long j10, long j11, int i4, int i10);

        void onPrepared();
    }

    static {
        LibraryLoader.load();
    }

    public AVDemuxerWrapper() {
        this.f46005s = 0L;
        this.f46005s = _init();
    }

    private native int _abort(long j4);

    private native long _get_property_long(long j4, int i4);

    private native String _get_property_string(long j4, int i4);

    private native long _init();

    private native void _release(long j4);

    private native int _set_data_source(long j4, String str);

    private native int _set_demux_ranges(long j4, long j10, long j11);

    private native int _start(long j4);

    private native int _stop(long j4);

    private void onDemuxed(long j4, ByteBuffer byteBuffer, long j10, long j11, int i4, int i10) {
        a aVar = this.f46006t;
        if (aVar != null) {
            aVar.onDemuxed(j4, byteBuffer, j10, j11, i4, i10);
        }
    }

    private void onPrepared() {
        a aVar = this.f46006t;
        if (aVar != null) {
            aVar.onPrepared();
        }
    }

    public void a(a aVar) {
        this.f46006t = aVar;
    }

    public int b() {
        return _stop(this.f46005s);
    }

    public int c() {
        return _abort(this.f46005s);
    }

    public void d() {
        _release(this.f46005s);
    }

    public int a(String str) {
        return _set_data_source(this.f46005s, str);
    }

    public long b(int i4) {
        return _get_property_long(this.f46005s, i4);
    }

    public String c(int i4) {
        return _get_property_string(this.f46005s, i4);
    }

    public int a() {
        return _start(this.f46005s);
    }

    public int a(int i4) {
        return (int) _get_property_long(this.f46005s, i4);
    }

    public int a(long j4, long j10) {
        return _set_demux_ranges(this.f46005s, j4, j10);
    }
}
