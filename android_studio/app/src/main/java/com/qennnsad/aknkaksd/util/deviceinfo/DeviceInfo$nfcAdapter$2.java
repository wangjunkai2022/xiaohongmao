package com.qennnsad.aknkaksd.util.deviceinfo;

import android.content.Context;
import android.nfc.NfcAdapter;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Lambda;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DeviceInfo.kt */
@Metadata(d1 = {"\u0000\n\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\n \u0002*\u0004\u0018\u00010\u00010\u0001H\n¢\u0006\u0002\b\u0003"}, d2 = {"<anonymous>", "Landroid/nfc/NfcAdapter;", "kotlin.jvm.PlatformType", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
/* loaded from: classes3.dex */
public final class DeviceInfo$nfcAdapter$2 extends Lambda implements Function0<NfcAdapter> {
    final /* synthetic */ DeviceInfo this$0;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
    public DeviceInfo$nfcAdapter$2(DeviceInfo deviceInfo) {
        super(0);
        this.this$0 = deviceInfo;
    }

    /* JADX WARN: Can't rename method to resolve collision */
    @Override // kotlin.jvm.functions.Function0
    public final NfcAdapter invoke() {
        Context context;
        context = this.this$0.context;
        return NfcAdapter.getDefaultAdapter(context);
    }
}
