package com.google.android.gms.internal.mlkit_language_id_common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.encoders.EncodingException;
import java.io.IOException;

/* compiled from: com.google.mlkit:language-id-common@@16.0.0 */
/* loaded from: classes2.dex */
final class s implements com.google.firebase.encoders.g {

    /* renamed from: a  reason: collision with root package name */
    private boolean f30853a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f30854b = false;

    /* renamed from: c  reason: collision with root package name */
    private com.google.firebase.encoders.c f30855c;

    /* renamed from: d  reason: collision with root package name */
    private final o f30856d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public s(o oVar) {
        this.f30856d = oVar;
    }

    private final void c() {
        if (this.f30853a) {
            throw new EncodingException("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f30853a = true;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    public final com.google.firebase.encoders.g a(long j4) throws IOException {
        c();
        this.f30856d.r(this.f30855c, j4, this.f30854b);
        return this;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    public final com.google.firebase.encoders.g add(int i4) throws IOException {
        c();
        this.f30856d.q(this.f30855c, i4, this.f30854b);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(com.google.firebase.encoders.c cVar, boolean z9) {
        this.f30853a = false;
        this.f30855c = cVar;
        this.f30854b = z9;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    public final com.google.firebase.encoders.g e(@NonNull byte[] bArr) throws IOException {
        c();
        this.f30856d.o(this.f30855c, bArr, this.f30854b);
        return this;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    public final com.google.firebase.encoders.g o(boolean z9) throws IOException {
        c();
        this.f30856d.q(this.f30855c, z9 ? 1 : 0, this.f30854b);
        return this;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    public final com.google.firebase.encoders.g q(double d4) throws IOException {
        c();
        this.f30856d.a(this.f30855c, d4, this.f30854b);
        return this;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    public final com.google.firebase.encoders.g r(float f10) throws IOException {
        c();
        this.f30856d.e(this.f30855c, f10, this.f30854b);
        return this;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    public final com.google.firebase.encoders.g add(@Nullable String str) throws IOException {
        c();
        this.f30856d.o(this.f30855c, str, this.f30854b);
        return this;
    }
}
