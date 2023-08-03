package com.im.freechat.base;

import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.os.BundleKt;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.navigation.NavController;
import androidx.navigation.fragment.FragmentKt;
import androidx.navigation.ui.AppBarConfiguration;
import androidx.navigation.ui.ToolbarKt;
import androidx.viewbinding.ViewBinding;
import com.im.freechat.base.a;
import com.im.freechat.sdk.SDKManager;
import java.lang.Enum;
import java.util.Arrays;
import kotlin.Metadata;
import kotlin.Pair;
import kotlin.jvm.internal.Intrinsics;
import m8.h;

/* compiled from: BaseViewModelFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000L\n\u0002\u0018\u0002\n\u0002\u0010\u0010\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\t\n\u0002\u0018\u0002\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\b\b&\u0018\u0000*\u000e\b\u0000\u0010\u0002*\b\u0012\u0004\u0012\u00028\u00000\u0001*\b\b\u0001\u0010\u0004*\u00020\u00032\u00020\u0005B\u0007¢\u0006\u0004\b-\u0010.J!\u0010\n\u001a\u00028\u00012\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\bH&¢\u0006\u0004\b\n\u0010\u000bJ$\u0010\u000f\u001a\u0004\u0018\u00010\u000e2\u0006\u0010\u0007\u001a\u00020\u00062\b\u0010\t\u001a\u0004\u0018\u00010\b2\b\u0010\r\u001a\u0004\u0018\u00010\fJ\b\u0010\u0011\u001a\u00020\u0010H$J\u000e\u0010\u0014\u001a\u00020\u00102\u0006\u0010\u0013\u001a\u00020\u0012J\u001a\u0010\u0016\u001a\u00020\u00102\u0006\u0010\u0015\u001a\u00020\u000e2\b\u0010\r\u001a\u0004\u0018\u00010\fH\u0016J\u001f\u0010\u0019\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00028\u00002\b\b\u0002\u0010\u0018\u001a\u00020\f¢\u0006\u0004\b\u0019\u0010\u001aJ!\u0010\u001b\u001a\u00020\u00102\u0006\u0010\u0017\u001a\u00028\u00002\b\b\u0002\u0010\u0018\u001a\u00020\fH&¢\u0006\u0004\b\u001b\u0010\u001aJ\u000e\u0010\u001e\u001a\u00020\u00102\u0006\u0010\u001d\u001a\u00020\u001cJ\b\u0010\u001f\u001a\u00020\u0010H\u0016R$\u0010&\u001a\u0004\u0018\u00018\u00018\u0004@\u0004X\u0084\u000e¢\u0006\u0012\n\u0004\b \u0010!\u001a\u0004\b\"\u0010#\"\u0004\b$\u0010%R\u001a\u0010*\u001a\b\u0012\u0004\u0012\u00028\u00000'8&X¦\u0004¢\u0006\u0006\u001a\u0004\b(\u0010)R\u0014\u0010,\u001a\u00028\u00018DX\u0084\u0004¢\u0006\u0006\u001a\u0004\b+\u0010#¨\u0006/"}, d2 = {"Lcom/im/freechat/base/f;", "", ExifInterface.GPS_DIRECTION_TRUE, "Landroidx/viewbinding/ViewBinding;", "VB", "Landroidx/fragment/app/Fragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "g0", "(Landroid/view/LayoutInflater;Landroid/view/ViewGroup;)Landroidx/viewbinding/ViewBinding;", "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "", "Z", "Landroidx/appcompat/widget/Toolbar;", "toolbar", "i0", "view", "onViewCreated", "direction", "extras", "c0", "(Ljava/lang/Enum;Landroid/os/Bundle;)V", "a0", "Lcom/im/freechat/base/a$b;", "msg", "j0", "onDestroyView", "a", "Landroidx/viewbinding/ViewBinding;", "X", "()Landroidx/viewbinding/ViewBinding;", "h0", "(Landroidx/viewbinding/ViewBinding;)V", "nullableBinding", "Lcom/im/freechat/base/a;", "Y", "()Lcom/im/freechat/base/a;", "viewModel", ExifInterface.LONGITUDE_WEST, "binding", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes.dex */
public abstract class f<T extends Enum<T>, VB extends ViewBinding> extends Fragment {
    @h

    /* renamed from: a  reason: collision with root package name */
    private VB f39476a;

