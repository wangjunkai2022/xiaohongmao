package com.google.android.exoplayer2.text;

import androidx.annotation.Nullable;
import com.google.android.exoplayer2.decoder.f;
import java.nio.ByteBuffer;

/* compiled from: SimpleSubtitleDecoder.java */
/* loaded from: classes2.dex */
public abstract class c extends com.google.android.exoplayer2.decoder.g<h, i, SubtitleDecoderException> implements f {

    /* renamed from: n  reason: collision with root package name */
    private final String f25348n;

    /* JADX INFO: Access modifiers changed from: protected */
    public c(String str) {
        super(new h[2], new i[2]);
        this.f25348n = str;
        u(1024);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.decoder.g
    @Nullable
    /* renamed from: A */
    public final SubtitleDecoderException j(h hVar, i iVar, boolean z9) {
        try {
            ByteBuffer byteBuffer = (ByteBuffer) com.google.android.exoplayer2.util.a.g(hVar.f21572c);
            iVar.p(hVar.f21574e, z(byteBuffer.array(), byteBuffer.limit(), z9), hVar.f25561l);
            iVar.g(Integer.MIN_VALUE);
            return null;
        } catch (SubtitleDecoderException e4) {
            return e4;
        }
    }

    @Override // com.google.android.exoplayer2.text.f
    public void a(long j4) {
    }

    @Override // com.google.android.exoplayer2.decoder.c
    public final String getName() {
        return this.f25348n;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.decoder.g
    /* renamed from: w */
    public final h g() {
        return new h();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.decoder.g
    /* renamed from: x */
    public final i h() {
        return new d(new f.a() { // from class: com.google.android.exoplayer2.text.b
            @Override // com.google.android.exoplayer2.decoder.f.a
            public final void a(com.google.android.exoplayer2.decoder.f fVar) {
                c.this.r((i) fVar);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.exoplayer2.decoder.g
    /* renamed from: y */
    public final SubtitleDecoderException i(Throwable th) {
        return new SubtitleDecoderException("Unexpected decode error", th);
    }

    protected abstract e z(byte[] bArr, int i4, boolean z9) throws SubtitleDecoderException;
}
