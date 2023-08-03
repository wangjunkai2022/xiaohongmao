package com.qennnsad.aknkaksd.presentation.ui.base;

import android.app.Dialog;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.view.WindowManager;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.DialogFragment;
import androidx.viewbinding.ViewBinding;
import com.didi.live.spring.R;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseDialogFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000H\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u0007\n\u0002\b\u0007\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u00012\u00020\u0003:\u0001%B\u0007¢\u0006\u0004\b#\u0010$J!\u0010\b\u001a\u00028\u00002\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H&¢\u0006\u0004\b\b\u0010\tJ\r\u0010\n\u001a\u00028\u0000¢\u0006\u0004\b\n\u0010\u000bJ\u0012\u0010\u000f\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016J&\u0010\u0011\u001a\u0004\u0018\u00010\u00102\u0006\u0010\u0005\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016J\b\u0010\u0012\u001a\u00020\u000eH\u0016J\b\u0010\u0013\u001a\u00020\u000eH\u0016R\u0018\u0010\u0016\u001a\u0004\u0018\u00018\u00008\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0014\u0010\u0015R\u0014\u0010\u001a\u001a\u00020\u00178$X¤\u0004¢\u0006\u0006\u001a\u0004\b\u0018\u0010\u0019R\u0014\u0010\u001e\u001a\u00020\u001b8$X¤\u0004¢\u0006\u0006\u001a\u0004\b\u001c\u0010\u001dR\u0014\u0010\"\u001a\u00020\u001f8$X¤\u0004¢\u0006\u0006\u001a\u0004\b \u0010!¨\u0006&"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment;", "Landroidx/viewbinding/ViewBinding;", "VB", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "U", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;", "Y", "()Landroidx/viewbinding/ViewBinding;", "Landroid/os/Bundle;", "savedInstanceState", "", "onCreate", "Landroid/view/View;", "onCreateView", "onStart", "onDestroy", "a", "Landroidx/viewbinding/ViewBinding;", "_binding", "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;", "X", "()Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;", "position", "", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "()Z", "cancelable", "", ExifInterface.LONGITUDE_WEST, "()F", "dimAmount", "<init>", "()V", "Position", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class BaseDialogFragment<VB extends ViewBinding> extends DialogFragment {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private VB f52465a;

    /* compiled from: BaseDialogFragment.kt */
    @Metadata(d1 = {"\u0000\f\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0002\b\u0005\b\u0086\u0001\u0018\u00002\b\u0012\u0004\u0012\u00020\u00000\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002j\u0002\b\u0003j\u0002\b\u0004j\u0002\b\u0005¨\u0006\u0006"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;", "", "(Ljava/lang/String;I)V", "TOP", "CENTER", "BOTTOM", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public enum Position {
        TOP,
        CENTER,
        BOTTOM
    }

    /* compiled from: BaseDialogFragment.kt */
    @Metadata(k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public /* synthetic */ class a {
        public static final /* synthetic */ int[] $EnumSwitchMapping$0;

        static {
            int[] iArr = new int[Position.values().length];
            iArr[Position.BOTTOM.ordinal()] = 1;
            iArr[Position.CENTER.ordinal()] = 2;
            iArr[Position.TOP.ordinal()] = 3;
            $EnumSwitchMapping$0 = iArr;
        }
    }

    @m8.g
    public abstract VB U(@m8.g LayoutInflater layoutInflater, @m8.h ViewGroup viewGroup);

    protected abstract boolean V();

    protected abstract float W();

    @m8.g
    protected abstract Position X();

    @m8.g
    public final VB Y() {
        VB vb = this.f52465a;
        Intrinsics.checkNotNull(vb);
        return vb;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@m8.h Bundle bundle) {
        super.onCreate(bundle);
        int i4 = a.$EnumSwitchMapping$0[X().ordinal()];
        if (i4 == 1) {
            setStyle(1, R.style.BottomDialog);
        } else if (i4 == 2 || i4 == 3) {
            setStyle(1, R.style.CenterDialog);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @m8.h
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        Dialog dialog = getDialog();
        if (dialog != null) {
            Window window = dialog.getWindow();
            if (window != null) {
                window.requestFeature(1);
            }
            dialog.setCanceledOnTouchOutside(V());
            dialog.setCancelable(V());
        }
        this.f52465a = U(inflater, viewGroup);
        return Y().getRoot();
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        super.onDestroy();
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.dismiss();
        }
        this.f52465a = null;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        Window window;
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || (window = dialog.getWindow()) == null) {
            return;
        }
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.dimAmount = W();
        attributes.gravity = 17;
        window.setAttributes(attributes);
    }
}
