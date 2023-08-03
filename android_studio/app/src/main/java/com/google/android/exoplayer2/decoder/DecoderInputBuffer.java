package com.google.android.exoplayer2.decoder;

import androidx.annotation.Nullable;
import java.lang.annotation.Documented;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import java.nio.ByteBuffer;
import org.checkerframework.checker.nullness.qual.EnsuresNonNull;

/* loaded from: classes2.dex */
public class DecoderInputBuffer extends com.google.android.exoplayer2.decoder.a {

    /* renamed from: i  reason: collision with root package name */
    public static final int f21568i = 0;

    /* renamed from: j  reason: collision with root package name */
    public static final int f21569j = 1;

    /* renamed from: k  reason: collision with root package name */
    public static final int f21570k = 2;

    /* renamed from: b  reason: collision with root package name */
    public final b f21571b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    public ByteBuffer f21572c;

    /* renamed from: d  reason: collision with root package name */
    public boolean f21573d;

    /* renamed from: e  reason: collision with root package name */
    public long f21574e;
    @Nullable

    /* renamed from: f  reason: collision with root package name */
    public ByteBuffer f21575f;

    /* renamed from: g  reason: collision with root package name */
    private final int f21576g;

    /* renamed from: h  reason: collision with root package name */
    private final int f21577h;

    /* loaded from: classes2.dex */
    public static final class InsufficientCapacityException extends IllegalStateException {
        public final int currentCapacity;
        public final int requiredCapacity;

        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public InsufficientCapacityException(int r3, int r4) {
            /*
                r2 = this;
                java.lang.StringBuilder r0 = new java.lang.StringBuilder
                r1 = 44
                r0.<init>(r1)
                java.lang.String r1 = "Buffer too small ("
                r0.append(r1)
                r0.append(r3)
                java.lang.String r1 = " < "
                r0.append(r1)
                r0.append(r4)
                java.lang.String r1 = ")"
                r0.append(r1)
                java.lang.String r0 = r0.toString()
                r2.<init>(r0)
                r2.currentCapacity = r3
                r2.requiredCapacity = r4
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.decoder.DecoderInputBuffer.InsufficientCapacityException.<init>(int, int):void");
        }
    }

    @Documented
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    public DecoderInputBuffer(int i4) {
        this(i4, 0);
    }

    private ByteBuffer o(int i4) {
        int i10 = this.f21576g;
        if (i10 == 1) {
            return ByteBuffer.allocate(i4);
        }
        if (i10 == 2) {
            return ByteBuffer.allocateDirect(i4);
        }
        ByteBuffer byteBuffer = this.f21572c;
        throw new InsufficientCapacityException(byteBuffer == null ? 0 : byteBuffer.capacity(), i4);
    }

    public static DecoderInputBuffer s() {
        return new DecoderInputBuffer(0);
    }

    @Override // com.google.android.exoplayer2.decoder.a
    public void f() {
        super.f();
        ByteBuffer byteBuffer = this.f21572c;
        if (byteBuffer != null) {
            byteBuffer.clear();
        }
        ByteBuffer byteBuffer2 = this.f21575f;
        if (byteBuffer2 != null) {
            byteBuffer2.clear();
        }
        this.f21573d = false;
    }

    @EnsuresNonNull({"data"})
    public void p(int i4) {
        int i10 = i4 + this.f21577h;
        ByteBuffer byteBuffer = this.f21572c;
        if (byteBuffer == null) {
            this.f21572c = o(i10);
            return;
        }
        int capacity = byteBuffer.capacity();
        int position = byteBuffer.position();
        int i11 = i10 + position;
        if (capacity >= i11) {
            this.f21572c = byteBuffer;
            return;
        }
        ByteBuffer o9 = o(i11);
        o9.order(byteBuffer.order());
        if (position > 0) {
            byteBuffer.flip();
            o9.put(byteBuffer);
        }
        this.f21572c = o9;
    }

    public final void q() {
        ByteBuffer byteBuffer = this.f21572c;
        if (byteBuffer != null) {
            byteBuffer.flip();
        }
        ByteBuffer byteBuffer2 = this.f21575f;
        if (byteBuffer2 != null) {
            byteBuffer2.flip();
        }
    }

    public final boolean r() {
        return h(1073741824);
    }

    @EnsuresNonNull({"supplementalData"})
    public void t(int i4) {
        ByteBuffer byteBuffer = this.f21575f;
        if (byteBuffer != null && byteBuffer.capacity() >= i4) {
            this.f21575f.clear();
        } else {
            this.f21575f = ByteBuffer.allocate(i4);
        }
    }

    public DecoderInputBuffer(int i4, int i10) {
        this.f21571b = new b();
        this.f21576g = i4;
        this.f21577h = i10;
    }
}
