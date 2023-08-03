package com.qennnsad.aknkaksd.presentation.common;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.DialogFragment;
import androidx.lifecycle.Observer;
import androidx.viewbinding.ViewBinding;
import com.qennnsad.aknkaksd.presentation.common.l;
import com.qennnsad.aknkaksd.util.t;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: BaseMvvmDialogFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000B\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\r\n\u0002\u0018\u0002\n\u0002\b\u0006\b&\u0018\u0000*\b\b\u0000\u0010\u0002*\u00020\u0001*\u0004\b\u0001\u0010\u00032\u00020\u0004B\u0007¢\u0006\u0004\b%\u0010&J\u0010\u0010\b\u001a\u00020\u00072\u0006\u0010\u0006\u001a\u00020\u0005H\u0002J\r\u0010\t\u001a\u00028\u0000¢\u0006\u0004\b\t\u0010\nJ!\u0010\u000f\u001a\u00028\u00002\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH&¢\u0006\u0004\b\u000f\u0010\u0010J$\u0010\u0014\u001a\u00020\u00132\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\r2\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u001a\u0010\u0016\u001a\u00020\u00072\u0006\u0010\u0015\u001a\u00020\u00132\b\u0010\u0012\u001a\u0004\u0018\u00010\u0011H\u0016J\u0017\u0010\u0018\u001a\u00020\u00072\u0006\u0010\u0017\u001a\u00028\u0001H$¢\u0006\u0004\b\u0018\u0010\u0019J\b\u0010\u001a\u001a\u00020\u0007H\u0016R$\u0010 \u001a\u0004\u0018\u00018\u00008\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001b\u0010\u001c\u001a\u0004\b\u001d\u0010\n\"\u0004\b\u001e\u0010\u001fR\u001a\u0010$\u001a\b\u0012\u0004\u0012\u00028\u00010!8&X¦\u0004¢\u0006\u0006\u001a\u0004\b\"\u0010#¨\u0006'"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/common/e;", "Landroidx/viewbinding/ViewBinding;", "VB", "Event", "Landroidx/fragment/app/DialogFragment;", "Lcom/qennnsad/aknkaksd/presentation/common/l$a;", "msg", "", "d0", "b0", "()Landroidx/viewbinding/ViewBinding;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "a0", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "view", "onViewCreated", "e", "onEvent", "(Ljava/lang/Object;)V", "onDestroyView", "a", "Landroidx/viewbinding/ViewBinding;", ExifInterface.LONGITUDE_WEST, "c0", "(Landroidx/viewbinding/ViewBinding;)V", "binding", "Lcom/qennnsad/aknkaksd/presentation/common/l;", "X", "()Lcom/qennnsad/aknkaksd/presentation/common/l;", "viewModel", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public abstract class e<VB extends ViewBinding, Event> extends DialogFragment {
    @m8.h

    /* renamed from: a  reason: collision with root package name */
    private VB f50917a;

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y(e this$0, t tVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        l.a aVar = (l.a) tVar.a();
        if (aVar != null) {
            this$0.d0(aVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void Z(e this$0, t tVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Object a10 = tVar.a();
        if (a10 != null) {
            this$0.onEvent(a10);
        }
    }

    private final void d0(l.a aVar) {
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

    @m8.h
    public final VB W() {
        return this.f50917a;
    }

    @m8.g
    public abstract l<Event> X();

    @m8.g
    public abstract VB a0(@m8.g LayoutInflater layoutInflater, @m8.h ViewGroup viewGroup);

    @m8.g
    public final VB b0() {
        VB vb = this.f50917a;
        Intrinsics.checkNotNull(vb);
        return vb;
    }

    public final void c0(@m8.h VB vb) {
        this.f50917a = vb;
    }

    @Override // androidx.fragment.app.Fragment
    @m8.g
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        VB a02 = a0(inflater, viewGroup);
        this.f50917a = a02;
        View root = a02.getRoot();
        Intrinsics.checkNotNullExpressionValue(root, "provideBinding(inflater,…nding = it\n        }.root");
        return root;
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f50917a = null;
    }

    protected abstract void onEvent(Event event);

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        X().f().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.common.c
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                e.Y(e.this, (t) obj);
            }
        });
        X().c().observe(getViewLifecycleOwner(), new Observer() { // from class: com.qennnsad.aknkaksd.presentation.common.d
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                e.Z(e.this, (t) obj);
            }
        });
    }
}
