package com.qennnsad.aknkaksd.presentation.module.appupdate;

import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.content.Intent;
import android.net.Uri;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.FileProvider;
import androidx.core.os.BundleKt;
import androidx.core.text.HtmlCompat;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentViewModelLazyKt;
import com.didi.live.spring.R;
import com.facebook.common.callercontext.ContextChain;
import com.qennnsad.aknkaksd.presentation.ui.base.BaseDialogFragment;
import e5.y1;
import io.sentry.protocol.r;
import java.io.File;
import kotlin.Lazy;
import kotlin.LazyKt__LazyJVMKt;
import kotlin.LazyThreadSafetyMode;
import kotlin.Metadata;
import kotlin.TuplesKt;
import kotlin.Unit;
import kotlin.jvm.JvmStatic;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import kotlin.jvm.internal.Reflection;

/* compiled from: UpdateFragment.kt */
@Metadata(bv = {}, d1 = {"\u0000r\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\u0003\n\u0002\u0010\u000e\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u0007\n\u0002\b\r\b\u0007\u0018\u0000 C2\b\u0012\u0004\u0012\u00020\u00020\u0001:\u0001DB\u0007¢\u0006\u0004\bA\u0010BJ\b\u0010\u0004\u001a\u00020\u0003H\u0002J\b\u0010\u0005\u001a\u00020\u0003H\u0002J\b\u0010\u0006\u001a\u00020\u0003H\u0002J\b\u0010\u0007\u001a\u00020\u0003H\u0002J\b\u0010\b\u001a\u00020\u0003H\u0002J\u001a\u0010\r\u001a\u00020\u00022\u0006\u0010\n\u001a\u00020\t2\b\u0010\f\u001a\u0004\u0018\u00010\u000bH\u0016J\u0012\u0010\u0010\u001a\u00020\u00032\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u000e\u0010\u0013\u001a\u00020\u00032\u0006\u0010\u0012\u001a\u00020\u0011J\u001a\u0010\u0016\u001a\u00020\u00032\u0006\u0010\u0015\u001a\u00020\u00142\b\u0010\u000f\u001a\u0004\u0018\u00010\u000eH\u0016J\u0014\u0010\u0019\u001a\u00020\u00032\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\u00030\u0017J\u0010\u0010\u001c\u001a\u00020\u00032\u0006\u0010\u001b\u001a\u00020\u001aH\u0016R\u001b\u0010\"\u001a\u00020\u001d8BX\u0082\u0084\u0002¢\u0006\f\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!R\u0016\u0010&\u001a\u00020#8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b$\u0010%R\u0018\u0010*\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b(\u0010)R\u0018\u0010,\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b+\u0010)R\u0018\u0010.\u001a\u0004\u0018\u00010'8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b-\u0010)R\u001e\u00101\u001a\n\u0012\u0004\u0012\u00020\u0003\u0018\u00010\u00178\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b/\u00100R\u001a\u00107\u001a\u0002028\u0014X\u0094\u0004¢\u0006\f\n\u0004\b3\u00104\u001a\u0004\b5\u00106R\u001a\u0010=\u001a\u0002088\u0014X\u0094D¢\u0006\f\n\u0004\b9\u0010:\u001a\u0004\b;\u0010<R\u0014\u0010@\u001a\u00020#8TX\u0094\u0004¢\u0006\u0006\u001a\u0004\b>\u0010?¨\u0006E"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;", "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment;", "Le5/y1;", "", "p0", "k0", "q0", "u0", "r0", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "i0", "Landroid/os/Bundle;", "savedInstanceState", "onCreate", "Landroidx/fragment/app/FragmentActivity;", "activity", "t0", "Landroid/view/View;", "view", "onViewCreated", "Lkotlin/Function0;", r.b.f83826b, "s0", "Landroid/content/DialogInterface;", "dialog", "onDismiss", "Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;", "g", "Lkotlin/Lazy;", "j0", "()Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateViewModel;", "viewModel", "", "h", "Z", "isForceUpdate", "", ContextChain.TAG_INFRA, "Ljava/lang/String;", "desc", "j", "web", "k", "version", "l", "Lkotlin/jvm/functions/Function0;", "onDismissCallback", "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;", "m", "Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;", "X", "()Lcom/qennnsad/aknkaksd/presentation/ui/base/BaseDialogFragment$Position;", "position", "", "n", "F", ExifInterface.LONGITUDE_WEST, "()F", "dimAmount", ExifInterface.GPS_MEASUREMENT_INTERRUPTED, "()Z", "cancelable", "<init>", "()V", "o", "a", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
@dagger.hilt.android.b
/* loaded from: classes3.dex */
public final class UpdateFragment extends com.qennnsad.aknkaksd.presentation.module.appupdate.a<y1> {
    @m8.g

    /* renamed from: o  reason: collision with root package name */
    public static final a f50959o = new a(null);
    @m8.g

    /* renamed from: g  reason: collision with root package name */
    private final Lazy f50960g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f50961h;
    @m8.h

    /* renamed from: i  reason: collision with root package name */
    private String f50962i;
    @m8.h

    /* renamed from: j  reason: collision with root package name */
    private String f50963j;
    @m8.h

    /* renamed from: k  reason: collision with root package name */
    private String f50964k;
    @m8.h

    /* renamed from: l  reason: collision with root package name */
    private Function0<Unit> f50965l;
    @m8.g

    /* renamed from: m  reason: collision with root package name */
    private final BaseDialogFragment.Position f50966m;

    /* renamed from: n  reason: collision with root package name */
    private final float f50967n;

    /* compiled from: UpdateFragment.kt */
    @Metadata(bv = {}, d1 = {"\u0000\u001e\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u000e\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0004\b\u0086\u0003\u0018\u00002\u00020\u0001B\t\b\u0002¢\u0006\u0004\b\n\u0010\u000bJ.\u0010\t\u001a\u00020\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0006\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0004H\u0007¨\u0006\f"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment$a;", "", "", "isForceUpdate", "", "desc", "web", "version", "Lcom/qennnsad/aknkaksd/presentation/module/appupdate/UpdateFragment;", "a", "<init>", "()V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a {
        private a() {
        }

        public /* synthetic */ a(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }

        @JvmStatic
        @m8.g
        public final UpdateFragment a(boolean z9, @m8.h String str, @m8.h String str2, @m8.h String str3) {
            UpdateFragment updateFragment = new UpdateFragment();
            updateFragment.setArguments(BundleKt.bundleOf(TuplesKt.to("desc", str), TuplesKt.to("isUpdate", Boolean.valueOf(z9)), TuplesKt.to("web", str2), TuplesKt.to("version", str3)));
            return updateFragment;
        }
    }

    public UpdateFragment() {
        Lazy lazy;
        lazy = LazyKt__LazyJVMKt.lazy(LazyThreadSafetyMode.NONE, (Function0) new UpdateFragment$special$$inlined$viewModels$default$2(new UpdateFragment$special$$inlined$viewModels$default$1(this)));
        this.f50960g = FragmentViewModelLazyKt.createViewModelLazy(this, Reflection.getOrCreateKotlinClass(UpdateViewModel.class), new UpdateFragment$special$$inlined$viewModels$default$3(lazy), new UpdateFragment$special$$inlined$viewModels$default$4(null, lazy), new UpdateFragment$special$$inlined$viewModels$default$5(this, lazy));
        this.f50966m = BaseDialogFragment.Position.CENTER;
        this.f50967n = 0.2f;
    }

    @JvmStatic
    @m8.g
    public static final UpdateFragment h0(boolean z9, @m8.h String str, @m8.h String str2, @m8.h String str3) {
        return f50959o.a(z9, str, str2, str3);
    }

    private final UpdateViewModel j0() {
        return (UpdateViewModel) this.f50960g.getValue();
    }

    private final void k0() {
        y1 y1Var = (y1) Y();
        y1Var.f63360g.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.appupdate.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UpdateFragment.l0(UpdateFragment.this, view);
            }
        });
        y1Var.f63357d.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.appupdate.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UpdateFragment.m0(UpdateFragment.this, view);
            }
        });
        y1Var.f63355b.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.appupdate.e
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UpdateFragment.n0(UpdateFragment.this, view);
            }
        });
        y1Var.f63362i.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.appupdate.d
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                UpdateFragment.o0(UpdateFragment.this, view);
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void l0(UpdateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.r0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void m0(UpdateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.q0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void n0(UpdateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.q0();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void o0(UpdateFragment this$0, View view) {
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        this$0.u0();
    }

    private final void p0() {
        y1 y1Var = (y1) Y();
        y1Var.f63356c.setMax(100);
        y1Var.f63356c.setProgress(0);
        TextView textView = y1Var.f63358e;
        String str = this.f50962i;
        if (str == null) {
            str = "";
        }
        textView.setText(HtmlCompat.fromHtml(str, 0));
        TextView textView2 = y1Var.f63361h;
        if (textView2.isEnabled()) {
            textView2.setText(getString(R.string.update_header, this.f50964k));
        }
        TextView textView3 = y1Var.f63359f;
        if (textView3.isEnabled()) {
            textView3.setText(getString(R.string.update_header, this.f50964k));
        }
        if (this.f50961h) {
            y1Var.f63360g.setVisibility(0);
            y1Var.f63357d.setVisibility(8);
            y1Var.f63355b.setVisibility(8);
            return;
        }
        y1Var.f63360g.setVisibility(0);
        y1Var.f63357d.setVisibility(0);
        y1Var.f63355b.setVisibility(0);
    }

    private final void q0() {
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.dismiss();
        }
    }

    private final void r0() {
        String a10 = j0().a();
        if (a10 != null) {
            Context requireContext = requireContext();
            Uri uriForFile = FileProvider.getUriForFile(requireContext, requireContext().getPackageName() + ".versionprovider", new File(a10));
            Intent intent = new Intent("android.intent.action.VIEW");
            intent.setDataAndType(uriForFile, "application/vnd.android.package-archive");
            intent.addFlags(1);
            intent.addFlags(2);
            startActivity(intent);
        }
    }

    /* JADX WARN: Removed duplicated region for block: B:10:0x0010 A[RETURN] */
    /* JADX WARN: Removed duplicated region for block: B:11:0x0011  */
    /*
        Code decompiled incorrectly, please refer to instructions dump.
        To view partially-correct code enable 'Show inconsistent code' option in preferences
    */
    private final void u0() {
        /*
            r2 = this;
            java.lang.String r0 = r2.f50963j
            if (r0 == 0) goto Ld
            boolean r0 = kotlin.text.StringsKt.isBlank(r0)
            if (r0 == 0) goto Lb
            goto Ld
        Lb:
            r0 = 0
            goto Le
        Ld:
            r0 = 1
        Le:
            if (r0 == 0) goto L11
            return
        L11:
            android.content.Intent r0 = new android.content.Intent
            r0.<init>()
            java.lang.String r1 = "android.intent.action.VIEW"
            r0.setAction(r1)
            java.lang.String r1 = r2.f50963j
            android.net.Uri r1 = android.net.Uri.parse(r1)
            r0.setData(r1)
            r2.startActivity(r0)
            return
        */
        throw new UnsupportedOperationException("Method not decompiled: com.qennnsad.aknkaksd.presentation.module.appupdate.UpdateFragment.u0():void");
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseDialogFragment
    protected boolean V() {
        return !this.f50961h;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseDialogFragment
    protected float W() {
        return this.f50967n;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseDialogFragment
    @m8.g
    protected BaseDialogFragment.Position X() {
        return this.f50966m;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseDialogFragment
    @m8.g
    /* renamed from: i0 */
    public y1 U(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup) {
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        y1 d4 = y1.d(inflater, viewGroup, false);
        Intrinsics.checkNotNullExpressionValue(d4, "inflate(inflater, container, false)");
        return d4;
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.BaseDialogFragment, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(@m8.h Bundle bundle) {
        super.onCreate(bundle);
        Bundle requireArguments = requireArguments();
        this.f50962i = requireArguments.getString("desc");
        this.f50961h = requireArguments.getBoolean("isUpdate");
        this.f50963j = requireArguments.getString("web");
        this.f50964k = requireArguments.getString("version");
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnDismissListener
    public void onDismiss(@m8.g DialogInterface dialog) {
        Intrinsics.checkNotNullParameter(dialog, "dialog");
        super.onDismiss(dialog);
        Function0<Unit> function0 = this.f50965l;
        if (function0 != null) {
            function0.invoke();
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onViewCreated(@m8.g View view, @m8.h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        p0();
        k0();
    }

    public final void s0(@m8.g Function0<Unit> function) {
        Intrinsics.checkNotNullParameter(function, "function");
        this.f50965l = function;
    }

    public final void t0(@m8.g FragmentActivity activity) {
        Intrinsics.checkNotNullParameter(activity, "activity");
        if (isAdded() || isVisible()) {
            return;
        }
        show(activity.getSupportFragmentManager(), "update_fragment");
    }
}
