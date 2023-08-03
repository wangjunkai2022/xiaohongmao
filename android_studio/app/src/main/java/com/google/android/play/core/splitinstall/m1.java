package com.google.android.play.core.splitinstall;

import android.app.Activity;
import android.content.Intent;
import android.content.IntentSender;
import android.os.Bundle;

/* compiled from: com.google.android.play:core@@1.10.3 */
/* loaded from: classes2.dex */
final class m1 implements com.google.android.play.core.common.a {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ Activity f31909a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public m1(i iVar, Activity activity) {
        this.f31909a = activity;
    }

    @Override // com.google.android.play.core.common.a
    public final void a(IntentSender intentSender, int i4, Intent intent, int i10, int i11, int i12, Bundle bundle) throws IntentSender.SendIntentException {
        this.f31909a.startIntentSenderForResult(intentSender, i4, intent, i10, i11, i12);
    }
}
