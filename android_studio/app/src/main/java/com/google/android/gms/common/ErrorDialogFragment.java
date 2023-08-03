package com.google.android.gms.common;

import android.app.AlertDialog;
import android.app.Dialog;
import android.app.DialogFragment;
import android.app.FragmentManager;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public class ErrorDialogFragment extends DialogFragment {

    /* renamed from: a  reason: collision with root package name */
    private Dialog f28478a;

    /* renamed from: b  reason: collision with root package name */
    private DialogInterface.OnCancelListener f28479b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private Dialog f28480c;

    @NonNull
    public static ErrorDialogFragment a(@NonNull Dialog dialog) {
        return b(dialog, null);
    }

    @NonNull
    public static ErrorDialogFragment b(@NonNull Dialog dialog, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        ErrorDialogFragment errorDialogFragment = new ErrorDialogFragment();
        Dialog dialog2 = (Dialog) com.google.android.gms.common.internal.u.l(dialog, "Cannot display null dialog");
        dialog2.setOnCancelListener(null);
        dialog2.setOnDismissListener(null);
        errorDialogFragment.f28478a = dialog2;
        if (onCancelListener != null) {
            errorDialogFragment.f28479b = onCancelListener;
        }
        return errorDialogFragment;
    }

    @Override // android.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(@NonNull DialogInterface dialogInterface) {
        DialogInterface.OnCancelListener onCancelListener = this.f28479b;
        if (onCancelListener != null) {
            onCancelListener.onCancel(dialogInterface);
        }
    }

    @Override // android.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(@Nullable Bundle bundle) {
        Dialog dialog = this.f28478a;
        if (dialog == null) {
            setShowsDialog(false);
            if (this.f28480c == null) {
                this.f28480c = new AlertDialog.Builder((Context) com.google.android.gms.common.internal.u.k(getActivity())).create();
            }
            return this.f28480c;
        }
        return dialog;
    }

    @Override // android.app.DialogFragment
    public void show(@NonNull FragmentManager fragmentManager, @Nullable String str) {
        super.show(fragmentManager, str);
    }
}
