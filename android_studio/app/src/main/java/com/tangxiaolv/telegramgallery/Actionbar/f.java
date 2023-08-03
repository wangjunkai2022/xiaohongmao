package com.tangxiaolv.telegramgallery.Actionbar;

import android.animation.AnimatorSet;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.Configuration;
import android.os.Bundle;
import android.view.View;
import android.view.ViewGroup;
import com.tangxiaolv.telegramgallery.GalleryActivity;
import com.tangxiaolv.telegramgallery.r;

/* compiled from: BaseFragment.java */
/* loaded from: classes3.dex */
public class f {

    /* renamed from: j  reason: collision with root package name */
    public static int f56040j = 1;

    /* renamed from: c  reason: collision with root package name */
    protected View f56043c;

    /* renamed from: d  reason: collision with root package name */
    protected b f56044d;

    /* renamed from: e  reason: collision with root package name */
    protected com.tangxiaolv.telegramgallery.Actionbar.a f56045e;

    /* renamed from: f  reason: collision with root package name */
    protected int f56046f;

    /* renamed from: g  reason: collision with root package name */
    protected Bundle f56047g;

    /* renamed from: a  reason: collision with root package name */
    private boolean f56041a = false;

    /* renamed from: b  reason: collision with root package name */
    protected Dialog f56042b = null;

    /* renamed from: h  reason: collision with root package name */
    protected boolean f56048h = true;

    /* renamed from: i  reason: collision with root package name */
    protected boolean f56049i = false;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BaseFragment.java */
    /* loaded from: classes3.dex */
    public class a implements DialogInterface.OnDismissListener {
        a() {
        }

        @Override // android.content.DialogInterface.OnDismissListener
        public void onDismiss(DialogInterface dialogInterface) {
            f fVar = f.this;
            fVar.H(fVar.f56042b);
            f.this.f56042b = null;
        }
    }

    public f() {
        int i4 = f56040j;
        f56040j = i4 + 1;
        this.f56046f = i4;
    }

    public boolean A() {
        return false;
    }

    public void B(int i4, int i10, Intent intent) {
    }

