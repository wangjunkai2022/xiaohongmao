package com.im.freechat.ui.settings.data_usage;

import android.content.DialogInterface;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b4.b;
import com.im.freechat.ui.settings.data_usage.DataUsageViewModel;
import f4.r;
import java.util.ArrayList;
import java.util.List;
import java.util.Map;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.CollectionsKt__IterablesKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: DataUsageFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000\\\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u0011\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b.\u0010/J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\u0010\u0010\b\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u0006H\u0002J\b\u0010\t\u001a\u00020\u0004H\u0002J\b\u0010\n\u001a\u00020\u0004H\u0002J\u001a\u0010\u000f\u001a\u00020\u00032\u0006\u0010\f\u001a\u00020\u000b2\b\u0010\u000e\u001a\u0004\u0018\u00010\rH\u0016J\b\u0010\u0010\u001a\u00020\u0004H\u0014J\u0018\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u0011\u001a\u00020\u00022\u0006\u0010\u0013\u001a\u00020\u0012H\u0016R\u001b\u0010\u001a\u001a\u00020\u00158VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0016\u0010\u0017\u001a\u0004\b\u0018\u0010\u0019R\u001b\u0010\u001f\u001a\u00020\u001b8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001c\u0010\u0017\u001a\u0004\b\u001d\u0010\u001eR\u001b\u0010$\u001a\u00020 8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b!\u0010\u0017\u001a\u0004\b\"\u0010#R.\u0010+\u001a\u001c\u0012\u0018\u0012\u0016\u0012\u0004\u0012\u00020' (*\n\u0012\u0004\u0012\u00020'\u0018\u00010&0&0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b)\u0010*R\"\u0010-\u001a\u0010\u0012\f\u0012\n (*\u0004\u0018\u00010'0'0%8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b,\u0010*¨\u00060"}, d2 = {"Lcom/im/freechat/ui/settings/data_usage/DataUsageFragment;", "Lcom/im/freechat/base/f;", "Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel$Directions;", "Lf4/r;", "", "B0", "", "granted", "H0", "D0", "t0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "I0", "Z", "direction", "Landroid/os/Bundle;", "extras", "G0", "Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;", "b", "Lkotlin/Lazy;", "x0", "()Lcom/im/freechat/ui/settings/data_usage/DataUsageViewModel;", "viewModel", "Lcom/im/freechat/ui/settings/data_usage/k;", "c", "w0", "()Lcom/im/freechat/ui/settings/data_usage/k;", "networkAdapter", "Lcom/im/freechat/ui/settings/data_usage/o;", "d", "v0", "()Lcom/im/freechat/ui/settings/data_usage/o;", "cacheStorageAdapter", "Landroidx/activity/result/ActivityResultLauncher;", "", "", "kotlin.jvm.PlatformType", "e", "Landroidx/activity/result/ActivityResultLauncher;", "requestAllPermission", "f", "requestPhonePermission", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class DataUsageFragment extends com.im.freechat.base.f<DataUsageViewModel.Directions, r> {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f43626b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f43627c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final Lazy f43628d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final ActivityResultLauncher<String[]> f43629e;
    @m8.g

    /* renamed from: f  reason: collision with root package name */
    private final ActivityResultLauncher<String> f43630f;

    public DataUsageFragment() {
        Lazy lazy;
        Lazy lazy2;
        DataUsageFragment$special$$inlined$viewModel$default$1 dataUsageFragment$special$$inlined$viewModel$default$1 = new DataUsageFragment$special$$inlined$viewModel$default$1(this);
        this.f43626b = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(DataUsageViewModel.class), new DataUsageFragment$special$$inlined$viewModel$default$3(dataUsageFragment$special$$inlined$viewModel$default$1), new DataUsageFragment$special$$inlined$viewModel$default$2(dataUsageFragment$special$$inlined$viewModel$default$1, null, null, org.koin.android.ext.android.a.a(this)));
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new DataUsageFragment$special$$inlined$inject$default$1(this, null, null));
        this.f43627c = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new DataUsageFragment$special$$inlined$inject$default$2(this, null, null));
        this.f43628d = lazy2;
        ActivityResultLauncher<String[]> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestMultiplePermissions(), new ActivityResultCallback() { // from class: com.im.freechat.ui.settings.data_usage.f
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                DataUsageFragment.J0(DataUsageFragment.this, (Map) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…ONE_STATE] == true)\n    }");
        this.f43629e = registerForActivityResult;
        ActivityResultLauncher<String> registerForActivityResult2 = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new ActivityResultCallback() { // from class: com.im.freechat.ui.settings.data_usage.e
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                DataUsageFragment.K0(DataUsageFragment.this, (Boolean) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult2, "registerForActivityResul…nGranted(isGranted)\n    }");
        this.f43630f = registerForActivityResult2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(DataUsageFragment this$0, Long it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TextView textView = this$0.W().f65719g;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        textView.setText(com.im.freechat.extend.n.c(it.longValue()));
    }

    private final void B0() {
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        final AppCompatActivity appCompatActivity = (AppCompatActivity) requireActivity;
        appCompatActivity.setSupportActionBar(W().f65718f);
        ActionBar supportActionBar = appCompatActivity.getSupportActionBar();
        if (supportActionBar != null) {
            supportActionBar.setDisplayShowTitleEnabled(true);
        }
        ActionBar supportActionBar2 = appCompatActivity.getSupportActionBar();
        if (supportActionBar2 != null) {
            supportActionBar2.setDisplayHomeAsUpEnabled(true);
        }
        ActionBar supportActionBar3 = appCompatActivity.getSupportActionBar();
        if (supportActionBar3 != null) {
            supportActionBar3.setHomeButtonEnabled(true);
        }
        ActionBar supportActionBar4 = appCompatActivity.getSupportActionBar();
        if (supportActionBar4 != null) {
            supportActionBar4.setTitle(appCompatActivity.getString(b.s.f2415v3));
        }
        W().f65718f.setNavigationOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.settings.data_usage.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DataUsageFragment.C0(AppCompatActivity.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(AppCompatActivity this_apply, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        this_apply.onBackPressed();
    }

    private final void D0() {
        W().f65714b.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.settings.data_usage.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DataUsageFragment.E0(DataUsageFragment.this, view);
            }
        });
        RecyclerView recyclerView = W().f65717e;
        recyclerView.setAdapter(w0());
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        W().f65715c.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.settings.data_usage.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                DataUsageFragment.F0(DataUsageFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(DataUsageFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f43630f.launch("android.permission.READ_PHONE_STATE");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void F0(DataUsageFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        List<com.im.freechat.domain.r> value = this$0.Y().p().getValue();
        boolean z9 = false;
        if (value != null && (!value.isEmpty())) {
            z9 = true;
        }
        if (z9) {
            this$0.t0();
        }
    }

    private final void H0(boolean z9) {
        if (z9) {
            LinearLayout linearLayout = W().f65716d;
            Intrinsics.checkNotNullExpressionValue(linearLayout, "binding.llNoPermissions");
            linearLayout.setVisibility(8);
            Y().n();
            return;
        }
        LinearLayout linearLayout2 = W().f65716d;
        Intrinsics.checkNotNullExpressionValue(linearLayout2, "binding.llNoPermissions");
        linearLayout2.setVisibility(0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(DataUsageFragment this$0, Map map) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Object obj = map.get("android.permission.WRITE_EXTERNAL_STORAGE");
        Boolean bool = Boolean.TRUE;
        if (Intrinsics.areEqual(obj, bool) || Intrinsics.areEqual(map.get("android.permission.READ_EXTERNAL_STORAGE"), bool)) {
            this$0.Y().o();
        }
        this$0.H0(Intrinsics.areEqual(map.get("android.permission.READ_PHONE_STATE"), bool));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(DataUsageFragment this$0, Boolean isGranted) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(isGranted, "isGranted");
        this$0.H0(isGranted.booleanValue());
    }

    private final void t0() {
        RecyclerView recyclerView = new RecyclerView(requireContext());
        recyclerView.setLayoutManager(new LinearLayoutManager(recyclerView.getContext(), 1, false));
        recyclerView.setAdapter(v0());
        new AlertDialog.Builder(requireContext()).setTitle(b.s.T2).setView(recyclerView).setPositiveButton(b.s.S2, new DialogInterface.OnClickListener() { // from class: com.im.freechat.ui.settings.data_usage.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                DataUsageFragment.u0(DataUsageFragment.this, dialogInterface, i4);
            }
        }).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).create().show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(DataUsageFragment this$0, DialogInterface dialogInterface, int i4) {
        int collectionSizeOrDefault;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        DataUsageViewModel Y = this$0.Y();
        List<com.im.freechat.domain.r> currentList = this$0.v0().getCurrentList();
        Intrinsics.checkNotNullExpressionValue(currentList, "cacheStorageAdapter.currentList");
        ArrayList<com.im.freechat.domain.r> arrayList = new ArrayList();
        for (Object obj : currentList) {
            if (((com.im.freechat.domain.r) obj).g()) {
                arrayList.add(obj);
            }
        }
        collectionSizeOrDefault = CollectionsKt__IterablesKt.collectionSizeOrDefault(arrayList, 10);
        ArrayList arrayList2 = new ArrayList(collectionSizeOrDefault);
        for (com.im.freechat.domain.r rVar : arrayList) {
            arrayList2.add(rVar.f());
        }
        Y.m(arrayList2);
    }

    private final o v0() {
        return (o) this.f43628d.getValue();
    }

    private final k w0() {
        return (k) this.f43627c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void y0(DataUsageFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.w0().submitList(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(DataUsageFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.v0().submitList(list);
    }

    @Override // com.im.freechat.base.f
    /* renamed from: G0 */
    public void a0(@m8.g DataUsageViewModel.Directions direction, @m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(extras, "extras");
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: I0 */
    public r g0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        r d4 = r.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    @Override // com.im.freechat.base.f
    protected void Z() {
        B0();
        D0();
        this.f43629e.launch(new String[]{"android.permission.WRITE_EXTERNAL_STORAGE", "android.permission.READ_EXTERNAL_STORAGE", "android.permission.READ_PHONE_STATE"});
        Y().q().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.settings.data_usage.i
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                DataUsageFragment.y0(DataUsageFragment.this, (List) obj);
            }
        });
        Y().p().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.settings.data_usage.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                DataUsageFragment.z0(DataUsageFragment.this, (List) obj);
            }
        });
        Y().r().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.settings.data_usage.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                DataUsageFragment.A0(DataUsageFragment.this, (Long) obj);
            }
        });
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: x0 */
    public DataUsageViewModel Y() {
        return (DataUsageViewModel) this.f43626b.getValue();
    }
}
