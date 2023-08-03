package com.qennnsad.aknkaksd.presentation.module.auth.signup;

import android.content.Context;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.content.ContextCompat;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.navigation.fragment.FragmentKt;
import com.didi.live.spring.R;
import com.google.android.material.textfield.TextInputLayout;
import com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment;
import com.qennnsad.aknkaksd.presentation.module.auth.signup.h;
import com.qennnsad.aknkaksd.presentation.module.main.webview.SimpleWebViewActivity;
import com.qennnsad.aknkaksd.presentation.ui.MainContainerActivity;
import com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText;
import com.qennnsad.aknkaksd.util.i1;
import e5.g1;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt___CollectionsKt;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: FinishSignUpFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b)\u0010*J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\u001a\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J\u001a\u0010\u0012\u001a\u00020\u00042\u0006\u0010\u000f\u001a\u00020\u000e2\b\u0010\u0011\u001a\u0004\u0018\u00010\u0010H\u0016J\b\u0010\u0013\u001a\u00020\u0004H\u0016J\b\u0010\u0014\u001a\u00020\u0004H\u0016J\u0010\u0010\u0016\u001a\u00020\u00042\u0006\u0010\u0015\u001a\u00020\u0003H\u0014R\u001b\u0010\u001c\u001a\u00020\u00178VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\u0016\u0010 \u001a\u00020\u001d8\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u001e\u0010\u001fR\u0014\u0010$\u001a\u00020!8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#R\u0014\u0010&\u001a\u00020!8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b%\u0010#R\u0014\u0010(\u001a\u00020!8BX\u0082\u0004¢\u0006\u0006\u001a\u0004\b'\u0010#¨\u0006+"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/FinishSignUpFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/g1;", "Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/h;", "", "F0", "N0", "O0", "D0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "M0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "onResume", "onDestroyView", "e", "L0", "Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;", "f", "Lkotlin/Lazy;", "C0", "()Lcom/qennnsad/aknkaksd/presentation/module/auth/signup/SignUpViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/util/i1;", "g", "Lcom/qennnsad/aknkaksd/util/i1;", "sensorUtils", "", "z0", "()Ljava/lang/String;", "nickname", "A0", "password", "B0", "repeatedPassword", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class FinishSignUpFragment extends BaseMvvmFragment<g1, h> {
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final Lazy f51210f;

    /* renamed from: g  reason: collision with root package name */
    private i1 f51211g;

    public FinishSignUpFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(new FinishSignUpFragment$special$$inlined$hiltNavGraphViewModels$1(this, R.id.signUpNavigation));
        this.f51210f = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(SignUpViewModel.class), new FinishSignUpFragment$special$$inlined$hiltNavGraphViewModels$2(lazy, null), new FinishSignUpFragment$special$$inlined$hiltNavGraphViewModels$3(this, lazy, null));
    }

    private final String A0() {
        CharSequence trim;
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(m0().f62446i.getText()));
        return trim.toString();
    }

    private final String B0() {
        CharSequence trim;
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(m0().f62447j.getText()));
        return trim.toString();
    }

    private final void D0() {
        Toolbar toolbar = m0().f62451n;
        Intrinsics.checkNotNullExpressionValue(toolbar, "requireBinding().registerToolbar");
        int color = ContextCompat.getColor(requireContext(), R.color.colorSecondaryText);
        Drawable navigationIcon = toolbar.getNavigationIcon();
        if (navigationIcon != null) {
            navigationIcon.setTint(color);
        }
        AppCompatActivity a10 = com.qennnsad.aknkaksd.util.extentions.a.a(this);
        if (a10 != null) {
            a10.setSupportActionBar(toolbar);
        }
        m0().f62451n.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.signup.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FinishSignUpFragment.E0(FinishSignUpFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(FinishSignUpFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentKt.findNavController(this$0).navigateUp();
    }

    private final void F0() {
        g1 m02 = m0();
        m02.f62445h.setOneKeyClearOnFocusChangeListener(new OneKeyClearEditText.c() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.signup.e
            @Override // com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText.c
            public final void onFocusChange(View view, boolean z9) {
                FinishSignUpFragment.G0(FinishSignUpFragment.this, view, z9);
            }
        });
        m02.f62446i.setOneKeyClearOnFocusChangeListener(new OneKeyClearEditText.c() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.signup.d
            @Override // com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText.c
            public final void onFocusChange(View view, boolean z9) {
                FinishSignUpFragment.H0(FinishSignUpFragment.this, view, z9);
            }
        });
        m02.f62447j.setOneKeyClearOnFocusChangeListener(new OneKeyClearEditText.c() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.signup.f
            @Override // com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText.c
            public final void onFocusChange(View view, boolean z9) {
                FinishSignUpFragment.I0(FinishSignUpFragment.this, view, z9);
            }
        });
        m02.f62439b.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.signup.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FinishSignUpFragment.J0(FinishSignUpFragment.this, view);
            }
        });
        m02.f62444g.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.signup.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                FinishSignUpFragment.K0(FinishSignUpFragment.this, view);
            }
        });
        Bundle arguments = getArguments();
        if (arguments != null) {
            boolean c10 = g.fromBundle(arguments).c();
            TextView newAccountDisclaimer = m02.f62443f;
            Intrinsics.checkNotNullExpressionValue(newAccountDisclaimer, "newAccountDisclaimer");
            newAccountDisclaimer.setVisibility(c10 ^ true ? 0 : 8);
            TextInputLayout registerNickInputlayout = m02.f62448k;
            Intrinsics.checkNotNullExpressionValue(registerNickInputlayout, "registerNickInputlayout");
            registerNickInputlayout.setVisibility(c10 ^ true ? 0 : 8);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(FinishSignUpFragment this$0, View view, boolean z9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z9) {
            this$0.m0().f62448k.setError(null);
        } else {
            this$0.N0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void H0(FinishSignUpFragment this$0, View view, boolean z9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z9) {
            this$0.m0().f62449l.setError(null);
        } else {
            this$0.O0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0(FinishSignUpFragment this$0, View view, boolean z9) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (z9) {
            this$0.m0().f62450m.setError(null);
        } else {
            this$0.O0();
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(FinishSignUpFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SimpleWebViewActivity.a aVar = SimpleWebViewActivity.f52046l;
        Context requireContext = this$0.requireContext();
        Intrinsics.checkNotNullExpressionValue(requireContext, "requireContext()");
        SimpleWebViewActivity.a.d(aVar, requireContext, this$0.e0().z(), false, false, 6, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(FinishSignUpFragment this$0, View view) {
        Object lastOrNull;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        SignUpViewModel e02 = this$0.e0();
        String z02 = this$0.z0();
        String A0 = this$0.A0();
        String B0 = this$0.B0();
        i1 i1Var = this$0.f51211g;
        if (i1Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sensorUtils");
            i1Var = null;
        }
        List<Double> a10 = i1Var.a();
        Intrinsics.checkNotNullExpressionValue(a10, "sensorUtils.speed");
        lastOrNull = CollectionsKt___CollectionsKt.lastOrNull((List<? extends Object>) a10);
        Double d4 = (Double) lastOrNull;
        e02.G(z02, A0, B0, d4 != null ? d4.doubleValue() : 0.0d);
    }

    private final void N0() {
        m0().f62448k.setError(z0().length() == 0 ? getString(R.string.nickname_empty_error) : null);
    }

    private final void O0() {
        m0().f62449l.setError(A0().length() == 0 ? getString(R.string.password_empty_error) : null);
        m0().f62450m.setError(Intrinsics.areEqual(A0(), B0()) ? null : getString(R.string.passwords_not_match_error));
    }

    private final String z0() {
        CharSequence trim;
        String replace$default;
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(m0().f62445h.getText()));
        replace$default = StringsKt__StringsJVMKt.replace$default(trim.toString(), " ", "", false, 4, (Object) null);
        return replace$default;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: C0 */
    public SignUpViewModel e0() {
        return (SignUpViewModel) this.f51210f.getValue();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: L0 */
    public void onEvent(@m8.g h e4) {
        FragmentActivity activity;
        Intrinsics.checkNotNullParameter(e4, "e");
        if (!Intrinsics.areEqual(e4, h.c.f51270a) || (activity = getActivity()) == null) {
            return;
        }
        MainContainerActivity.f52459m.b(activity, false);
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: M0 */
    public g1 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        g1 d4 = g1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        i1 i1Var = this.f51211g;
        if (i1Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sensorUtils");
            i1Var = null;
        }
        i1Var.c();
        super.onDestroyView();
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        i1 i1Var = this.f51211g;
        if (i1Var == null) {
            Intrinsics.throwUninitializedPropertyAccessException("sensorUtils");
            i1Var = null;
        }
        i1Var.b();
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        e0().K();
        D0();
        F0();
        this.f51211g = new i1(requireContext().getApplicationContext());
    }
}
