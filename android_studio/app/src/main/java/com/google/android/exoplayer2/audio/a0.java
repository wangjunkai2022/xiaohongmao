package com.google.android.exoplayer2.audio;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.audio.AudioProcessor;
import java.nio.ByteBuffer;

/* compiled from: ChannelMappingAudioProcessor.java */
/* loaded from: classes2.dex */
final class a0 extends z {
    @Nullable

    /* renamed from: i  reason: collision with root package name */
    private int[] f21116i;
    @Nullable

    /* renamed from: j  reason: collision with root package name */
    private int[] f21117j;

    @Override // com.google.android.exoplayer2.audio.AudioProcessor
    public void d(ByteBuffer byteBuffer) {
        int[] iArr = (int[]) com.google.android.exoplayer2.util.a.g(this.f21117j);
        int position = byteBuffer.position();
        int limit = byteBuffer.limit();
        ByteBuffer l10 = l(((limit - position) / this.f21418b.f21011d) * this.f21419c.f21011d);
        while (position < limit) {
            for (int i4 : iArr) {
                l10.putShort(byteBuffer.getShort((i4 * 2) + position));
            }
            position += this.f21418b.f21011d;
        }
        byteBuffer.position(limit);
        l10.flip();
    }

    @Override // com.google.android.exoplayer2.audio.z
    public AudioProcessor.a h(AudioProcessor.a aVar) throws AudioProcessor.UnhandledAudioFormatException {
        int[] iArr = this.f21116i;
        if (iArr == null) {
            return AudioProcessor.a.f21007e;
        }
        if (aVar.f21010c == 2) {
            boolean z9 = aVar.f21009b != iArr.length;
            int i4 = 0;
            while (i4 < iArr.length) {
                int i10 = iArr[i4];
                if (i10 >= aVar.f21009b) {
                    throw new AudioProcessor.UnhandledAudioFormatException(aVar);
                }
                z9 |= i10 != i4;
                i4++;
            }
            if (z9) {
                return new AudioProcessor.a(aVar.f21008a, iArr.length, 2);
            }
            return AudioProcessor.a.f21007e;
        }
        throw new AudioProcessor.UnhandledAudioFormatException(aVar);
    }

    @Override // com.google.android.exoplayer2.audio.z
    protected void i() {
        this.f21117j = this.f21116i;
    }

    @Override // com.google.android.exoplayer2.audio.z
    protected void k() {
        this.f21117j = null;
        this.f21116i = null;
    }

    public void m(@Nullable int[] iArr) {
        this.f21116i = iArr;
    }
}
