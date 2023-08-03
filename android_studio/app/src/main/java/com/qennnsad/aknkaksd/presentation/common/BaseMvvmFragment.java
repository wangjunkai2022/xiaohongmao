package com.qennnsad.aknkaksd.presentation.common;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import androidx.navigation.NavController;
import androidx.viewbinding.ViewBinding;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.data.bean.LiveSummary;
import com.qennnsad.aknkaksd.presentation.common.l;
import com.qennnsad.aknkaksd.presentation.ui.main.index.DistrictType;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity;
import com.qennnsad.aknkaksd.util.t;
import java.util.Arrays;
import kotlin.Lazy;
import kotlin.Metadata;
import kotlin.Triple;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;
import timber.log.Timber;

/* compiled from: BaseMvvmFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000x\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\u0004\b\u0001\u0010\u00032\u00020\u0004B\u0007¢\u0006\u0004\bC\u0010DJ\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\r\u0010\t\u001a\u00028\u0000¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000f\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH&¢\u0006\u0004\b\u000f\u0010\u0010J$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u0012\u0010\u0018\u001a\u00020\u00072\n\b\u0002\u0010\u0006\u001a\u0004\u0018\u00010\u0017J\u0006\u0010\u0019\u001a\u00020\u0007J\u0017\u0010\u001b\u001a\u00020\u00072\u0006\u0010\u001a\u001a\u00028\u0001H$¢\u0006\u0004\b\u001b\u0010\u001cJ\b\u0010\u001d\u001a\u00020\u0007H\u0016J\b\u0010\u001e\u001a\u00020\u0007H\u0016J\b\u0010 \u001a\u00020\u001fH\u0004J\b\u0010\"\u001a\u00020!H\u0004R$\u0010'\u001a\u0004\u0018\u00018\u00008\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b\u0019\u0010#\u001a\u0004\b$\u0010\n\"\u0004\b%\u0010&R\u0018\u0010+\u001a\u0004\u0018\u00010(8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b)\u0010*R\u001b\u00100\u001a\u00020,8DX\u0084\u0084\u0002¢\u0006\f\n\u0004\b\u001a\u0010-\u001a\u0004\b.\u0010/R\"\u00102\u001a\u0002018\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b2\u00103\u001a\u0004\b4\u00105\"\u0004\b6\u00107R\"\u00109\u001a\u0002088\u0006@\u0006X\u0087.¢\u0006\u0012\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<\"\u0004\b=\u0010>R\u001a\u0010B\u001a\b\u0012\u0004\u0012\u00028\u00010?8&X¦\u0004¢\u0006\u0006\u001a\u0004\b@\u0010A¨\u0006E"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/common/BaseMvvmFragment;", "Landroidx/viewbinding/ViewBinding;", "VB", "Event", "Landroidx/fragment/app/Fragment;", "Lcom/qennnsad/aknkaksd/presentation/common/l$a;", "msg", "", "s0", "m0", "()Landroidx/viewbinding/ViewBinding;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "l0", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "", "q0", "a", "e", "onEvent", "(Ljava/lang/Object;)V", "onResume", "onDestroyView", "Landroidx/navigation/NavController;", "c0", "", "f0", "Landroidx/viewbinding/ViewBinding;", "a0", "o0", "(Landroidx/viewbinding/ViewBinding;)V", "binding", "Lcom/qennnsad/aknkaksd/util/dialog/c;", "b", "Lcom/qennnsad/aknkaksd/util/dialog/c;", "loadingDialog", "Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;", "Lkotlin/Lazy;", "d0", "()Lcom/qennnsad/aknkaksd/presentation/common/SharedViewModel;", "sharedActivityViewModel", "Lg5/a;", "localDataManager", "Lg5/a;", "b0", "()Lg5/a;", "p0", "(Lg5/a;)V", "Lx4/a;", "analytics", "Lx4/a;", "Z", "()Lx4/a;", "n0", "(Lx4/a;)V", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "e0", "()Lcom/qennnsad/aknkaksd/presentation/common/l;", "viewModel", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class BaseMvvmFragment<VB extends ViewBinding, Event> extends Fragment {
    @m8.h

    /* renamed from: a */
    private VB f50865a;
    @m8.h

    /* renamed from: b */
    private com.qennnsad.aknkaksd.util.dialog.c f50866b;
    @u7.a

    /* renamed from: c */
    public g5.a f50867c;
    @u7.a

    /* renamed from: d */
    public x4.a f50868d;
    @m8.g

    /* renamed from: e */
    private final Lazy f50869e = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(SharedViewModel.class), new BaseMvvmFragment$special$$inlined$activityViewModels$default$1(this), new BaseMvvmFragment$special$$inlined$activityViewModels$default$2(null, this), new BaseMvvmFragment$special$$inlined$activityViewModels$default$3(this));

    public static final void g0(BaseMvvmFragment this$0, Integer it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        ((com.qennnsad.aknkaksd.presentation.ui.base.o) this$0).l(it.intValue());
    }

    public static final void h0(BaseMvvmFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        ((com.qennnsad.aknkaksd.presentation.ui.base.o) this$0).P(it.booleanValue());
    }

    public static final void i0(BaseMvvmFragment this$0, t tVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        l.a aVar = (l.a) tVar.a();
        if (aVar != null) {
            this$0.s0(aVar);
        }
    }

    /* JADX WARN: Multi-variable type inference failed */
    public static final void j0(BaseMvvmFragment this$0, t tVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Object a10 = tVar.a();
        if (a10 != null) {
            this$0.onEvent(a10);
        }
    }

    public static final void k0(BaseMvvmFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        if (it.booleanValue()) {
            r0(this$0, null, 1, null);
        } else {
            this$0.a();
        }
    }

    public static /* synthetic */ void r0(BaseMvvmFragment baseMvvmFragment, String str, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: showLoadingDialog");
        }
        if ((i4 & 1) != 0) {
            str = null;
        }
        baseMvvmFragment.q0(str);
    }

    private final void s0(l.a aVar) {
        if (aVar instanceof l.a.c) {
            l.a.c cVar = (l.a.c) aVar;
            int b10 = cVar.b();
            Object[] a10 = cVar.a();
            com.qennnsad.aknkaksd.util.toast.a.n(getString(b10, Arrays.copyOf(a10, a10.length)), false, 2, null);
        } else if (aVar instanceof l.a.d) {
            com.qennnsad.aknkaksd.util.toast.a.n(((l.a.d) aVar).a(), false, 2, null);
        } else if (aVar instanceof l.a.C0412a) {
            com.qennnsad.aknkaksd.util.toast.a.f(((l.a.C0412a) aVar).a(), false, 2, null);
        } else if (aVar instanceof l.a.b) {
            l.a.b bVar = (l.a.b) aVar;
            int b11 = bVar.b();
            Object[] a11 = bVar.a();
            com.qennnsad.aknkaksd.util.toast.a.f(getString(b11, Arrays.copyOf(a11, a11.length)), false, 2, null);
        }
    }

    @m8.g
    public final x4.a Z() {
        x4.a aVar = this.f50868d;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("analytics");
        return null;
    }

    public final void a() {
        com.qennnsad.aknkaksd.util.dialog.c cVar = this.f50866b;
        if (cVar != null) {
            cVar.dismiss();
        }
        this.f50866b = null;
    }

    @m8.h
    public final VB a0() {
        return this.f50865a;
    }

    @m8.g
    public final g5.a b0() {
        g5.a aVar = this.f50867c;
        if (aVar != null) {
            return aVar;
        }
        Intrinsics.throwUninitializedPropertyAccessException("localDataManager");
        return null;
    }

    @m8.g
    public final NavController c0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity<*>");
        return ((BaseMvvmActivity) requireActivity).M();
    }

    @m8.g
    public final SharedViewModel d0() {
        return (SharedViewModel) this.f50869e.getValue();
    }

    @m8.g
    public abstract l<Event> e0();

    public final boolean f0() {
        return (isRemoving() || getActivity() == null || isDetached() || !isAdded() || getView() == null) ? false : true;
    }

    @m8.g
    public abstract VB l0(@m8.g LayoutInflater layoutInflater, @m8.h ViewGroup viewGroup);

    @m8.g
    public final VB m0() {
        VB vb = this.f50865a;
        Intrinsics.checkNotNull(vb);
        return vb;
    }

    public final void n0(@m8.g x4.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f50868d = aVar;
    }

    protected final void o0(@m8.h VB vb) {
        this.f50865a = vb;
    }

    @Override // androidx.fragment.app.Fragment
    @m8.g
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        VB l02 = l0(inflater, viewGroup);
        this.f50865a = l02;
        if (this instanceof com.qennnsad.aknkaksd.presentation.ui.base.o) {
            d0().C().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.common.j
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    BaseMvvmFragment.g0(BaseMvvmFragment.this, (Integer) obj);
                }
            });
            d0().D().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.common.i
                @Override // androidx.lifecycle.Observer
                public final void onChanged(Object obj) {
                    BaseMvvmFragment.h0(BaseMvvmFragment.this, (Boolean) obj);
                }
            });
        }
        View root = l02.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "provideBinding(inflater,…         }\n        }.root");
        return root;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f50865a = null;
    }

    protected abstract void onEvent(Event event);

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        Timber.b bVar = Timber.f93860a;
        bVar.a("Fragment Resumed: " + getClass().getSimpleName(), new Object[0]);
        if (this instanceof com.qennnsad.aknkaksd.presentation.ui.base.o) {
            if (BaseBeautyApplication.gameCenterPointsRefreshPending) {
                d0().M();
                BaseBeautyApplication.a aVar = BaseBeautyApplication.Companion;
                BaseBeautyApplication.gameCenterPointsRefreshPending = false;
            } else {
                ((com.qennnsad.aknkaksd.presentation.ui.base.o) this).P(Intrinsics.areEqual(d0().D().getValue(), Boolean.TRUE));
            }
            Triple<Boolean, LiveSummary, DistrictType> l10 = b0().l();
            if (l10.getFirst().booleanValue()) {
                b0().e0(new Triple<>(Boolean.FALSE, l10.getSecond(), l10.getThird()));
                FragmentActivity requireActivity = requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                com.qennnsad.aknkaksd.util.l.u(requireActivity, b0());
            } else if (l10.getSecond() != null) {
                PlayerActivity.a aVar2 = PlayerActivity.f53641e3;
                FragmentActivity requireActivity2 = requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity2, "requireActivity()");
                LiveSummary second = l10.getSecond();
                Intrinsics.checkNotNull(second);
                DistrictType third = l10.getThird();
                Intrinsics.checkNotNull(third);
                aVar2.b(requireActivity2, second, third);
                b0().M();
            }
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        e0().f().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.common.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseMvvmFragment.i0(BaseMvvmFragment.this, (t) obj);
            }
        });
        e0().c().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.common.f
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseMvvmFragment.j0(BaseMvvmFragment.this, (t) obj);
            }
        });
        e0().d().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.common.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                BaseMvvmFragment.k0(BaseMvvmFragment.this, (Boolean) obj);
            }
        });
    }

    public final void p0(@m8.g g5.a aVar) {
        Intrinsics.checkNotNullParameter(aVar, "<set-?>");
        this.f50867c = aVar;
    }

    public final void q0(@m8.h String str) {
        com.qennnsad.aknkaksd.util.dialog.c cVar = this.f50866b;
        if (cVar != null) {
            cVar.dismiss();
        }
        com.qennnsad.aknkaksd.util.dialog.c cVar2 = new com.qennnsad.aknkaksd.util.dialog.c(requireActivity(), str);
        this.f50866b = cVar2;
        cVar2.show();
    }
}
