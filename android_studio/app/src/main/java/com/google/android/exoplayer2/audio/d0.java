package com.google.android.exoplayer2.audio;

import com.google.android.exoplayer2.audio.AudioProcessor;
import com.google.android.exoplayer2.util.z0;
import java.nio.ByteBuffer;

/* compiled from: FloatResamplingAudioProcessor.java */
/* loaded from: classes2.dex */
final class d0 extends z {

    /* renamed from: i  reason: collision with root package name */
    private static final int f21183i = Float.floatToIntBits(Float.NaN);

    /* renamed from: j  reason: collision with root package name */
    private static final double f21184j = 4.656612875245797E-10d;

    private static void m(int i4, ByteBuffer byteBuffer) {
        int floatToIntBits = Float.floatToIntBits((float) (i4 * f21184j));
        if (floatToIntBits == f21183i) {
            floatToIntBits = Float.floatToIntBits(0.0f);
        }
        byteBuffer.putInt(floatToIntBits);
    }

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void d(ByteBuffer byteBuffer) {
        ByteBuffer l10;
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        int i4 = limit - position;
        int i10 = this.f21418b.f21010c;
        if (i10 == 536870912) {
            l10 = l((i4 / 3) * 4);
            while (position < limit) {
                m(((byteBuffer.get(position) & 255) << 8) | ((byteBuffer.get(position + 1) & 255) << 16) | ((byteBuffer.get(position + 2) & 255) << 24), l10);
                position += 3;
            }
        } else if (i10 == 805306368) {
            l10 = l(i4);
            while (position < limit) {
                m((byteBuffer.get(position) & 255) | ((byteBuffer.get(position + 1) & 255) << 8) | ((byteBuffer.get(position + 2) & 255) << 16) | ((byteBuffer.get(position + 3) & 255) << 24), l10);
                position += 4;
            }
        } else {
            throw new IllegalStateException();
        }
        byteBuffer.position(byteBuffer.limit());
        l10.flip();
    }

    @Override // com.google.android.exoplayer2.audio.z
    public AudioProcessor.a h(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int i4 = aVar.f21010c;
        if (z0.B0(i4)) {
            if (i4 != 4) {
                return new AudioProcessor.a(aVar.f21008a, aVar.f21009b, 4);
            }
            return AudioProcessor.a.f21007e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }
}