    public static /* synthetic */ void b0(f fVar, Enum r12, Bundle bundle, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: navigate");
        }
        if ((i4 & 2) != 0) {
            bundle = BundleKt.bundleOf(new Pair[0]);
        }
        fVar.a0(r12, bundle);
    }

    public static /* synthetic */ void d0(f fVar, Enum r12, Bundle bundle, int i4, Object obj) {
        if (obj != null) {
            throw new UnsupportedOperationException("Super calls with default arguments not supported in this target, function: onNavigateEvent");
        }
        if ((i4 & 2) != 0) {
            bundle = BundleKt.bundleOf(new Pair[0]);
        }
        fVar.c0(r12, bundle);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e0(f this$0, o4.a aVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        a.b bVar = (a.b) aVar.a();
        if (bVar != null) {
            this$0.j0(bVar);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* JADX WARN: Multi-variable type inference failed */
    public static final void f0(f this$0, o4.a aVar) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        a.C0301a c0301a = (a.C0301a) aVar.a();
        if (c0301a != null) {
            this$0.c0(c0301a.e(), c0301a.f());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @m8.g
    public final VB W() {
        VB vb = this.f39476a;
        if (vb != null) {
            return vb;
        }
        throw new IllegalStateException("Required value was null.".toString());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @h
    public final VB X() {
        return this.f39476a;
    }

    @m8.g
    public abstract a<T> Y();

    protected abstract void Z();

    public abstract void a0(@m8.g T t9, @m8.g Bundle bundle);

    public final void c0(@m8.g T direction, @m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(extras, "extras");
        if (SDKManager.f41970a.p().e(this, direction, extras) == null) {
            a0(direction, extras);
        }
    }

    @m8.g
    public abstract VB g0(@m8.g LayoutInflater layoutInflater, @h ViewGroup viewGroup);

    protected final void h0(@h VB vb) {
        this.f39476a = vb;
    }

    public final void i0(@m8.g Toolbar toolbar) {
        Intrinsics.checkNotNullParameter(toolbar, "toolbar");
        FragmentActivity activity = getActivity();
        AppCompatActivity appCompatActivity = activity instanceof AppCompatActivity ? (AppCompatActivity) activity : null;
        if (appCompatActivity != null) {
            appCompatActivity.setSupportActionBar(toolbar);
            ActionBar supportActionBar = appCompatActivity.getSupportActionBar();
            if (supportActionBar != null) {
                supportActionBar.setDisplayHomeAsUpEnabled(true);
            }
            ActionBar supportActionBar2 = appCompatActivity.getSupportActionBar();
            if (supportActionBar2 != null) {
                supportActionBar2.setHomeButtonEnabled(true);
            }
            try {
                NavController findNavController = FragmentKt.findNavController(this);
                AppBarConfiguration build = new AppBarConfiguration.Builder(new int[0]).build();
                Intrinsics.checkNotNullExpressionValue(build, "Builder().build()");
                ToolbarKt.setupWithNavController(toolbar, findNavController, build);
            } catch (Exception e4) {
                e4.printStackTrace();
            }
            toolbar.setTitle("");
        }
    }

    public final void j0(@m8.g a.b msg) {
        Intrinsics.checkNotNullParameter(msg, "msg");
        if (!(msg instanceof a.b.C0302a)) {
            if (msg instanceof a.b.C0303b) {
                FragmentActivity requireActivity = requireActivity();
                Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
                com.im.freechat.extend.f.A(requireActivity, ((a.b.C0303b) msg).a());
                return;
            }
            return;
        }
        FragmentActivity requireActivity2 = requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity2, "requireActivity()");
        a.b.C0302a c0302a = (a.b.C0302a) msg;
        int b10 = c0302a.b();
        Object[] a10 = c0302a.a();
        String string = getString(b10, Arrays.copyOf(a10, a10.length));
        Intrinsics.checkNotNullExpressionValue(string, "getString(msg.msgId, *msg.formatArgs)");
        com.im.freechat.extend.f.A(requireActivity2, string);
    }

    @Override // androidx.fragment.app.Fragment
    @h
    public final View onCreateView(@m8.g LayoutInflater inflater, @h ViewGroup viewGroup, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        VB g02 = g0(inflater, viewGroup);
        this.f39476a = g02;
        if (g02 != null) {
            return g02.getRoot();
        }
        return null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f39476a = null;
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        Z();
        Y().b().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.base.e
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                f.e0(f.this, (o4.a) obj);
            }
        });
        Y().a().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.base.d
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                f.f0(f.this, (o4.a) obj);
            }
        });
    }
}
