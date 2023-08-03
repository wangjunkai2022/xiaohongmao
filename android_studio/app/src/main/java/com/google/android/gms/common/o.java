package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.FragmentManager;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public class o extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f29250a;

    /* renamed from: b  reason: collision with root package name */
    private DialogInterface.OnCancelListener f29251b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Dialog f29252c;

    @NonNull
    public static o U(@NonNull Dialog dialog) {
        return V(dialog, null);
    }

    @NonNull
    public static o V(@NonNull Dialog dialog, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        o oVar = new o();
        Dialog dialog2 = (Dialog) com.google.android.gms.common.internal.u.l(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        oVar.f29250a = dialog2;
        if (onCancelListener != null) {
            oVar.f29251b = onCancelListener;
        }
        return oVar;
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(@NonNull DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f29251b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = this.f29250a;
        if (dialog == null) {
            setShowsDialog(false);
            if (this.f29252c == null) {
                this.f29252c = new AlertDialog.Builder((Context) com.google.android.gms.common.internal.u.k(getContext())).create();
            }
            return this.f29252c;
        }
        return dialog;
    }

    @Override // androidx.fragment.app.DialogFragment
    public void show(@NonNull FragmentManager fragmentManager, @Nullable String str) {
        super.show(fragmentManager, str);
    }
}
