package com.google.android.gms.common.api.internal;

import android.util.Log;
import android.util.SparseArray;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.i;
import java.io.FileDescriptor;
import java.io.PrintWriter;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class q3 extends v3 {

    /* renamed from: f  reason: collision with root package name */
    private final SparseArray<p3> f28865f;

    private q3(m mVar) {
        super(mVar, com.google.android.gms.common.e.x());
        this.f28865f = new SparseArray<>();
        this.f28615a.h("AutoManageHelper", this);
    }

    public static q3 u(l lVar) {
        m e4 = LifecycleCallback.e(lVar);
        q3 q3Var = (q3) e4.m("AutoManageHelper", q3.class);
        return q3Var != null ? q3Var : new q3(e4);
    }

    @Nullable
    private final p3 x(int i4) {
        if (this.f28865f.size() <= i4) {
            return null;
        }
        SparseArray<p3> sparseArray = this.f28865f;
        return sparseArray.get(sparseArray.keyAt(i4));
    }

    @Override // com.google.android.gms.common.api.internal.LifecycleCallback
    public final void a(String str, FileDescriptor fileDescriptor, PrintWriter printWriter, String[] strArr) {
        for (int i4 = 0; i4 < this.f28865f.size(); i4++) {
            p3 x9 = x(i4);
            if (x9 != null) {
                printWriter.append((CharSequence) str).append("GoogleApiClient #").print(x9.f28857c);
                printWriter.println(":");
                x9.f28858d.j(String.valueOf(str).concat("  "), fileDescriptor, printWriter, strArr);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.v3, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void k() {
        super.k();
        boolean z9 = this.f28921b;
        String valueOf = String.valueOf(this.f28865f);
        StringBuilder sb = new StringBuilder(valueOf.length() + 14);
        sb.append("onStart ");
        sb.append(z9);
        sb.append(" ");
        sb.append(valueOf);
        Log.d("AutoManageHelper", sb.toString());
        if (this.f28922c.get() == null) {
            for (int i4 = 0; i4 < this.f28865f.size(); i4++) {
                p3 x9 = x(i4);
                if (x9 != null) {
                    x9.f28858d.g();
                }
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.v3, com.google.android.gms.common.api.internal.LifecycleCallback
    public final void l() {
        super.l();
        for (int i4 = 0; i4 < this.f28865f.size(); i4++) {
            p3 x9 = x(i4);
            if (x9 != null) {
                x9.f28858d.i();
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.v3
    protected final void n(ConnectionResult connectionResult, int i4) {
        Log.w("AutoManageHelper", "Unresolved error while connecting client. Stopping auto-manage.");
        if (i4 < 0) {
            Log.wtf("AutoManageHelper", "AutoManageLifecycleHelper received onErrorResolutionFailed callback but no failing client ID is set", new Exception());
            return;
        }
        p3 p3Var = this.f28865f.get(i4);
        if (p3Var != null) {
            w(i4);
            i.c cVar = p3Var.f28859e;
            if (cVar != null) {
                cVar.z(connectionResult);
            }
        }
    }

    @Override // com.google.android.gms.common.api.internal.v3
    protected final void o() {
        for (int i4 = 0; i4 < this.f28865f.size(); i4++) {
            p3 x9 = x(i4);
            if (x9 != null) {
                x9.f28858d.g();
            }
        }
    }

    public final void v(int i4, com.google.android.gms.common.api.i iVar, @Nullable i.c cVar) {
        com.google.android.gms.common.internal.u.l(iVar, "GoogleApiClient instance cannot be null");
        boolean z9 = this.f28865f.indexOfKey(i4) < 0;
        StringBuilder sb = new StringBuilder(54);
        sb.append("Already managing a GoogleApiClient with id ");
        sb.append(i4);
        com.google.android.gms.common.internal.u.r(z9, sb.toString());
        s3 s3Var = this.f28922c.get();
        boolean z10 = this.f28921b;
        String valueOf = String.valueOf(s3Var);
        StringBuilder sb2 = new StringBuilder(valueOf.length() + 49);
        sb2.append("starting AutoManage for client ");
        sb2.append(i4);
        sb2.append(" ");
        sb2.append(z10);
        sb2.append(" ");
        sb2.append(valueOf);
        Log.d("AutoManageHelper", sb2.toString());
        p3 p3Var = new p3(this, i4, iVar, cVar);
        iVar.C(p3Var);
        this.f28865f.put(i4, p3Var);
        if (this.f28921b && s3Var == null) {
            Log.d("AutoManageHelper", "connecting ".concat(iVar.toString()));
            iVar.g();
        }
    }

    public final void w(int i4) {
        p3 p3Var = this.f28865f.get(i4);
        this.f28865f.remove(i4);
        if (p3Var != null) {
            p3Var.f28858d.G(p3Var);
            p3Var.f28858d.i();
        }
    }
}
