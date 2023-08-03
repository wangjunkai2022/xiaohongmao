package com.google.android.gms.signin.internal;

import android.accounts.Account;
import android.content.Context;
import android.os.Bundle;
import android.os.IBinder;
import android.os.IInterface;
import android.os.Looper;
import android.os.RemoteException;
import android.util.Log;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.ConnectionResult;
import com.google.android.gms.common.api.i;
import com.google.android.gms.common.internal.e;
import com.google.android.gms.common.internal.m;
import com.google.android.gms.common.internal.u;
import com.google.android.gms.common.internal.zat;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public class a extends com.google.android.gms.common.internal.i<f> implements com.google.android.gms.signin.f {
    public static final /* synthetic */ int S = 0;
    private final boolean O;
    private final com.google.android.gms.common.internal.f P;
    private final Bundle Q;
    @Nullable
    private final Integer R;

    public a(@NonNull Context context, @NonNull Looper looper, boolean z9, @NonNull com.google.android.gms.common.internal.f fVar, @NonNull Bundle bundle, @NonNull i.b bVar, @NonNull i.c cVar) {
        super(context, looper, 44, fVar, bVar, cVar);
        this.O = true;
        this.P = fVar;
        this.Q = bundle;
        this.R = fVar.l();
    }

    @NonNull
    @u2.a
    public static Bundle s0(@NonNull com.google.android.gms.common.internal.f fVar) {
        fVar.k();
        Integer l10 = fVar.l();
        Bundle bundle = new Bundle();
        bundle.putParcelable("com.google.android.gms.signin.internal.clientRequestedAccount", fVar.b());
        if (l10 != null) {
            bundle.putInt("com.google.android.gms.common.internal.ClientSettings.sessionId", l10.intValue());
        }
        bundle.putBoolean("com.google.android.gms.signin.internal.offlineAccessRequested", false);
        bundle.putBoolean("com.google.android.gms.signin.internal.idTokenRequested", false);
        bundle.putString("com.google.android.gms.signin.internal.serverClientId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.usePromptModeForAuthCode", true);
        bundle.putBoolean("com.google.android.gms.signin.internal.forceCodeForRefreshToken", false);
        bundle.putString("com.google.android.gms.signin.internal.hostedDomain", null);
        bundle.putString("com.google.android.gms.signin.internal.logSessionId", null);
        bundle.putBoolean("com.google.android.gms.signin.internal.waitForAccessTokenRefresh", false);
        return bundle;
    }

    @Override // com.google.android.gms.common.internal.e
    @NonNull
    protected final Bundle G() {
        if (!E().getPackageName().equals(this.P.h())) {
            this.Q.putString("com.google.android.gms.signin.internal.realClientPackageName", this.P.h());
        }
        return this.Q;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.e
    @NonNull
    public final String L() {
        return "com.google.android.gms.signin.internal.ISignInService";
    }

    @Override // com.google.android.gms.common.internal.e
    @NonNull
    protected final String M() {
        return "com.google.android.gms.signin.service.START";
    }

    @Override // com.google.android.gms.common.internal.e, com.google.android.gms.common.api.a.f
    public final boolean k() {
        return this.O;
    }

    @Override // com.google.android.gms.signin.f
    public final void q(e eVar) {
        u.l(eVar, "Expecting a valid ISignInCallbacks");
        try {
            Account d4 = this.P.d();
            ((f) K()).L1(new zai(1, new zat(d4, ((Integer) u.k(this.R)).intValue(), "<<default account>>".equals(d4.name) ? com.google.android.gms.auth.api.signin.internal.b.b(E()).c() : null)), eVar);
        } catch (RemoteException e4) {
            Log.w("SignInClientImpl", "Remote service probably died when signIn is called");
            try {
                eVar.O(new zak(1, new ConnectionResult(8, null), null));
            } catch (RemoteException unused) {
                Log.wtf("SignInClientImpl", "ISignInCallbacks#onSignInComplete should be executed from the same process, unexpected RemoteException.", e4);
            }
        }
    }

    @Override // com.google.android.gms.common.internal.e, com.google.android.gms.common.api.a.f
    public final int r() {
        return com.google.android.gms.common.h.f29014a;
    }

    @Override // com.google.android.gms.signin.f
    public final void t(@NonNull m mVar, boolean z9) {
        try {
            ((f) K()).K1(mVar, ((Integer) u.k(this.R)).intValue(), z9);
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when saveDefaultAccount is called");
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.google.android.gms.common.internal.e
    @NonNull
    public final /* synthetic */ IInterface y(@NonNull IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.signin.internal.ISignInService");
        return queryLocalInterface instanceof f ? (f) queryLocalInterface : new f(iBinder);
    }

    @Override // com.google.android.gms.signin.f
    public final void zaa() {
        try {
            ((f) K()).J1(((Integer) u.k(this.R)).intValue());
        } catch (RemoteException unused) {
            Log.w("SignInClientImpl", "Remote service probably died when clearAccountFromSessionStore is called");
        }
    }

    @Override // com.google.android.gms.signin.f
    public final void zab() {
        h(new e.d());
    }
}
