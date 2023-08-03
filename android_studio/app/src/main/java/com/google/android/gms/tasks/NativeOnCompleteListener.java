package com.google.android.gms.tasks;

import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-tasks@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class NativeOnCompleteListener implements e<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final long f31099a;

    @u2.a
    public NativeOnCompleteListener(long j4) {
        this.f31099a = j4;
    }

    @u2.a
    public static void b(@NonNull k<Object> kVar, long j4) {
        kVar.e(new NativeOnCompleteListener(j4));
    }

    @Override // com.google.android.gms.tasks.e
    @u2.a
    public void a(@NonNull k<Object> kVar) {
        Object obj;
        String str;
        Exception q9;
        if (kVar.v()) {
            obj = kVar.r();
            str = null;
        } else if (kVar.t() || (q9 = kVar.q()) == null) {
            obj = null;
            str = null;
        } else {
            str = q9.getMessage();
            obj = null;
        }
        nativeOnComplete(this.f31099a, obj, kVar.v(), kVar.t(), str);
    }

    @u2.a
    public native void nativeOnComplete(long j4, @Nullable Object obj, boolean z9, boolean z10, @Nullable String str);
}
