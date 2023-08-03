package com.google.android.exoplayer2.extractor;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.metadata.Metadata;
import com.google.android.exoplayer2.metadata.id3.b;
import java.io.EOFException;
import java.io.IOException;

/* compiled from: Id3Peeker.java */
/* loaded from: classes2.dex */
public final class x {

    /* renamed from: a  reason: collision with root package name */
    private final com.google.android.exoplayer2.util.h0 f23539a = new com.google.android.exoplayer2.util.h0(10);

    @Nullable
    public Metadata a(l lVar, @Nullable b.a aVar) throws IOException {
        Metadata metadata = null;
        int i4 = 0;
        while (true) {
            try {
                lVar.s(this.f23539a.d(), 0, 10);
                this.f23539a.S(0);
                if (this.f23539a.J() != 4801587) {
                    break;
                }
                this.f23539a.T(3);
                int F = this.f23539a.F();
                int i10 = F + 10;
                if (metadata == null) {
                    byte[] bArr = new byte[i10];
                    System.arraycopy(this.f23539a.d(), 0, bArr, 0, 10);
                    lVar.s(bArr, 10, F);
                    metadata = new com.google.android.exoplayer2.metadata.id3.b(aVar).e(bArr, i10);
                } else {
                    lVar.k(F);
                }
                i4 += i10;
            } catch (EOFException unused) {
            }
        }
        lVar.h();
        lVar.k(i4);
        return metadata;
    }
}
