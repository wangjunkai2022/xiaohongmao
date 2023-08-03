package com.google.android.gms.common.api;

import android.text.TextUtils;
import androidx.annotation.NonNull;
import androidx.collection.ArrayMap;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.a;
import java.util.ArrayList;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public class AvailabilityException extends Exception {

    /* renamed from: a  reason: collision with root package name */
    private final ArrayMap<com.google.android.gms.common.api.internal.c<?>, ConnectionResult> f28517a;

    public AvailabilityException(@NonNull ArrayMap<com.google.android.gms.common.api.internal.c<?>, ConnectionResult> arrayMap) {
        this.f28517a = arrayMap;
    }

    @NonNull
    public ConnectionResult getConnectionResult(@NonNull h<? extends a.d> hVar) {
        com.google.android.gms.common.api.internal.c<? extends a.d> b10 = hVar.b();
        boolean z9 = this.f28517a.get(b10) != null;
        String b11 = b10.b();
        StringBuilder sb = new StringBuilder(String.valueOf(b11).length() + 58);
        sb.append("The given API (");
        sb.append(b11);
        sb.append(") was not part of the availability request.");
        com.google.android.gms.common.internal.u.b(z9, sb.toString());
        return (ConnectionResult) com.google.android.gms.common.internal.u.k(this.f28517a.get(b10));
    }

    @Override // java.lang.Throwable
    @NonNull
    public String getMessage() {
        ArrayList arrayList = new ArrayList();
        boolean z9 = true;
        for (com.google.android.gms.common.api.internal.c<?> cVar : this.f28517a.keySet()) {
            ConnectionResult connectionResult = (ConnectionResult) com.google.android.gms.common.internal.u.k(this.f28517a.get(cVar));
            z9 &= !connectionResult.isSuccess();
            String b10 = cVar.b();
            String valueOf = String.valueOf(connectionResult);
            StringBuilder sb = new StringBuilder(String.valueOf(b10).length() + 2 + valueOf.length());
            sb.append(b10);
            sb.append(": ");
            sb.append(valueOf);
            arrayList.add(sb.toString());
        }
        StringBuilder sb2 = new StringBuilder();
        if (z9) {
            sb2.append("None of the queried APIs are available. ");
        } else {
            sb2.append("Some of the queried APIs are unavailable. ");
        }
        sb2.append(TextUtils.join("; ", arrayList));
        return sb2.toString();
    }

    @NonNull
    public ConnectionResult getConnectionResult(@NonNull j<? extends a.d> jVar) {
        com.google.android.gms.common.api.internal.c<? extends a.d> b10 = jVar.b();
        boolean z9 = this.f28517a.get(b10) != null;
        String b11 = b10.b();
        StringBuilder sb = new StringBuilder(String.valueOf(b11).length() + 58);
        sb.append("The given API (");
        sb.append(b11);
        sb.append(") was not part of the availability request.");
        com.google.android.gms.common.internal.u.b(z9, sb.toString());
        return (ConnectionResult) com.google.android.gms.common.internal.u.k(this.f28517a.get(b10));
    }
}
