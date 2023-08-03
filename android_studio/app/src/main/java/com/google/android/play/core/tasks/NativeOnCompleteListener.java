package com.google.android.play.core.tasks;

import androidx.annotation.Nullable;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public class NativeOnCompleteListener implements a<Object> {

    /* renamed from: a  reason: collision with root package name */
    private final long f32026a;

    /* renamed from: b  reason: collision with root package name */
    private final int f32027b;

    public NativeOnCompleteListener(long j4, int i4) {
        this.f32026a = j4;
        this.f32027b = i4;
    }

    @Override // com.google.android.play.core.tasks.a
    public void a(d<Object> dVar) {
        if (dVar.j()) {
            if (dVar.k()) {
                nativeOnComplete(this.f32026a, this.f32027b, dVar.h(), 0);
                return;
            }
            Exception g4 = dVar.g();
            if (!(g4 instanceof zzj)) {
                nativeOnComplete(this.f32026a, this.f32027b, null, -100);
                return;
            }
            int errorCode = ((zzj) g4).getErrorCode();
            if (errorCode != 0) {
                nativeOnComplete(this.f32026a, this.f32027b, null, errorCode);
                return;
            }
            int i4 = this.f32027b;
            StringBuilder sb = new StringBuilder(51);
            sb.append("TaskException has error code 0 on task: ");
            sb.append(i4);
            throw new IllegalStateException(sb.toString());
        }
        int i10 = this.f32027b;
        StringBuilder sb2 = new StringBuilder(50);
        sb2.append("onComplete called for incomplete task: ");
        sb2.append(i10);
        throw new IllegalStateException(sb2.toString());
    }

    public native void nativeOnComplete(long j4, int i4, @Nullable Object obj, int i10);
}
