package com.qennnsad.aknkaksd.presentation.module.auth.captcha;

import android.app.Dialog;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.Button;
import android.widget.ImageView;
import androidx.exifinterface.media.ExifInterface;
import androidx.fragment.app.DialogFragment;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText;
import com.qennnsad.aknkaksd.util.z0;
import e5.a2;
import io.sentry.clientreport.e;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.Intrinsics;
import kotlin.text.StringsKt__StringsJVMKt;
import kotlin.text.StringsKt__StringsKt;

/* compiled from: GraphCaptchaDialog.kt */
@Metadata(bv = {}, d1 = {"\u0000N\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0002\b\t\u0018\u00002\u00020\u0001B-\u0012\u0006\u0010\u0012\u001a\u00020\u000f\u0012\u0006\u0010\u000b\u001a\u00020\n\u0012\f\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\f0\u0015\u0012\u0006\u0010\u001c\u001a\u00020\u0019¢\u0006\u0004\b$\u0010%J&\u0010\t\u001a\u0004\u0018\u00010\b2\u0006\u0010\u0003\u001a\u00020\u00022\b\u0010\u0005\u001a\u0004\u0018\u00010\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u000e\u0010\r\u001a\u00020\f2\u0006\u0010\u000b\u001a\u00020\nJ\b\u0010\u000e\u001a\u00020\fH\u0016R\u0014\u0010\u0012\u001a\u00020\u000f8\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0010\u0010\u0011R\u0016\u0010\u000b\u001a\u00020\n8\u0002@\u0002X\u0082\u000e¢\u0006\u0006\n\u0004\b\u0013\u0010\u0014R\u001a\u0010\u0018\u001a\b\u0012\u0004\u0012\u00020\f0\u00158\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u0016\u0010\u0017R\u0014\u0010\u001c\u001a\u00020\u00198\u0002X\u0082\u0004¢\u0006\u0006\n\u0004\b\u001a\u0010\u001bR$\u0010\u001e\u001a\u0004\u0018\u00010\u001d8\u0006@\u0006X\u0086\u000e¢\u0006\u0012\n\u0004\b\u001e\u0010\u001f\u001a\u0004\b \u0010!\"\u0004\b\"\u0010#¨\u0006&"}, d2 = {"Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/d;", "Landroidx/fragment/app/DialogFragment;", "Landroid/view/LayoutInflater;", "inflater", "Landroid/view/ViewGroup;", com.google.android.exoplayer2.text.ttml.d.W, "Landroid/os/Bundle;", "savedInstanceState", "Landroid/view/View;", "onCreateView", "", "image", "", "a0", "onDestroyView", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;", "a", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;", e.b.f83079a, "b", "Ljava/lang/String;", "Lkotlin/Function0;", "c", "Lkotlin/jvm/functions/Function0;", "refreshCaptcha", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;", "d", "Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;", "captchaListener", "Le5/a2;", "binding", "Le5/a2;", ExifInterface.LONGITUDE_WEST, "()Le5/a2;", "Z", "(Le5/a2;)V", "<init>", "(Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/CaptchaReason;Ljava/lang/String;Lkotlin/jvm/functions/Function0;Lcom/qennnsad/aknkaksd/presentation/module/auth/captcha/a;)V", "app_pron_playerRelease"}, k = 1, mv = {1, 7, 1})
/* loaded from: classes3.dex */
public final class d extends DialogFragment {
    @m8.g

    /* renamed from: a  reason: collision with root package name */
    private final CaptchaReason f51017a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private String f51018b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final Function0<Unit> f51019c;
    @m8.g

    /* renamed from: d  reason: collision with root package name */
    private final com.qennnsad.aknkaksd.presentation.module.auth.captcha.a f51020d;
    @m8.h

    /* renamed from: e  reason: collision with root package name */
    private a2 f51021e;

    /* compiled from: TextView.kt */
    @Metadata(bv = {}, d1 = {"\u0000#\n\u0000\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\r\n\u0000\n\u0002\u0010\b\n\u0002\b\u0007*\u0001\u0000\b\n\u0018\u00002\u00020\u0001J\u0012\u0010\u0005\u001a\u00020\u00042\b\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J*\u0010\f\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\b2\u0006\u0010\u000b\u001a\u00020\bH\u0016J*\u0010\u000e\u001a\u00020\u00042\b\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0006\u0010\t\u001a\u00020\b2\u0006\u0010\r\u001a\u00020\b2\u0006\u0010\n\u001a\u00020\bH\u0016¨\u0006\u000f¸\u0006\u0000"}, d2 = {"androidx/core/widget/TextViewKt$addTextChangedListener$textWatcher$1", "Landroid/text/TextWatcher;", "Landroid/text/Editable;", "s", "", "afterTextChanged", "", "text", "", com.google.android.exoplayer2.text.ttml.d.f25725o0, "count", com.google.android.exoplayer2.text.ttml.d.f25712d0, "beforeTextChanged", com.google.android.exoplayer2.text.ttml.d.f25711c0, "onTextChanged", "core-ktx_release"}, k = 1, mv = {1, 7, 1})
    /* loaded from: classes3.dex */
    public static final class a implements TextWatcher {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ a2 f51022a;

        public a(a2 a2Var) {
            this.f51022a = a2Var;
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(@m8.h Editable editable) {
            boolean isBlank;
            Button button = this.f51022a.f62241d;
            boolean z9 = false;
            if (editable != null) {
                isBlank = StringsKt__StringsJVMKt.isBlank(editable);
                if (!isBlank) {
                    z9 = true;
                }
            }
            button.setEnabled(z9);
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(@m8.h CharSequence charSequence, int i4, int i10, int i11) {
        }
    }

    public d(@m8.g CaptchaReason reason, @m8.g String image, @m8.g Function0<Unit> refreshCaptcha, @m8.g com.qennnsad.aknkaksd.presentation.module.auth.captcha.a captchaListener) {
        Intrinsics.checkNotNullParameter(reason, "reason");
        Intrinsics.checkNotNullParameter(image, "image");
        Intrinsics.checkNotNullParameter(refreshCaptcha, "refreshCaptcha");
        Intrinsics.checkNotNullParameter(captchaListener, "captchaListener");
        this.f51017a = reason;
        this.f51018b = image;
        this.f51019c = refreshCaptcha;
        this.f51020d = captchaListener;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void X(a2 this_apply, d this$0, View view) {
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        Editable text = this_apply.f62239b.getText();
        if (text != null) {
            text.clear();
        }
        this$0.f51019c.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public static final void Y(a2 this_apply, d this$0, View view) {
        CharSequence trim;
        boolean isBlank;
        Intrinsics.checkNotNullParameter(this_apply, "$this_apply");
        Intrinsics.checkNotNullParameter(this$0, "this$0");
        trim = StringsKt__StringsKt.trim((CharSequence) String.valueOf(this_apply.f62239b.getText()));
        String obj = trim.toString();
        isBlank = StringsKt__StringsJVMKt.isBlank(obj);
        if (!isBlank) {
            this$0.f51020d.B(obj, this$0.f51017a);
            this$0.dismiss();
        }
    }

    @m8.h
    public final a2 W() {
        return this.f51021e;
    }

    public final void Z(@m8.h a2 a2Var) {
        this.f51021e = a2Var;
    }

    public final void a0(@m8.g String image) {
        ImageView imageView;
        Intrinsics.checkNotNullParameter(image, "image");
        this.f51018b = image;
        a2 a2Var = this.f51021e;
        if (a2Var == null || (imageView = a2Var.f62240c) == null) {
            return;
        }
        imageView.setImageBitmap(z0.l(image));
    }

    @Override // androidx.fragment.app.Fragment
    @m8.h
    public View onCreateView(@m8.g LayoutInflater inflater, @m8.h ViewGroup viewGroup, @m8.h Bundle bundle) {
        Window window;
        Intrinsics.checkNotNullParameter(inflater, "inflater");
        final a2 d4 = a2.d(getLayoutInflater(), viewGroup, false);
        Dialog dialog = getDialog();
        if (dialog != null && (window = dialog.getWindow()) != null) {
            window.setBackgroundDrawable(new ColorDrawable(0));
        }
        setStyle(2, R.style.loading_dialog_style);
        d4.f62242e.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.captcha.c
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.X(a2.this, this, view);
            }
        });
        d4.f62241d.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.module.auth.captcha.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.Y(a2.this, this, view);
            }
        });
        OneKeyClearEditText code = d4.f62239b;
        Intrinsics.checkNotNullExpressionValue(code, "code");
        code.addTextChangedListener(new a(d4));
        d4.f62239b.requestFocus();
        d4.f62240c.setImageBitmap(z0.l(this.f51018b));
        this.f51021e = d4;
        return d4.getRoot();
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.f51021e = null;
    }
}
