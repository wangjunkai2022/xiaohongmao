package com.google.android.gms.common.internal;

import android.content.Context;
import android.os.IBinder;
import android.os.IInterface;
import android.view.View;
import com.google.android.gms.dynamic.RemoteCreator;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class d1 extends RemoteCreator<t0> {

    /* renamed from: c  reason: collision with root package name */
    private static final d1 f29071c = new d1();

    private d1() {
        super("com.google.android.gms.common.ui.SignInButtonCreatorImpl");
    }

    public static View c(Context context, int i4, int i10) throws RemoteCreator.RemoteCreatorException {
        d1 d1Var = f29071c;
        try {
            zax zaxVar = new zax(1, i4, i10, null);
            return (View) com.google.android.gms.dynamic.f.z(d1Var.b(context).J1(com.google.android.gms.dynamic.f.n1(context), zaxVar));
        } catch (Exception e4) {
            StringBuilder sb = new StringBuilder(64);
            sb.append("Could not get button with size ");
            sb.append(i4);
            sb.append(" and color ");
            sb.append(i10);
            throw new RemoteCreator.RemoteCreatorException(sb.toString(), e4);
        }
    }

    @Override // com.google.android.gms.dynamic.RemoteCreator
    public final /* synthetic */ t0 a(IBinder iBinder) {
        if (iBinder == null) {
            return null;
        }
        IInterface queryLocalInterface = iBinder.queryLocalInterface("com.google.android.gms.common.internal.ISignInButtonCreator");
        return queryLocalInterface instanceof t0 ? (t0) queryLocalInterface : new t0(iBinder);
    }
}
