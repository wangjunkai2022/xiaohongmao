package com.google.android.gms.common.internal;

import android.accounts.Account;
import android.os.IBinder;
import android.os.Parcel;
import android.os.RemoteException;

/* compiled from: com.google.android.gms:play-services-basement@@18.0.1 */
/* loaded from: classes2.dex */
public final class i2 extends com.google.android.gms.internal.common.a implements m {
    /* JADX INFO: Access modifiers changed from: package-private */
    public i2(IBinder iBinder) {
        super(iBinder, "com.google.android.gms.common.internal.IAccountAccessor");
    }

    @Override // com.google.android.gms.common.internal.m
    public final Account zzb() throws RemoteException {
        Parcel s9 = s(2, n1());
        Account account = (Account) com.google.android.gms.internal.common.l.a(s9, Account.CREATOR);
        s9.recycle();
        return account;
    }
}
