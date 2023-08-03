package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.util.z0;
import java.nio.ByteBuffer;
import java.nio.ByteOrder;

/* loaded from: classes2.dex */
public interface AudioProcessor {

    /* renamed from: a  reason: collision with root package name */
    public static final ByteBuffer f21006a = ByteBuffer.allocateDirect(0).order(ByteOrder.nativeOrder());

    /* loaded from: classes2.dex */
    public static final class UnhandledAudioFormatException extends Exception {
        /* JADX WARN: Illegal instructions before constructor call */
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public UnhandledAudioFormatException(com.google.android.exoplayer2.audio.AudioProcessor.a r3) {
            /*
                r2 = this;
                java.lang.String r3 = java.lang.String.valueOf(r3)
                int r0 = r3.length()
                int r0 = r0 + 18
                java.lang.StringBuilder r1 = new java.lang.StringBuilder
                r1.<init>(r0)
                java.lang.String r0 = "Unhandled format: "
                r1.append(r0)
                r1.append(r3)
                java.lang.String r3 = r1.toString()
                r2.<init>(r3)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.google.android.exoplayer2.audio.AudioProcessor.UnhandledAudioFormatException.<init>(com.google.android.exoplayer2.audio.AudioProcessor$a):void");
        }
    }

    /* loaded from: classes2.dex */
    public static final class a {

        /* renamed from: e  reason: collision with root package name */
        public static final a f21007e = new a(-1, -1, -1);

        /* renamed from: a  reason: collision with root package name */
        public final int f21008a;

        /* renamed from: b  reason: collision with root package name */
        public final int f21009b;

        /* renamed from: c  reason: collision with root package name */
        public final int f21010c;

        /* renamed from: d  reason: collision with root package name */
        public final int f21011d;

        public a(int i4, int i10, int i11) {
            this.f21008a = i4;
            this.f21009b = i10;
            this.f21010c = i11;
            this.f21011d = z0.C0(i11) ? z0.k0(i11, i10) : -1;
        }

        public String toString() {
            int i4 = this.f21008a;
            int i10 = this.f21009b;
            int i11 = this.f21010c;
            StringBuilder sb = new StringBuilder(83);
            sb.append("AudioFormat[sampleRate=");
            sb.append(i4);
            sb.append(", channelCount=");
            sb.append(i10);
            sb.append(", encoding=");
            sb.append(i11);
            sb.append(']');
            return sb.toString();
        }
    }

    boolean a();

    boolean b();

    ByteBuffer c();

    void d(ByteBuffer byteBuffer);

    a e(a aVar) throws UnhandledAudioFormatException;

    void f();

    void flush();

    void reset();
}
