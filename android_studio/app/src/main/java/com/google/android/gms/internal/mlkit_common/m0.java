package com.google.android.gms.internal.mlkit_common;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.firebase.encoders.EncodingException;
import java.io.IOException;

/* compiled from: com.google.mlkit:common@@18.4.0 */
/* loaded from: classes2.dex */
final class m0 implements com.google.firebase.encoders.g {

    /* renamed from: a  reason: collision with root package name */
    private boolean f29815a = false;

    /* renamed from: b  reason: collision with root package name */
    private boolean f29816b = false;

    /* renamed from: c  reason: collision with root package name */
    private com.google.firebase.encoders.c f29817c;

    /* renamed from: d  reason: collision with root package name */
    private final i0 f29818d;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m0(i0 i0Var) {
        this.f29818d = i0Var;
    }

    private final void c() {
        if (this.f29815a) {
            throw new EncodingException("Cannot encode a second value in the ValueEncoderContext");
        }
        this.f29815a = true;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    public final com.google.firebase.encoders.g a(long j4) throws IOException {
        c();
        this.f29818d.r(this.f29817c, j4, this.f29816b);
        return this;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    public final com.google.firebase.encoders.g add(int i4) throws IOException {
        c();
        this.f29818d.q(this.f29817c, i4, this.f29816b);
        return this;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public final void b(com.google.firebase.encoders.c cVar, boolean z9) {
        this.f29815a = false;
        this.f29817c = cVar;
        this.f29816b = z9;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    public final com.google.firebase.encoders.g e(@NonNull byte[] bArr) throws IOException {
        c();
        this.f29818d.o(this.f29817c, bArr, this.f29816b);
        return this;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    public final com.google.firebase.encoders.g o(boolean z9) throws IOException {
        c();
        this.f29818d.q(this.f29817c, z9 ? 1 : 0, this.f29816b);
        return this;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    public final com.google.firebase.encoders.g q(double d4) throws IOException {
        c();
        this.f29818d.a(this.f29817c, d4, this.f29816b);
        return this;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    public final com.google.firebase.encoders.g r(float f10) throws IOException {
        c();
        this.f29818d.e(this.f29817c, f10, this.f29816b);
        return this;
    }

    @Override // com.google.firebase.encoders.g
    @NonNull
    public final com.google.firebase.encoders.g add(@Nullable String str) throws IOException {
        c();
        this.f29818d.o(this.f29817c, str, this.f29816b);
        return this;
    }
}