    public boolean C() {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void D() {
    }

    public void E() {
        try {
            Dialog dialog = this.f56042b;
            if (dialog != null && dialog.isShowing()) {
                this.f56042b.dismiss();
                this.f56042b = null;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
        com.tangxiaolv.telegramgallery.Actionbar.a aVar = this.f56045e;
        if (aVar != null) {
            aVar.t();
        }
    }

    public void F(Configuration configuration) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public AnimatorSet G(boolean z9, Runnable runnable) {
        return null;
    }

    protected void H(Dialog dialog) {
    }

    public boolean I() {
        return true;
    }

    public void J() {
        this.f56041a = true;
        com.tangxiaolv.telegramgallery.Actionbar.a aVar = this.f56045e;
        if (aVar != null) {
            aVar.setEnabled(false);
        }
    }

    public void K() {
    }

    public void L() {
        com.tangxiaolv.telegramgallery.Actionbar.a aVar = this.f56045e;
        if (aVar != null) {
            aVar.t();
        }
        try {
            Dialog dialog = this.f56042b;
            if (dialog != null && dialog.isShowing() && s(this.f56042b)) {
                this.f56042b.dismiss();
                this.f56042b = null;
            }
        } catch (Exception e4) {
            e4.printStackTrace();
        }
    }

    public void M(int i4, String[] strArr, int[] iArr) {
    }

    public void N() {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void O(boolean z9, boolean z10) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void P(boolean z9, boolean z10) {
    }

    public boolean Q(f fVar) {
        b bVar = this.f56044d;
        return bVar != null && bVar.U(fVar);
    }

    public boolean R(f fVar, boolean z9) {
        b bVar = this.f56044d;
        return bVar != null && bVar.V(fVar, z9);
    }

    public boolean S(f fVar, boolean z9, boolean z10) {
        b bVar = this.f56044d;
        return bVar != null && bVar.W(fVar, z9, z10, true);
    }

    public void T() {
        b bVar;
        if (this.f56041a || (bVar = this.f56044d) == null) {
            return;
        }
        bVar.a0(this);
    }

    public void U(Bundle bundle) {
    }

    public void V(Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void W(b bVar) {
        if (this.f56044d != bVar) {
            this.f56044d = bVar;
            View view = this.f56043c;
            if (view != null) {
                ViewGroup viewGroup = (ViewGroup) view.getParent();
                if (viewGroup != null) {
                    try {
                        viewGroup.removeView(this.f56043c);
                    } catch (Exception e4) {
                        e4.printStackTrace();
                    }
                }
                b bVar2 = this.f56044d;
                if (bVar2 != null && bVar2.getContext() != this.f56043c.getContext()) {
                    this.f56043c = null;
                }
            }
            com.tangxiaolv.telegramgallery.Actionbar.a aVar = this.f56045e;
            if (aVar != null) {
                ViewGroup viewGroup2 = (ViewGroup) aVar.getParent();
                if (viewGroup2 != null) {
                    try {
                        viewGroup2.removeView(this.f56045e);
                    } catch (Exception e10) {
                        e10.printStackTrace();
                    }
                }
                b bVar3 = this.f56044d;
                if (bVar3 != null && bVar3.getContext() != this.f56045e.getContext()) {
                    this.f56045e = null;
                }
            }
            b bVar4 = this.f56044d;
            if (bVar4 == null || this.f56045e != null) {
                return;
            }
            com.tangxiaolv.telegramgallery.Actionbar.a q9 = q(bVar4.getContext());
            this.f56045e = q9;
            q9.f55937u = this;
        }
    }

    public void X(Dialog dialog) {
        this.f56042b = dialog;
    }

    public Dialog Y(Dialog dialog) {
        return Z(dialog, false);
    }

    public Dialog Z(Dialog dialog, boolean z9) {
        b bVar;
        if (dialog != null && (bVar = this.f56044d) != null && !bVar.f55957n && !bVar.f55954k && (z9 || !bVar.D())) {
            try {
                Dialog dialog2 = this.f56042b;
                if (dialog2 != null) {
                    dialog2.dismiss();
                    this.f56042b = null;
                }
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            try {
                this.f56042b = dialog;
                dialog.setCanceledOnTouchOutside(true);
                this.f56042b.setOnDismissListener(new a());
                this.f56042b.show();
                return this.f56042b;
            } catch (Exception e10) {
                e10.printStackTrace();
            }
        }
        return null;
    }

    public void a0(Intent intent, int i4) {
        b bVar = this.f56044d;
        if (bVar != null) {
            bVar.e0(intent, i4);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void p() {
        View view = this.f56043c;
        if (view != null) {
            ViewGroup viewGroup = (ViewGroup) view.getParent();
            if (viewGroup != null) {
                try {
                    viewGroup.removeView(this.f56043c);
                } catch (Exception e4) {
                    e4.printStackTrace();
                }
            }
            this.f56043c = null;
        }
        com.tangxiaolv.telegramgallery.Actionbar.a aVar = this.f56045e;
        if (aVar != null) {
            ViewGroup viewGroup2 = (ViewGroup) aVar.getParent();
            if (viewGroup2 != null) {
                try {
                    viewGroup2.removeView(this.f56045e);
                } catch (Exception e10) {
                    e10.printStackTrace();
                }
            }
            this.f56045e = null;
        }
        this.f56044d = null;
    }

    protected com.tangxiaolv.telegramgallery.Actionbar.a q(Context context) {
        com.tangxiaolv.telegramgallery.Actionbar.a aVar = new com.tangxiaolv.telegramgallery.Actionbar.a(context);
        aVar.setBackgroundColor(r.f(context));
        aVar.setItemsBackgroundColor(r.e(context));
        return aVar;
    }

    public View r(Context context) {
        return null;
    }

    public boolean s(Dialog dialog) {
        return true;
    }

    public void t() {
        u(true);
    }

    public void u(boolean z9) {
        b bVar;
        if (this.f56041a || (bVar = this.f56044d) == null) {
            return;
        }
        bVar.F(z9);
    }

    public com.tangxiaolv.telegramgallery.Actionbar.a v() {
        return this.f56045e;
    }

    public Bundle w() {
        return this.f56047g;
    }

    public View x() {
        return this.f56043c;
    }

    public GalleryActivity y() {
        b bVar = this.f56044d;
        if (bVar != null) {
            return bVar.E;
        }
        return null;
    }

    public Dialog z() {
        return this.f56042b;
    }

    public f(Bundle bundle) {
        this.f56047g = bundle;
        int i4 = f56040j;
        f56040j = i4 + 1;
        this.f56046f = i4;
    }
}
