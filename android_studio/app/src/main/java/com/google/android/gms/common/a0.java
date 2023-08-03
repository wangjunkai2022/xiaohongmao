package com.google.android.gms.common;

import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.l2;
import com.google.android.gms.common.internal.m2;
import java.io.UnsupportedEncodingException;
import java.util.Arrays;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public abstract class a0 extends l2 {

    /* renamed from: c  reason: collision with root package name */
    private final int f28515c;

    /* JADX INFO: Access modifiers changed from: protected */
    public a0(byte[] bArr) {
        com.google.android.gms.common.internal.u.a(bArr.length == 25);
        this.f28515c = Arrays.hashCode(bArr);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public static byte[] z(String str) {
        try {
            return str.getBytes("ISO-8859-1");
        } catch (UnsupportedEncodingException e4) {
            throw new AssertionError(e4);
        }
    }

    @Override // com.google.android.gms.common.internal.m2
    public final com.google.android.gms.dynamic.d b() {
        return com.google.android.gms.dynamic.f.n1(n1());
    }

    @Override // com.google.android.gms.common.internal.m2
    public final int e() {
        return this.f28515c;
    }

    public final boolean equals(@Nullable Object obj) {
        com.google.android.gms.dynamic.d b10;
        if (obj != null && (obj instanceof m2)) {
            try {
                m2 m2Var = (m2) obj;
                if (m2Var.e() == this.f28515c && (b10 = m2Var.b()) != null) {
                    return Arrays.equals(n1(), (byte[]) com.google.android.gms.dynamic.f.z(b10));
                }
                return false;
            } catch (RemoteException e4) {
                Log.e("GoogleCertificates", "Failed to get Google certificates from remote", e4);
            }
        }
        return false;
    }

    public final int hashCode() {
        return this.f28515c;
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public abstract byte[] n1();
}
