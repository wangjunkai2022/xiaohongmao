package com.qennnsad.aknkaksd.presentation.ui.main.setting;

import android.app.AlertDialog;
import android.content.DialogInterface;
import android.os.Bundle;
import android.text.Editable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.navigation.fragment.FragmentKt;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.module.auth.AuthActivity;
import com.qennnsad.aknkaksd.presentation.ui.main.setting.n;
import com.qennnsad.aknkaksd.util.s1;
import e5.m1;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: ModifyPasswordFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000:\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\b\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0003H\u0014R\u001b\u0010\u0017\u001a\u00020\u00128VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016¨\u0006\u001a"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/m1;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/n;", "", "z0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "C0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "e", "A0", "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;", "k", "Lkotlin/Lazy;", "y0", "()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/ModifyPasswordViewModel;", "viewModel", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class ModifyPasswordFragment extends l<m1, n> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f53158k;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ModifyPasswordFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function0<Unit> {
        a() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            AuthActivity.a aVar = AuthActivity.f50991k;
            FragmentActivity requireActivity = ModifyPasswordFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            AuthActivity.a.d(aVar, requireActivity, Integer.valueOf((int) R.id.findPassFragment), false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ModifyPasswordFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ m1 f53167a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ ModifyPasswordFragment f53168b;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        b(m1 m1Var, ModifyPasswordFragment modifyPasswordFragment) {
            super(0);
            this.f53167a = m1Var;
            this.f53168b = modifyPasswordFragment;
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            String str;
            String str2;
            String str3;
            String obj;
            CharSequence trim;
            String obj2;
            CharSequence trim2;
            String obj3;
            CharSequence trim3;
            Editable text = this.f53167a.f62731d.getText();
            if (text == null || (obj3 = text.toString()) == null) {
                str = null;
            } else {
                trim3 = StringsKt__StringsKt.trim((CharSequence) obj3);
                str = trim3.toString();
            }
            Editable text2 = this.f53167a.f62730c.getText();
            if (text2 == null || (obj2 = text2.toString()) == null) {
                str2 = null;
            } else {
                trim2 = StringsKt__StringsKt.trim((CharSequence) obj2);
                str2 = trim2.toString();
            }
            Editable text3 = this.f53167a.f62729b.getText();
            if (text3 == null || (obj = text3.toString()) == null) {
                str3 = null;
            } else {
                trim = StringsKt__StringsKt.trim((CharSequence) obj);
                str3 = trim.toString();
            }
            boolean z9 = true;
            if (!(str == null || str.length() == 0)) {
                if (!(str2 == null || str2.length() == 0)) {
                    if (str3 != null && str3.length() != 0) {
                        z9 = false;
                    }
                    if (!z9) {
                        if (!Intrinsics.areEqual(str2, str3)) {
                            com.qennnsad.aknkaksd.util.toast.a.n("密码不匹配 请重新输入", false, 2, null);
                            return;
                        } else {
                            this.f53168b.e0().s(str, str2);
                            return;
                        }
                    }
                }
            }
            com.qennnsad.aknkaksd.util.toast.a.n("输入不能为空", false, 2, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ModifyPasswordFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class c extends Lambda implements Function0<Unit> {
        c() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            FragmentActivity requireActivity = ModifyPasswordFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.d0(requireActivity, ModifyPasswordFragment.this.b0());
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ModifyPasswordFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class d extends Lambda implements Function0<Unit> {
        d() {
            super(0);
        }

        @Override // kotlin.jvm.functions.Function0
        public /* bridge */ /* synthetic */ Unit invoke() {
            invoke2();
            return Unit.INSTANCE;
        }

        @Override // kotlin.jvm.functions.Function0
        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2() {
            FragmentKt.findNavController(ModifyPasswordFragment.this).navigateUp();
        }
    }

    public ModifyPasswordFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new ModifyPasswordFragment$special$$inlined$viewModels$default$2(new ModifyPasswordFragment$special$$inlined$viewModels$default$1(this)));
        this.f53158k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(ModifyPasswordViewModel.class), new ModifyPasswordFragment$special$$inlined$viewModels$default$3(lazy), new ModifyPasswordFragment$special$$inlined$viewModels$default$4(null, lazy), new ModifyPasswordFragment$special$$inlined$viewModels$default$5(this, lazy));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(ModifyPasswordFragment this$0, DialogInterface dialogInterface, int i4) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        AuthActivity.a aVar = AuthActivity.f50991k;
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        AuthActivity.a.d(aVar, requireActivity, null, false, 3, null);
    }

    private final void z0() {
        m1 m1Var = (m1) m0();
        TextView tvRecoverPassword = m1Var.f62739l;
        Intrinsics.checkNotNullExpressionValue(tvRecoverPassword, "tvRecoverPassword");
        tvRecoverPassword.setVisibility(0);
        TextView tvRecoverPassword2 = m1Var.f62739l;
        Intrinsics.checkNotNullExpressionValue(tvRecoverPassword2, "tvRecoverPassword");
        s1.U(tvRecoverPassword2, 0L, new a(), 1, null);
        TextView tvModifyPassword = m1Var.f62738k;
        Intrinsics.checkNotNullExpressionValue(tvModifyPassword, "tvModifyPassword");
        s1.U(tvModifyPassword, 0L, new b(m1Var, this), 1, null);
        TextView tvCustomerSupport = m1Var.f62737j;
        Intrinsics.checkNotNullExpressionValue(tvCustomerSupport, "tvCustomerSupport");
        s1.U(tvCustomerSupport, 0L, new c(), 1, null);
        ImageButton imgbtnToolbarBack = m1Var.f62732e;
        Intrinsics.checkNotNullExpressionValue(imgbtnToolbarBack, "imgbtnToolbarBack");
        s1.U(imgbtnToolbarBack, 0L, new d(), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: A0 */
    public void onEvent(@m8.g n e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
        if (Intrinsics.areEqual(e4, n.a.f53234a)) {
            new AlertDialog.Builder(requireContext()).setTitle("提示").setMessage("修改密码成功").setPositiveButton("确定", new DialogInterface.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.setting.o
                @Override // android.content.DialogInterface.OnClickListener
                public final void onClick(DialogInterface dialogInterface, int i4) {
                    ModifyPasswordFragment.B0(ModifyPasswordFragment.this, dialogInterface, i4);
                }
            }).show();
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: C0 */
    public m1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        m1 d4 = m1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        z0();
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: y0 */
    public ModifyPasswordViewModel e0() {
        return (ModifyPasswordViewModel) this.f53158k.getValue();
    }
}
