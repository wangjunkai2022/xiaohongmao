package com.alipay.sdk.widget;

import com.alipay.sdk.widget.a;

/* JADX INFO: Access modifiers changed from: package-private */
/* loaded from: classes.dex */
public final class b implements Runnable {

    /* renamed from: a  reason: collision with root package name */
    final /* synthetic */ a f6987a;

    /* JADX INFO: Access modifiers changed from: package-private */
    public b(a aVar) {
        this.f6987a = aVar;
    }

    @Override // java.lang.Runnable
    public final void run() {
        a.AlertDialogC0039a alertDialogC0039a;
        a.AlertDialogC0039a alertDialogC0039a2;
        a.AlertDialogC0039a alertDialogC0039a3;
        alertDialogC0039a = this.f6987a.f6983a;
        if (alertDialogC0039a == null) {
            a aVar = this.f6987a;
            a aVar2 = this.f6987a;
            aVar.f6983a = new a.AlertDialogC0039a(aVar2.f6984b);
        }
        try {
            alertDialogC0039a2 = this.f6987a.f6983a;
            if (alertDialogC0039a2.isShowing()) {
                return;
            }
            alertDialogC0039a3 = this.f6987a.f6983a;
            alertDialogC0039a3.show();
        } catch (Exception unused) {
        }
    }
}
