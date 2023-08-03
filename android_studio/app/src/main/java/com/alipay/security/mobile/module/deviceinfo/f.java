package com.alipay.security.mobile.module.deviceinfo;

import android.telephony.PhoneStateListener;
import android.telephony.SignalStrength;
import android.telephony.TelephonyManager;

/* loaded from: classes.dex */
final class f extends PhoneStateListener {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ g f7021a;

    /* renamed from: b  reason: collision with root package name */
    final /* synthetic */ TelephonyManager f7022b;

    /* JADX INFO: Access modifiers changed from: package-private */
    public f(g gVar, TelephonyManager telephonyManager) {
        this.f7021a = gVar;
        this.f7022b = telephonyManager;
    }

    @Override // android.telephony.PhoneStateListener
    public final void onSignalStrengthsChanged(SignalStrength signalStrength) {
        super.onSignalStrengthsChanged(signalStrength);
        if (signalStrength != null) {
            this.f7021a.s(signalStrength.getGsmSignalStrength());
        }
        this.f7022b.listen(this, 0);
    }
}
