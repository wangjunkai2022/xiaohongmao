package com.im.freechat.ui.create.namegroup;

import android.net.Uri;
import android.os.Bundle;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.recyclerview.widget.LinearLayoutManager;
import androidx.recyclerview.widget.RecyclerView;
import b4.b;
import com.im.freechat.base.a;
import com.im.freechat.extend.m;
import com.im.freechat.shared.entities.contact.UserModel;
import com.im.freechat.ui.create.namegroup.NameGroupViewModel;
import f4.q;
import java.io.Serializable;
import java.util.List;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.collections.ArraysKt___ArraysKt;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: NameGroupFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b$\u0010%J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\u001a\u0010\u000b\u001a\u00020\u00032\u0006\u0010\b\u001a\u00020\u00072\b\u0010\n\u001a\u0004\u0018\u00010\tH\u0016J\b\u0010\f\u001a\u00020\u0004H\u0014J\u0018\u0010\u0010\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\u001b\u0010\u0016\u001a\u00020\u00118VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0012\u0010\u0013\u001a\u0004\b\u0014\u0010\u0015R\u001b\u0010\u001b\u001a\u00020\u00178BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0013\u001a\u0004\b\u0019\u0010\u001aR\"\u0010!\u001a\u0010\u0012\f\u0012\n \u001e*\u0004\u0018\u00010\u001d0\u001d0\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001f\u0010 R\"\u0010#\u001a\u0010\u0012\f\u0012\n \u001e*\u0004\u0018\u00010\u001d0\u001d0\u001c8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\"\u0010 ¨\u0006&"}, d2 = {"Lcom/im/freechat/ui/create/namegroup/NameGroupFragment;", "Lcom/im/freechat/base/f;", "Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel$Directions;", "Lf4/q;", "", "y0", "x0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "D0", "Z", "direction", "Landroid/os/Bundle;", "extras", "B0", "Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;", "b", "Lkotlin/Lazy;", "t0", "()Lcom/im/freechat/ui/create/namegroup/NameGroupViewModel;", "viewModel", "Lcom/im/freechat/ui/create/namegroup/a;", "c", "s0", "()Lcom/im/freechat/ui/create/namegroup/a;", "adapter", "Landroidx/activity/result/ActivityResultLauncher;", "", "kotlin.jvm.PlatformType", "d", "Landroidx/activity/result/ActivityResultLauncher;", "requestPermission", "e", "pickImage", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class NameGroupFragment extends com.im.freechat.base.f<NameGroupViewModel.Directions, q> {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f43541b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Lazy f43542c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final ActivityResultLauncher<String> f43543d;
    @m8.g

    /* renamed from: e  reason: collision with root package name */
    private final ActivityResultLauncher<String> f43544e;

    /* compiled from: TextView.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J*\u0010\f\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0016J*\u0010\u000e\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016¨\u0006\u000f¸\u0006\u0000"}, d2 = {"androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1", "Landroid/text/TextWatcher;", "Landroid/text/Editable;", "s", "", "afterTextChanged", "", "text", "", com.google.android.exoplayer2.text.ttml.d.f25725o0, "count", com.google.android.exoplayer2.text.ttml.d.f25712d0, "beforeTextChanged", com.google.android.exoplayer2.text.ttml.d.f25711c0, "onTextChanged", "core-ktx_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a implements TextWatcher {
        public a() {
        }

        /* JADX WARN: Code restructure failed: missing block: B:15:0x0026, code lost:
            r0 = kotlin.text.StringsKt___StringsKt.firstOrNull(r5);
         */
        @Override // android.text.TextWatcher
        /*
            Code decompiled incorrectly, please refer to instructions dump.
            To view partially-correct code enable 'Show inconsistent code' option in preferences
        */
        public void afterTextChanged(@m8.h android.text.Editable r5) {
            /*
                r4 = this;
                com.im.freechat.ui.create.namegroup.NameGroupFragment r0 = com.im.freechat.ui.create.namegroup.NameGroupFragment.this
                f4.q r0 = com.im.freechat.ui.create.namegroup.NameGroupFragment.r0(r0)
                com.google.android.material.floatingactionbutton.FloatingActionButton r0 = r0.f65698b
                java.lang.String r1 = "binding.createFab"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                r1 = 0
                r2 = 1
                if (r5 == 0) goto L1a
                int r3 = r5.length()
                if (r3 != 0) goto L18
                goto L1a
            L18:
                r3 = 0
                goto L1b
            L1a:
                r3 = 1
            L1b:
                r2 = r2 ^ r3
                if (r2 == 0) goto L1f
                goto L21
            L1f:
                r1 = 8
            L21:
                r0.setVisibility(r1)
                if (r5 == 0) goto L32
                java.lang.Character r0 = kotlin.text.StringsKt.firstOrNull(r5)
                if (r0 == 0) goto L32
                java.lang.String r0 = r0.toString()
                if (r0 != 0) goto L34
            L32:
                java.lang.String r0 = ""
            L34:
                com.im.freechat.ui.create.namegroup.NameGroupFragment r1 = com.im.freechat.ui.create.namegroup.NameGroupFragment.this
                f4.q r1 = com.im.freechat.ui.create.namegroup.NameGroupFragment.r0(r1)
                android.widget.TextView r1 = r1.f65705i
                r1.setText(r0)
                com.im.freechat.ui.create.namegroup.NameGroupFragment r0 = com.im.freechat.ui.create.namegroup.NameGroupFragment.this
                f4.q r0 = com.im.freechat.ui.create.namegroup.NameGroupFragment.r0(r0)
                android.widget.TextView r0 = r0.f65705i
                java.lang.String r1 = "binding.tvGroupAvatar"
                kotlin.jvm.internal.Intrinsics.checkNotNullExpressionValue(r0, r1)
                if (r5 == 0) goto L53
                java.lang.String r5 = r5.toString()
                goto L54
            L53:
                r5 = 0
            L54:
                com.im.freechat.utils.v.a(r0, r5)
                return
            */
            throw new UnsupportedOperationException("Method not decompiled: com.im.freechat.ui.create.namegroup.NameGroupFragment.a.afterTextChanged(android.text.Editable):void");
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
        }
    }

    public NameGroupFragment() {
        Lazy lazy;
        Lazy lazy2;
        LazyThreadSafetyMode lazyThreadSafetyMode = LazyThreadSafetyMode.SYNCHRONIZED;
        lazy = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new NameGroupFragment$special$$inlined$inject$default$1(this, null, null));
        this.f43541b = lazy;
        lazy2 = LazyKt__LazyJVMKt.lazy(lazyThreadSafetyMode, (Function0) new NameGroupFragment$special$$inlined$inject$default$2(this, null, null));
        this.f43542c = lazy2;
        ActivityResultLauncher<String> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new ActivityResultCallback() { // from class: com.im.freechat.ui.create.namegroup.f
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                NameGroupFragment.E0(NameGroupFragment.this, (Boolean) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…mission))\n        }\n    }");
        this.f43543d = registerForActivityResult;
        ActivityResultLauncher<String> registerForActivityResult2 = registerForActivityResult(new ActivityResultContracts.GetContent(), new ActivityResultCallback() { // from class: com.im.freechat.ui.create.namegroup.e
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                NameGroupFragment.C0(NameGroupFragment.this, (Uri) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult2, "registerForActivityResul…oString()\n        }\n    }");
        this.f43544e = registerForActivityResult2;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void A0(NameGroupFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f43543d.launch("android.permission.READ_EXTERNAL_STORAGE");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void C0(NameGroupFragment this$0, Uri uri) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (uri != null) {
            this$0.Y().l().setValue(uri.toString());
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void E0(NameGroupFragment this$0, Boolean isGranted) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(isGranted, "isGranted");
        if (isGranted.booleanValue()) {
            this$0.f43544e.launch("image/*");
        } else {
            this$0.j0(new a.b.C0302a(b.s.f2236d8, null, 2, null));
        }
    }

    public static final /* synthetic */ q r0(NameGroupFragment nameGroupFragment) {
        return nameGroupFragment.W();
    }

    private final com.im.freechat.ui.create.namegroup.a s0() {
        return (com.im.freechat.ui.create.namegroup.a) this.f43542c.getValue();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void u0(NameGroupFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.W().f65698b.setEnabled(!it.booleanValue());
        this$0.W().f65699c.setEnabled(!it.booleanValue());
        ProgressBar progressBar = this$0.W().f65702f;
        Intrinsics.checkNotNullExpressionValue(progressBar, "binding.progress");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        progressBar.setVisibility(it.booleanValue() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void v0(NameGroupFragment this$0, List list) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.s0().submitList(list);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void w0(NameGroupFragment this$0, String str) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ImageView imageView = this$0.W().f65700d;
        Intrinsics.checkNotNullExpressionValue(imageView, "binding.ivAvatar");
        m.o(imageView, str);
    }

    private final void x0() {
        FragmentActivity requireActivity = requireActivity();
        AppCompatActivity appCompatActivity = requireActivity instanceof AppCompatActivity ? (AppCompatActivity) requireActivity : null;
        if (appCompatActivity != null) {
            appCompatActivity.setSupportActionBar(W().f65704h);
            return;
        }
        Toolbar toolbar = W().f65704h;
        Intrinsics.checkNotNullExpressionValue(toolbar, "binding.toolbar");
        toolbar.setVisibility(8);
    }

    private final void y0() {
        List<UserModel> list;
        x0();
        RecyclerView recyclerView = W().f65703g;
        recyclerView.setLayoutManager(new LinearLayoutManager(requireContext()));
        recyclerView.setAdapter(s0());
        W().f65698b.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.create.namegroup.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NameGroupFragment.z0(NameGroupFragment.this, view);
            }
        });
        NameGroupViewModel Y = Y();
        Serializable serializable = requireArguments().getSerializable(com.im.freechat.ui.create.choosemember.h.f43540d);
        Intrinsics.checkNotNull(serializable, "null cannot be cast to non-null type kotlin.Array<com.im.freechat.shared.entities.contact.UserModel>");
        list = ArraysKt___ArraysKt.toList((UserModel[]) serializable);
        Y.p(list);
        EditText editText = W().f65699c;
        Intrinsics.checkNotNullExpressionValue(editText, "binding.etConvName");
        editText.addTextChangedListener(new a());
        W().f65705i.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.create.namegroup.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                NameGroupFragment.A0(NameGroupFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void z0(NameGroupFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Y().k(this$0.W().f65699c.getText().toString());
    }

    @Override // com.im.freechat.base.f
    /* renamed from: B0 */
    public void a0(@m8.g NameGroupViewModel.Directions direction, @m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(extras, "extras");
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: D0 */
    public q g0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        q d4 = q.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    @Override // com.im.freechat.base.f
    protected void Z() {
        y0();
        Y().m().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.create.namegroup.g
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                NameGroupFragment.u0(NameGroupFragment.this, (Boolean) obj);
            }
        });
        Y().n().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.create.namegroup.i
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                NameGroupFragment.v0(NameGroupFragment.this, (List) obj);
            }
        });
        Y().l().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.create.namegroup.h
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                NameGroupFragment.w0(NameGroupFragment.this, (String) obj);
            }
        });
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: t0 */
    public NameGroupViewModel Y() {
        return (NameGroupViewModel) this.f43541b.getValue();
    }
}
