package com.ksyun.media.streamer.decoder;

import android.util.Log;
import com.ksyun.media.streamer.util.LibraryLoader;
import java.nio.ByteBuffer;

/* loaded from: classes3.dex */
public class AVDecoderWrapper {

    /* renamed from: a  reason: collision with root package name */
    private static final String f45865a = "AVDecoderWrapper";

    /* renamed from: b  reason: collision with root package name */
    private static final int f45866b = 0;

    /* renamed from: c  reason: collision with root package name */
    private static final int f45867c = 1;

    /* renamed from: g  reason: collision with root package name */
    private static boolean f45868g = false;

    /* renamed from: d  reason: collision with root package name */
    private long f45869d = _init();

    /* renamed from: e  reason: collision with root package name */
    private int f45870e;

    /* renamed from: f  reason: collision with root package name */
    private a f45871f;

    /* loaded from: classes3.dex */
    public interface a {
        void onDecoded(ByteBuffer byteBuffer, long j4, long j10, int i4);
    }

    static {
        LibraryLoader.load();
    }

    private native void _close(long j4);

    private native int _decode(long j4, int i4, ByteBuffer byteBuffer, int i10, long j10, int i11, long j11);

    private native long _init();

    private native int _open_audio(long j4, long j10);

    private native int _open_video(long j4, long j10);

    private native void _release(long j4);

    private void onDecoded(ByteBuffer byteBuffer, long j4, long j10, int i4) {
        if (f45868g) {
            StringBuilder sb = new StringBuilder();
            sb.append("onDecoded: ");
            sb.append(byteBuffer != null ? Integer.valueOf(byteBuffer.limit()) : "0");
            sb.append(" pts=");
            sb.append(j10);
            sb.append(" dts=");
            sb.append(j4);
            sb.append(" ");
            sb.append(i4);
            sb.append("  type = ");
            sb.append(this.f45870e);
            Log.d(f45865a, sb.toString());
        }
        a aVar = this.f45871f;
        if (aVar != null) {
            aVar.onDecoded(byteBuffer, j4, j10, i4);
        }
    }

    public void a(a aVar) {
        this.f45871f = aVar;
    }

    public int b(long j4) {
        this.f45870e = 0;
        return _open_video(this.f45869d, j4);
    }

    public int a(long j4) {
        this.f45870e = 1;
        return _open_audio(this.f45869d, j4);
    }

    public void b() {
        _release(this.f45869d);
    }

    public int a(ByteBuffer byteBuffer, long j4, int i4, long j10) {
        if (byteBuffer != null) {
            return _decode(this.f45869d, this.f45870e, byteBuffer, byteBuffer.limit(), j4, i4, j10);
        }
        return _decode(this.f45869d, this.f45870e, null, 0, j4, i4, j10);
    }

    public void a() {
        _close(this.f45869d);
    }
}
