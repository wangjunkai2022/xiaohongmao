package com.qennnsad.aknkaksd.presentation.ui.main.setting;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import androidx.navigation.fragment.FragmentKt;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.util.s1;
import e5.y0;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.jvm.internal.Reflection;

/* compiled from: BlacklistFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0006\b\u0007\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b\u001c\u0010\u001dJ\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u001a\u0010\n\u001a\u00020\u00022\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH\u0016J\u001a\u0010\u000f\u001a\u00020\u00042\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\u0010\u0010\u0011\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u0003H\u0014R\u001b\u0010\u0017\u001a\u00020\u00128VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0013\u0010\u0014\u001a\u0004\b\u0015\u0010\u0016R\u0016\u0010\u001b\u001a\u00020\u00188\u0002@\u0002X\u0082.¢\u0006\u0006\n\u0004\b\u0019\u0010\u001a¨\u0006\u001e"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Le5/y0;", "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/c;", "", "z0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "C0", "Landroid/view/View;", "view", "Landroid/os/Bundle;", "savedInstanceState", "onViewCreated", "e", "A0", "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;", "k", "Lkotlin/Lazy;", "y0", "()Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/BlacklistViewModel;", "viewModel", "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a;", "l", "Lcom/qennnsad/aknkaksd/presentation/ui/main/setting/a;", "adapter", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class BlacklistFragment extends k<y0, c> {
    @m8.g

    /* renamed from: k  reason: collision with root package name */
    private final Lazy f53138k;

    /* renamed from: l  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.ui.main.setting.a f53139l;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BlacklistFragment.kt */
    @Metadata(d1 = {"\u0000\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\u0010\u0000\u001a\u00020\u00012\u0006\u0010\u0002\u001a\u00020\u0003H\n¢\u0006\u0002\b\u0004"}, d2 = {"<anonymous>", "", "it", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class a extends Lambda implements Function1<String, Unit> {

        /* JADX INFO: Access modifiers changed from: package-private */
        /* compiled from: BlacklistFragment.kt */
        @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
        /* renamed from: com.qennnsad.aknkaksd.presentation.ui.main.setting.BlacklistFragment$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        public static final class C0439a extends Lambda implements Function0<Unit> {

            /* renamed from: a  reason: collision with root package name */
            final /* synthetic */ BlacklistFragment f53148a;

            /* renamed from: b  reason: collision with root package name */
            final /* synthetic */ String f53149b;

            /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
            C0439a(BlacklistFragment blacklistFragment, String str) {
                super(0);
                this.f53148a = blacklistFragment;
                this.f53149b = str;
            }

            @Override // kotlin.jvm.functions.Function0
            public /* bridge */ /* synthetic */ Unit invoke() {
                invoke2();
                return Unit.INSTANCE;
            }

            @Override // kotlin.jvm.functions.Function0
            /* renamed from: invoke  reason: avoid collision after fix types in other method */
            public final void invoke2() {
                this.f53148a.e0().u(this.f53149b);
            }
        }

        a() {
            super(1);
        }

        @Override // kotlin.jvm.functions.Function1
        public /* bridge */ /* synthetic */ Unit invoke(String str) {
            invoke2(str);
            return Unit.INSTANCE;
        }

        /* renamed from: invoke  reason: avoid collision after fix types in other method */
        public final void invoke2(@m8.g String it) {
            Intrinsics.checkNotNullParameter(it, "it");
            FragmentActivity requireActivity = BlacklistFragment.this.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.qennnsad.aknkaksd.util.l.P(requireActivity, BlacklistFragment.this.getString(R.string.dialog_blacklist_confirmation_title), BlacklistFragment.this.getString(R.string.dialog_blacklist_confirmation_message), null, null, null, new C0439a(BlacklistFragment.this, it), 28, null);
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: BlacklistFragment.kt */
    @Metadata(d1 = {"\u0000\b\n\u0000\n\u0002\u0010\u0002\n\u0000\u0010\u0000\u001a\u00020\u0001H\n¢\u0006\u0002\b\u0002"}, d2 = {"<anonymous>", "", "invoke"}, k = 3, mv = {1, 7, 1}, xi = 48)
    /* loaded from: classes3.dex */
    public static final class b extends Lambda implements Function0<Unit> {
        b() {
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
            FragmentKt.findNavController(BlacklistFragment.this).navigateUp();
        }
    }

    public BlacklistFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new BlacklistFragment$special$$inlined$viewModels$default$2(new BlacklistFragment$special$$inlined$viewModels$default$1(this)));
        this.f53138k = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(BlacklistViewModel.class), new BlacklistFragment$special$$inlined$viewModels$default$3(lazy), new BlacklistFragment$special$$inlined$viewModels$default$4(null, lazy), new BlacklistFragment$special$$inlined$viewModels$default$5(this, lazy));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void B0(BlacklistFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.qennnsad.aknkaksd.presentation.ui.main.setting.a aVar = this$0.f53139l;
        if (aVar == null) {
            Intrinsics.throwUninitializedPropertyAccessException("adapter");
            aVar = null;
        }
        if (list == null) {
            return;
        }
        aVar.submitList(list);
        TextView textView = ((y0) this$0.m0()).f63352e;
        Intrinsics.checkNotNullExpressionValue(textView, "requireBinding().tvEmptyList");
        textView.setVisibility(list.isEmpty() ? 0 : 8);
    }

    private final void z0() {
        y0 y0Var = (y0) m0();
        RecyclerView recyclerView = y0Var.f63349b;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        com.qennnsad.aknkaksd.presentation.ui.main.setting.a aVar = new com.qennnsad.aknkaksd.presentation.ui.main.setting.a(e0().t());
        aVar.g(new a());
        this.f53139l = aVar;
        recyclerView.setAdapter(aVar);
        ImageButton imgbtnToolbarBack = y0Var.f63350c;
        Intrinsics.checkNotNullExpressionValue(imgbtnToolbarBack, "imgbtnToolbarBack");
        s1.U(imgbtnToolbarBack, 0L, new b(), 1, null);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    /* renamed from: A0 */
    public void onEvent(@m8.g c e4) {
        Intrinsics.checkNotNullParameter(e4, "e");
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: C0 */
    public y0 l0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        y0 d4 = y0.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        z0();
        e0().s().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.ui.main.setting.d
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BlacklistFragment.B0(BlacklistFragment.this, (List) obj);
            }
        });
    }

    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmFragment
    @m8.g
    /* renamed from: y0 */
    public BlacklistViewModel e0() {
        return (BlacklistViewModel) this.f53138k.getValue();
    }
}
