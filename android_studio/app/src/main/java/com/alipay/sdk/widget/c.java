package com.alipay.sdk.widget;

import com.alipay.sdk.widget.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class c implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f6988a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public c(a aVar) {
        this.f6988a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.AlertDialogC0039a alertDialogC0039a;
        a.AlertDialogC0039a alertDialogC0039a2;
        alertDialogC0039a = this.f6988a.f6983a;
        if (alertDialogC0039a != null) {
            try {
                alertDialogC0039a2 = this.f6988a.f6983a;
                alertDialogC0039a2.dismiss();
            } catch (Exception unused) {
            }
        }
    }
}
