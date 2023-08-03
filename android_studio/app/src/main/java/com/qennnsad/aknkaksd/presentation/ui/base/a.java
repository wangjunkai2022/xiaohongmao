package com.qennnsad.aknkaksd.presentation.ui.base;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.LayoutRes;
import androidx.annotation.StringRes;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentActivity;
import com.didi.live.spring.R;
import com.google.android.material.bottomsheet.BottomSheetBehavior;
import com.google.android.material.bottomsheet.BottomSheetDialogFragment;
import com.qennnsad.aknkaksd.presentation.ui.base.e;
import com.qennnsad.aknkaksd.presentation.ui.base.n;
import com.qennnsad.aknkaksd.util.o0;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;

/* compiled from: BaseBottomSheetFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000^\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\b\n\u0002\b\u001d\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\u000e\b\u0001\u0010\u0004*\b\u0012\u0004\u0012\u00028\u00000\u00032\u00020\u00052\u00020\u0001B\u0007¢\u0006\u0004\bA\u0010BJ\u0010\u0010\t\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u0006H$J\u0012\u0010\f\u001a\u00020\b2\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\b\u0010\u000e\u001a\u00020\rH\u0016J\b\u0010\u000f\u001a\u00020\bH\u0016J\u001a\u0010\u0010\u001a\u00020\b2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J&\u0010\u0015\u001a\u0004\u0018\u00010\u00062\u0006\u0010\u0012\u001a\u00020\u00112\b\u0010\u0014\u001a\u0004\u0018\u00010\u00132\b\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u001a\u0010\u0019\u001a\u00020\b2\u0006\u0010\u0017\u001a\u00020\u00162\b\b\u0002\u0010\u0018\u001a\u00020\u0016H\u0004J\u0012\u0010\u001c\u001a\u00020\b2\b\u0010\u001b\u001a\u0004\u0018\u00010\u001aH\u0016J\u0012\u0010\u001e\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001aH\u0016J\b\u0010\u001f\u001a\u00020\bH\u0016J\b\u0010 \u001a\u00020\bH\u0016J\b\u0010!\u001a\u00020\bH\u0016J\n\u0010#\u001a\u0004\u0018\u00010\"H\u0016J\u0014\u0010$\u001a\u0004\u0018\u00010\"2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001aH\u0016J\b\u0010%\u001a\u00020\bH\u0016J\u0012\u0010'\u001a\u00020\b2\b\b\u0001\u0010\u001d\u001a\u00020&H\u0004J\u0012\u0010(\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001aH\u0004J\u0012\u0010)\u001a\u00020\b2\b\b\u0001\u0010\u001d\u001a\u00020&H\u0004J\u0012\u0010*\u001a\u00020\b2\b\u0010\u001d\u001a\u0004\u0018\u00010\u001aH\u0004R\u001a\u0010.\u001a\u00020\u001a8\u0004X\u0084\u0004¢\u0006\f\n\u0004\b%\u0010+\u001a\u0004\b,\u0010-R\u0018\u00100\u001a\u0004\u0018\u00010\"8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u000e\u0010/R\u001b\u00104\u001a\u00028\u00018DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b#\u00101\u001a\u0004\b2\u00103R\u0014\u00107\u001a\u00020\u00168TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b5\u00106R\u0014\u00109\u001a\u00020\u00168TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b8\u00106R\u0014\u0010;\u001a\u00020\u00168TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b:\u00106R\u0014\u0010=\u001a\u00020\u00168TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b<\u00106R\u0014\u0010@\u001a\u00020&8eX¤\u0004¢\u0006\u0006\u001a\u0004\b>\u0010?¨\u0006C"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/base/a;", "Lcom/qennnsad/aknkaksd/presentation/ui/base/n;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lcom/qennnsad/aknkaksd/presentation/ui/base/e;", "P", "Lcom/google/android/material/bottomsheet/BottomSheetDialogFragment;", "Landroid/view/View;", "view", "", "c0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroid/content/Context;", "b", "onDetach", "onViewCreated", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "onCreateView", "", "expand", org.aspectj.lang.c.f91028k, "U", "", "url", "v", "msg", "r", "n", "C", "K", "Landroid/app/Dialog;", "c", "p", "a", "", "g0", "h0", "e0", "f0", "Ljava/lang/String;", ExifInterface.LONGITUDE_WEST, "()Ljava/lang/String;", "LOG_TAG", "Landroid/app/Dialog;", "mLoadingDialog", "Lkotlin/Lazy;", "Y", "()Lcom/qennnsad/aknkaksd/presentation/ui/base/e;", "presenter", "a0", "()Z", "shouldExpand", "b0", "shouldLock", "Z", "shouldCancel", "d0", "isRounded", "X", "()I", "layoutId", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class a<V extends n, P extends e<V>> extends BottomSheetDialogFragment implements n {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final String f52485a;
    @m8.h

    /* renamed from: b  reason: collision with root package name */
    private Dialog f52486b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f52487c;

    /* compiled from: BaseBottomSheetFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u000e\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\u0010\u0004\u001a\u00028\u0001\"\b\b\u0000\u0010\u0001*\u00020\u0000\"\u000e\b\u0001\u0010\u0003*\b\u0012\u0004\u0012\u00028\u00000\u0002H\n¢\u0006\u0004\b\u0004\u0010\u0005"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/base/n;", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "Lcom/qennnsad/aknkaksd/presentation/ui/base/e;", "P", "a", "()Lcom/qennnsad/aknkaksd/presentation/ui/base/e;"}, k = 3, mv = {1, 7, 1})
    /* renamed from: com.qennnsad.aknkaksd.presentation.ui.base.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    static final class C0430a extends Lambda implements Function0<P> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a<V, P> f52488a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        C0430a(a<V, P> aVar) {
            super(0);
            this.f52488a = aVar;
        }

        @Override // kotlin.jvm.functions.Function0
        @m8.g
        /* renamed from: a */
        public final P invoke() {
            a<V, P> aVar = this.f52488a;
            return (P) r.a(aVar, aVar);
        }
    }

    public a() {
        Lazy lazy;
        String simpleName = getClass().getSimpleName();
        Intrinsics.checkNotNullExpressionValue(simpleName, "javaClass.simpleName");
        this.f52485a = simpleName;
        lazy = LazyKt__LazyJVMKt.lazy(new C0430a(this));
        this.f52487c = lazy;
    }

    public static /* synthetic */ void V(a aVar, boolean z9, boolean z10, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: expandFragment");
        }
        if ((i4 & 2) != 0) {
            z10 = false;
        }
        aVar.U(z9, z10);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void C() {
        e0(R.string.msg_unknown_error);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void K() {
    }

    protected final void U(boolean z9, boolean z10) {
        View findViewById;
        Dialog dialog = getDialog();
        if (dialog == null || (findViewById = dialog.findViewById(R.id.design_bottom_sheet)) == null) {
            return;
        }
        ViewGroup.LayoutParams layoutParams = findViewById.getLayoutParams();
        if (layoutParams != null) {
            layoutParams.height = z9 ? -1 : -2;
        }
        BottomSheetBehavior from = BottomSheetBehavior.from(findViewById);
        if (z9) {
            from.setState(3);
        } else {
            from.setState(4);
        }
        from.setDraggable(!z10);
    }

    @m8.g
    protected final String W() {
        return this.f52485a;
    }

    @LayoutRes
    protected abstract int X();

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final P Y() {
        return (P) this.f52487c.getValue();
    }

    protected boolean Z() {
        return false;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void a() {
        Dialog dialog = this.f52486b;
        if (dialog != null) {
            Intrinsics.checkNotNull(dialog);
            if (dialog.isShowing()) {
                Dialog dialog2 = this.f52486b;
                Intrinsics.checkNotNull(dialog2);
                dialog2.dismiss();
                this.f52486b = null;
                return;
            }
        }
        o0.n(this.f52485a, "Try to dismiss a dialog but dialog is null or already dismiss!");
    }

    protected boolean a0() {
        return true;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    @m8.g
    public Context b() {
        Context applicationContext = requireContext().getApplicationContext();
        Intrinsics.checkNotNullExpressionValue(applicationContext, "requireContext().applicationContext");
        return applicationContext;
    }

    protected boolean b0() {
        return true;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    @m8.h
    public Dialog c() {
        Dialog dialog = this.f52486b;
        if (dialog != null) {
            Intrinsics.checkNotNull(dialog);
            if (dialog.isShowing()) {
                Dialog dialog2 = this.f52486b;
                Intrinsics.checkNotNull(dialog2);
                dialog2.dismiss();
            }
        }
        if (getActivity() != null && !requireActivity().isFinishing()) {
            com.qennnsad.aknkaksd.util.dialog.c cVar = new com.qennnsad.aknkaksd.util.dialog.c(requireActivity());
            this.f52486b = cVar;
            cVar.setCanceledOnTouchOutside(false);
            Dialog dialog3 = this.f52486b;
            if (dialog3 != null) {
                dialog3.show();
            }
        }
        return this.f52486b;
    }

    protected abstract void c0(@m8.g View view);

    protected boolean d0() {
        return false;
    }

    protected final void e0(@StringRes int i4) {
        if (getActivity() != null) {
            com.qennnsad.aknkaksd.util.toast.a.e(i4, false, 2, null);
        }
    }

    protected final void f0(@m8.h String str) {
        if (getActivity() != null) {
            com.qennnsad.aknkaksd.util.toast.a.f(str, false, 2, null);
        }
    }

    protected final void g0(@StringRes int i4) {
        if (getActivity() != null) {
            com.qennnsad.aknkaksd.util.toast.a.m(i4, false, 2, null);
        }
    }

    protected final void h0(@m8.h String str) {
        if (getActivity() != null) {
            com.qennnsad.aknkaksd.util.toast.a.n(str, false, 2, null);
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void n() {
        e0(R.string.msg_network_error);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@m8.h Bundle bundle) {
        super.onCreate(bundle);
        if (d0()) {
            setStyle(0, R.style.BottomSheetDialog);
        }
    }

    @Override // androidx.fragment.app.Fragment
    @m8.h
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        return inflater.inflate(X(), viewGroup, false);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDetach() {
        Y().a();
        super.onDetach();
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        U(a0(), b0());
        setCancelable(Z());
        c0(view);
        super.onViewCreated(view, bundle);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    @m8.h
    public Dialog p(@m8.h String str) {
        if (requireActivity().isFinishing()) {
            return null;
        }
        Dialog dialog = this.f52486b;
        if (dialog != null) {
            Intrinsics.checkNotNull(dialog);
            if (dialog.isShowing()) {
                Dialog dialog2 = this.f52486b;
                Intrinsics.checkNotNull(dialog2);
                dialog2.dismiss();
            }
        }
        com.qennnsad.aknkaksd.util.dialog.c cVar = new com.qennnsad.aknkaksd.util.dialog.c(requireActivity(), str);
        this.f52486b = cVar;
        cVar.show();
        return this.f52486b;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void r(@m8.h String str) {
        f0(str);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void v(@m8.h String str) {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity<*>");
        ((BaseStreamActivity) requireActivity).v(str);
    }
}
