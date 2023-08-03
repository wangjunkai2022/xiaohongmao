package com.google.android.gms.common.api.internal;

import androidx.annotation.NonNull;
import androidx.fragment.app.FragmentActivity;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.Status;
import com.google.android.gms.common.api.i;
import java.io.FileDescriptor;
import java.io.PrintWriter;
import java.util.concurrent.TimeUnit;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public class k0 extends com.google.android.gms.common.api.i {

    /* renamed from: e  reason: collision with root package name */
    private final String f28789e = "Method is not supported by connectionless client. APIs supporting connectionless client must not call this method.";

    public k0(String str) {
    }

    @Override // com.google.android.gms.common.api.i
    public final void A() {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final void B(@NonNull i.b bVar) {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final void C(@NonNull i.c cVar) {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final void E(@NonNull FragmentActivity fragmentActivity) {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final void F(@NonNull i.b bVar) {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final void G(@NonNull i.c cVar) {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final ConnectionResult d() {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final ConnectionResult e(long j4, @NonNull TimeUnit timeUnit) {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final com.google.android.gms.common.api.l<Status> f() {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final void g() {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final void i() {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final void j(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    @NonNull
    public final ConnectionResult p(@NonNull com.google.android.gms.common.api.a<?> aVar) {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final boolean t(@NonNull com.google.android.gms.common.api.a<?> aVar) {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final boolean u() {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final boolean v() {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final boolean w(@NonNull i.b bVar) {
        throw new UnsupportedOperationException(this.f28789e);
    }

    @Override // com.google.android.gms.common.api.i
    public final boolean x(@NonNull i.c cVar) {
        throw new UnsupportedOperationException(this.f28789e);
    }
}
