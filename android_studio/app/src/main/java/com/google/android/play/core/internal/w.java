package com.google.android.play.core.internal;

import android.content.Context;
import android.util.Log;
import java.util.List;
import java.util.concurrent.Executor;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
public final class w implements com.google.android.play.core.splitinstall.v0 {

    /* renamed from: a  reason: collision with root package name */
    private final Context f31773a;

    /* renamed from: b  reason: collision with root package name */
    private final com.google.android.play.core.splitcompat.f f31774b;

    /* renamed from: c  reason: collision with root package name */
    private final y f31775c;

    /* renamed from: d  reason: collision with root package name */
    private final Executor f31776d;

    /* renamed from: e  reason: collision with root package name */
    private final com.google.android.play.core.splitcompat.s f31777e;

    public w(Context context, Executor executor, y yVar, com.google.android.play.core.splitcompat.f fVar, com.google.android.play.core.splitcompat.s sVar, byte[] bArr) {
        this.f31773a = context;
        this.f31774b = fVar;
        this.f31775c = yVar;
        this.f31776d = executor;
        this.f31777e = sVar;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void c(w wVar, List list, com.google.android.play.core.splitinstall.t0 t0Var) {
        Integer e4 = wVar.e(list);
        if (e4 == null) {
            return;
        }
        if (e4.intValue() == 0) {
            t0Var.e();
        } else {
            t0Var.a(e4.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public static /* bridge */ /* synthetic */ void d(w wVar, com.google.android.play.core.splitinstall.t0 t0Var) {
        try {
            if (!com.google.android.play.core.splitcompat.a.f(e1.a(wVar.f31773a))) {
                Log.e("SplitCompat", "Emulating splits failed.");
                t0Var.a(-12);
                return;
            }
            Log.i("SplitCompat", "Splits installed.");
            t0Var.zza();
        } catch (Exception e4) {
            Log.e("SplitCompat", "Error emulating splits.", e4);
            t0Var.a(-12);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:70:0x0128 A[Catch: Exception -> 0x012c, TRY_LEAVE, TryCatch #4 {Exception -> 0x012c, blocks: (B:3:0x0004, B:70:0x0128, B:5:0x0016, B:12:0x0024, B:13:0x002d, B:15:0x0033, B:17:0x005b, B:22:0x006e, B:24:0x007a, B:33:0x009d, B:40:0x00aa, B:20:0x0068, B:41:0x00ab, B:42:0x00b0, B:43:0x00ba, B:45:0x00c2, B:47:0x00ca, B:48:0x00d8, B:50:0x00dc, B:52:0x00ed, B:64:0x0118, B:54:0x00f4, B:55:0x00fa, B:57:0x0101, B:60:0x010a, B:62:0x0111), top: B:79:0x0004 }] */
    @androidx.annotation.Nullable
    @g3.a
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final java.lang.Integer e(java.util.List r15) {
        /*
            Method dump skipped, instructions count: 311
            To view this dump change 'Code comments level' option to 'DEBUG'
        */
        throw new UnsupportedOperationException("Method not decompiled: com.google.android.play.core.internal.w.e(java.util.List):java.lang.Integer");
    }

    @Override // com.google.android.play.core.splitinstall.v0
    public final void a(List list, com.google.android.play.core.splitinstall.t0 t0Var) {
        if (com.google.android.play.core.splitcompat.a.g()) {
            this.f31776d.execute(new v(this, list, t0Var));
            return;
        }
        throw new IllegalStateException("Ingestion should only be called in SplitCompat mode.");
    }
}
