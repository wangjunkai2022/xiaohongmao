package com.im.freechat.ui.settings;

import android.content.DialogInterface;
import android.content.Intent;
import android.content.res.ColorStateList;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.ViewParent;
import android.widget.CheckedTextView;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.activity.result.ActivityResultCallback;
import androidx.activity.result.ActivityResultLauncher;
import androidx.activity.result.contract.ActivityResultContracts;
import androidx.appcompat.app.ActionBar;
import androidx.appcompat.app.AlertDialog;
import androidx.appcompat.app.AppCompatActivity;
import androidx.appcompat.widget.Toolbar;
import androidx.core.os.BundleKt;
import androidx.fragment.app.FragmentActivity;
import androidx.lifecycle.Observer;
import androidx.navigation.fragment.FragmentKt;
import b4.b;
import com.im.freechat.base.a;
import com.im.freechat.shared.entities.auth.UserInfo;
import com.im.freechat.shared.entities.chat.ChatMember;
import com.im.freechat.shared.entities.contact.ContactType;
import com.im.freechat.ui.settings.SettingsViewModel;
import f4.y;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Lambda;
import kotlin.text.StringsKt__StringsKt;
import kotlin.text.StringsKt___StringsKt;

/* compiled from: SettingsFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000J\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0002\b\t\u0018\u00002\u000e\u0012\u0004\u0012\u00020\u0002\u0012\u0004\u0012\u00020\u00030\u0001B\u0007¢\u0006\u0004\b%\u0010&J\b\u0010\u0005\u001a\u00020\u0004H\u0002J\b\u0010\u0006\u001a\u00020\u0004H\u0002J\b\u0010\u0007\u001a\u00020\u0004H\u0002J\b\u0010\b\u001a\u00020\u0004H\u0002J\u0010\u0010\u000b\u001a\u00020\u00042\u0006\u0010\n\u001a\u00020\tH\u0002J\u001a\u0010\u0010\u001a\u00020\u00032\u0006\u0010\r\u001a\u00020\f2\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\b\u0010\u0011\u001a\u00020\u0004H\u0014J\u0018\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u00022\u0006\u0010\u0014\u001a\u00020\u0013H\u0016J\b\u0010\u0016\u001a\u00020\u0004H\u0016R\u001b\u0010\u001c\u001a\u00020\u00178VX\u0096\u0084\u0002¢\u0006\f\n\u0004\b\u0018\u0010\u0019\u001a\u0004\b\u001a\u0010\u001bR\"\u0010\"\u001a\u0010\u0012\f\u0012\n \u001f*\u0004\u0018\u00010\u001e0\u001e0\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b \u0010!R\"\u0010$\u001a\u0010\u0012\f\u0012\n \u001f*\u0004\u0018\u00010\u001e0\u001e0\u001d8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b#\u0010!¨\u0006'"}, d2 = {"Lcom/im/freechat/ui/settings/SettingsFragment;", "Lcom/im/freechat/base/f;", "Lcom/im/freechat/ui/settings/SettingsViewModel$Directions;", "Lf4/u;", "", "M0", "N0", "f1", "c1", "Lcom/im/freechat/shared/entities/auth/UserInfo;", "userInfo", "F0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "a1", "Z", "direction", "Landroid/os/Bundle;", "extras", "Y0", "onResume", "Lcom/im/freechat/ui/settings/SettingsViewModel;", "b", "Lkotlin/Lazy;", "H0", "()Lcom/im/freechat/ui/settings/SettingsViewModel;", "viewModel", "Landroidx/activity/result/ActivityResultLauncher;", "", "kotlin.jvm.PlatformType", "c", "Landroidx/activity/result/ActivityResultLauncher;", "requestPermission", "d", "pickImage", "<init>", "()V", "app_prodRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class SettingsFragment extends com.im.freechat.base.f<SettingsViewModel.Directions, f4.u> {
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Lazy f43576b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final ActivityResultLauncher<String> f43577c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final ActivityResultLauncher<String> f43578d;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: SettingsFragment.kt */
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
            SettingsFragment.this.Y().t();
        }
    }

    public SettingsFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.SYNCHRONIZED, (Function0) new SettingsFragment$special$$inlined$inject$default$1(this, null, null));
        this.f43576b = lazy;
        ActivityResultLauncher<String> registerForActivityResult = registerForActivityResult(new ActivityResultContracts.RequestPermission(), new ActivityResultCallback() { // from class: com.im.freechat.ui.settings.h
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                SettingsFragment.b1(SettingsFragment.this, (Boolean) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult, "registerForActivityResul…mission))\n        }\n    }");
        this.f43577c = registerForActivityResult;
        ActivityResultLauncher<String> registerForActivityResult2 = registerForActivityResult(new ActivityResultContracts.GetContent(), new ActivityResultCallback() { // from class: com.im.freechat.ui.settings.g
            @Override // androidx.activity.result.ActivityResultCallback
            public final void onActivityResult(Object obj) {
                SettingsFragment.Z0(SettingsFragment.this, (Uri) obj);
            }
        });
        Intrinsics.checkNotNullExpressionValue(registerForActivityResult2, "registerForActivityResul…vatar(it)\n        }\n    }");
        this.f43578d = registerForActivityResult2;
    }

    private final void F0(UserInfo userInfo) {
        char first;
        y yVar = W().f65766e;
        yVar.f65854g.setText(userInfo.getPhoneNumber());
        TextView textView = yVar.f65852e;
        first = StringsKt___StringsKt.first(userInfo.getNickname());
        textView.setText(String.valueOf(Character.toTitleCase(first)));
        yVar.f65852e.setBackgroundTintList(ColorStateList.valueOf(com.im.freechat.extend.r.a(userInfo.getNickname())));
        TextView textView2 = yVar.f65853f;
        textView2.setText(userInfo.getNickname() + " (ID: " + userInfo.getUserId() + ')');
        ImageView ivIcon = yVar.f65850c;
        Intrinsics.checkNotNullExpressionValue(ivIcon, "ivIcon");
        com.im.freechat.extend.m.o(ivIcon, userInfo.getAvatar());
        if (userInfo.getManagementRole() != ChatMember.ManagementRole.NORMAL) {
            W().f65768g.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.settings.e
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    SettingsFragment.G0(SettingsFragment.this, view);
                }
            });
            ViewParent parent = W().f65768g.getParent();
            Intrinsics.checkNotNull(parent, "null cannot be cast to non-null type android.view.ViewGroup");
            ((ViewGroup) parent).setVisibility(0);
        }
        W().f65763b.setChecked(userInfo.getLastOnline() != 1);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void G0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse("https://dev.testwebmessenger.ml/admin"));
        this$0.startActivity(intent);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void I0(SettingsFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        ProgressBar progressBar = this$0.W().f65766e.f65851d;
        Intrinsics.checkNotNullExpressionValue(progressBar, "binding.header.pbAvatar");
        Intrinsics.checkNotNullExpressionValue(it, "it");
        progressBar.setVisibility(it.booleanValue() ? 0 : 8);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void J0(SettingsFragment this$0, UserInfo userInfo) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (userInfo == null) {
            return;
        }
        this$0.F0(userInfo);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void K0(SettingsFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CheckedTextView checkedTextView = this$0.W().f65764c;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        checkedTextView.setChecked(it.booleanValue());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void L0(SettingsFragment this$0, Boolean it) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        CheckedTextView checkedTextView = this$0.W().f65765d;
        Intrinsics.checkNotNullExpressionValue(it, "it");
        checkedTextView.setChecked(it.booleanValue());
    }

    private final void M0() {
        FragmentActivity requireActivity = requireActivity();
        AppCompatActivity appCompatActivity = requireActivity instanceof AppCompatActivity ? (AppCompatActivity) requireActivity : null;
        if (appCompatActivity != null) {
            appCompatActivity.setSupportActionBar(W().f65767f);
            return;
        }
        Toolbar toolbar = W().f65767f;
        Intrinsics.checkNotNullExpressionValue(toolbar, "binding.toolbar");
        toolbar.setVisibility(8);
    }

    private final void N0() {
        W().f65774m.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.settings.q
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.U0(SettingsFragment.this, view);
            }
        });
        W().f65773l.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.settings.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.V0(SettingsFragment.this, view);
            }
        });
        W().f65771j.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.settings.u
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.W0(SettingsFragment.this, view);
            }
        });
        W().f65769h.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.settings.p
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.X0(SettingsFragment.this, view);
            }
        });
        W().f65770i.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.settings.r
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.O0(SettingsFragment.this, view);
            }
        });
        W().f65766e.f65853f.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.settings.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.P0(SettingsFragment.this, view);
            }
        });
        W().f65763b.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.settings.f
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.Q0(SettingsFragment.this, view);
            }
        });
        W().f65764c.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.settings.t
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.R0(SettingsFragment.this, view);
            }
        });
        W().f65765d.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.settings.s
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.S0(SettingsFragment.this, view);
            }
        });
        W().f65772k.setOnClickListener(new View.OnClickListener() { // from class: com.im.freechat.ui.settings.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                SettingsFragment.T0(SettingsFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void O0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        FragmentActivity requireActivity = this$0.requireActivity();
        Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
        com.im.freechat.extend.f.g(requireActivity, b.s.f2227c9, b.s.f2237d9, new a());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void P0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        UserInfo value = this$0.Y().x().getValue();
        if (value != null) {
            int userId = value.getUserId();
            FragmentActivity requireActivity = this$0.requireActivity();
            Intrinsics.checkNotNullExpressionValue(requireActivity, "requireActivity()");
            com.im.freechat.extend.m.c(requireActivity, String.valueOf(userId));
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Q0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Y().C(!this$0.W().f65763b.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void R0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Y().B(!this$0.W().f65764c.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void S0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.Y().D(!this$0.W().f65765d.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void T0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f43577c.launch("android.permission.READ_EXTERNAL_STORAGE");
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void U0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.f1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void V0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c1();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void W0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        com.im.freechat.base.f.d0(this$0, SettingsViewModel.Directions.DATA_USAGE, null, 2, null);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X0(SettingsFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.c0(SettingsViewModel.Directions.BLACKLISTED_CONTACTS, BundleKt.bundleOf(TuplesKt.to(com.im.freechat.ui.contacts.k.f43454a, ContactType.BLOCK), TuplesKt.to(com.im.freechat.ui.contacts.k.f43456c, Boolean.FALSE)));
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Z0(SettingsFragment this$0, Uri uri) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        if (uri != null) {
            this$0.Y().E(uri);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void b1(SettingsFragment this$0, Boolean isGranted) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullExpressionValue(isGranted, "isGranted");
        if (isGranted.booleanValue()) {
            this$0.f43578d.launch("image/*");
        } else {
            this$0.j0(new a.b.C0302a(b.s.f2236d8, null, 2, null));
        }
    }

    private final void c1() {
        final f4.f d4 = f4.f.d(getLayoutInflater(), null, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(layoutInflater, null, false)");
        AlertDialog create = new AlertDialog.Builder(requireContext()).setTitle(b.s.T8).setView(d4.getRoot()).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.im.freechat.ui.settings.a
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                SettingsFragment.d1(SettingsFragment.this, d4, dialogInterface, i4);
            }
        }).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).create();
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.im.freechat.ui.settings.n
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                SettingsFragment.e1(SettingsFragment.this, d4, dialogInterface);
            }
        });
        create.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void d1(SettingsFragment this$0, f4.f dialogBinding, DialogInterface dialogInterface, int i4) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(dialogBinding, "$dialogBinding");
        SettingsViewModel Y = this$0.Y();
        trim = StringsKt__StringsKt.trim((CharSequence) dialogBinding.f65498c.getText().toString());
        Y.z(trim.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void e1(SettingsFragment this$0, f4.f dialogBinding, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(dialogBinding, "$dialogBinding");
        UserInfo value = this$0.Y().x().getValue();
        String bio = value != null ? value.getBio() : null;
        if (bio == null || bio.length() == 0) {
            return;
        }
        TextView textView = dialogBinding.f65497b;
        Intrinsics.checkNotNullExpressionValue(textView, "dialogBinding.disclaimer");
        textView.setVisibility(8);
        EditText editText = dialogBinding.f65498c;
        editText.setHint(b.s.f2375r3);
        editText.setText(bio);
    }

    private final void f1() {
        final f4.g d4 = f4.g.d(getLayoutInflater(), null, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(layoutInflater, null, false)");
        AlertDialog create = new AlertDialog.Builder(requireContext()).setTitle(b.s.f2302k2).setView(d4.getRoot()).setPositiveButton(17039370, new DialogInterface.OnClickListener() { // from class: com.im.freechat.ui.settings.l
            @Override // android.content.DialogInterface.OnClickListener
            public final void onClick(DialogInterface dialogInterface, int i4) {
                SettingsFragment.g1(SettingsFragment.this, d4, dialogInterface, i4);
            }
        }).setNegativeButton(17039360, (DialogInterface.OnClickListener) null).create();
        create.setOnShowListener(new DialogInterface.OnShowListener() { // from class: com.im.freechat.ui.settings.o
            @Override // android.content.DialogInterface.OnShowListener
            public final void onShow(DialogInterface dialogInterface) {
                SettingsFragment.h1(f4.g.this, this, dialogInterface);
            }
        });
        create.show();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void g1(SettingsFragment this$0, f4.g dialogBinding, DialogInterface dialogInterface, int i4) {
        CharSequence trim;
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Intrinsics.checkNotNullParameter(dialogBinding, "$dialogBinding");
        SettingsViewModel Y = this$0.Y();
        trim = StringsKt__StringsKt.trim((CharSequence) dialogBinding.f65509c.getText().toString());
        Y.A(trim.toString());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void h1(f4.g dialogBinding, SettingsFragment this$0, DialogInterface dialogInterface) {
        Intrinsics.checkNotNullParameter(dialogBinding, "$dialogBinding");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        TextView textView = dialogBinding.f65508b;
        Intrinsics.checkNotNullExpressionValue(textView, "dialogBinding.disclaimer");
        textView.setVisibility(8);
        EditText editText = dialogBinding.f65509c;
        editText.setHint(b.s.f2262g2);
        UserInfo value = this$0.Y().x().getValue();
        editText.setText(value != null ? value.getNickname() : null);
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: H0 */
    public SettingsViewModel Y() {
        return (SettingsViewModel) this.f43576b.getValue();
    }

    @Override // com.im.freechat.base.f
    /* renamed from: Y0 */
    public void a0(@m8.g SettingsViewModel.Directions direction, @m8.g Bundle extras) {
        Intrinsics.checkNotNullParameter(direction, "direction");
        Intrinsics.checkNotNullParameter(extras, "extras");
        FragmentKt.findNavController(this);
    }

    @Override // com.im.freechat.base.f
    protected void Z() {
        Y().u().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.settings.m
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SettingsFragment.I0(SettingsFragment.this, (Boolean) obj);
            }
        });
        Y().x().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.settings.i
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SettingsFragment.J0(SettingsFragment.this, (UserInfo) obj);
            }
        });
        Y().v().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.settings.j
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SettingsFragment.K0(SettingsFragment.this, (Boolean) obj);
            }
        });
        Y().w().observe(getViewLifecycleOwner(), new Observer() { // from class: com.im.freechat.ui.settings.k
            @Override // androidx.lifecycle.Observer
            public final void onChanged(Object obj) {
                SettingsFragment.L0(SettingsFragment.this, (Boolean) obj);
            }
        });
        Y().y();
        M0();
        N0();
    }

    @Override // com.im.freechat.base.f
    @m8.g
    /* renamed from: a1 */
    public f4.u g0(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        f4.u d4 = f4.u.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    @Override // androidx.fragment.app.Fragment
    public void onResume() {
        super.onResume();
        FragmentActivity requireActivity = requireActivity();
        Intrinsics.checkNotNull(requireActivity, "null cannot be cast to non-null type androidx.appcompat.app.AppCompatActivity");
        ActionBar supportActionBar = ((AppCompatActivity) requireActivity).getSupportActionBar();
        if (supportActionBar == null) {
            return;
        }
        supportActionBar.setTitle("");
    }
}
