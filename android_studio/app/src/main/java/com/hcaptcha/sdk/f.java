package com.hcaptcha.sdk;

import android.animation.Animator;
import android.animation.AnimatorListenerAdapter;
import android.app.Dialog;
import android.content.DialogInterface;
import android.graphics.drawable.ColorDrawable;
import android.os.Bundle;
import android.os.Handler;
import android.os.Looper;
import android.util.AndroidRuntimeException;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.webkit.WebView;
import android.widget.LinearLayout;
import androidx.annotation.Nullable;
import androidx.fragment.app.DialogFragment;
import androidx.fragment.app.Fragment;
import androidx.fragment.app.FragmentActivity;
import androidx.fragment.app.FragmentManager;
import com.hcaptcha.sdk.q;
import java.util.Objects;
import lombok.NonNull;

/* loaded from: classes2.dex */
public final class f extends DialogFragment implements p {

    /* renamed from: d  reason: collision with root package name */
    private static final String f38374d = "HCaptchaDialogFragment";

    /* renamed from: e  reason: collision with root package name */
    public static final String f38375e = "hCaptchaConfig";

    /* renamed from: f  reason: collision with root package name */
    public static final String f38376f = "hCaptchaInternalConfig";

    /* renamed from: g  reason: collision with root package name */
    public static final String f38377g = "hCaptchaDialogListener";

    /* renamed from: h  reason: collision with root package name */
    public static final /* synthetic */ boolean f38378h = false;
    @Nullable

    /* renamed from: a  reason: collision with root package name */
    private m f38379a;

    /* renamed from: b  reason: collision with root package name */
    private LinearLayout f38380b;

    /* renamed from: c  reason: collision with root package name */
    private float f38381c = 0.6f;

    /* loaded from: classes2.dex */
    public class a extends AnimatorListenerAdapter {
        public a() {
        }

        @Override // android.animation.AnimatorListenerAdapter, android.animation.Animator.AnimatorListener
        public void onAnimationEnd(Animator animator) {
            f.this.f38380b.setVisibility(8);
        }
    }

    private void W() {
        if (this.f38379a.c().getLoading().booleanValue()) {
            this.f38380b.animate().alpha(0.0f).setDuration(200L).setListener(new a());
            return;
        }
        Dialog dialog = getDialog();
        if (dialog != null) {
            dialog.getWindow().addFlags(2);
            dialog.getWindow().setDimAmount(this.f38381c);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ boolean X(View view, int i4, KeyEvent keyEvent) {
        m mVar;
        return keyEvent.getAction() == 0 && i4 == 4 && (mVar = this.f38379a) != null && mVar.h(new HCaptchaException(HCaptchaError.CHALLENGE_CLOSED));
    }

    public static f Y(@NonNull HCaptchaConfig hCaptchaConfig, @NonNull i iVar, @NonNull HCaptchaStateListener hCaptchaStateListener) {
        Objects.requireNonNull(hCaptchaConfig, "config is marked non-null but is null");
        Objects.requireNonNull(iVar, "internalConfig is marked non-null but is null");
        Objects.requireNonNull(hCaptchaStateListener, "listener is marked non-null but is null");
        k.a("DialogFragment.newInstance");
        Bundle bundle = new Bundle();
        bundle.putSerializable(f38375e, hCaptchaConfig);
        bundle.putSerializable(f38376f, iVar);
        bundle.putParcelable(f38377g, hCaptchaStateListener);
        f fVar = new f();
        fVar.setArguments(bundle);
        return fVar;
    }

    @Override // com.hcaptcha.sdk.p
    public void G(@androidx.annotation.NonNull FragmentActivity fragmentActivity) {
        FragmentManager supportFragmentManager = fragmentActivity.getSupportFragmentManager();
        String str = f38374d;
        Fragment findFragmentByTag = supportFragmentManager.findFragmentByTag(str);
        if (findFragmentByTag == null || !findFragmentByTag.isAdded()) {
            show(supportFragmentManager, str);
        } else {
            k.c("DialogFragment was already added.");
        }
    }

    @Override // com.hcaptcha.sdk.tasks.a
    public void J(@androidx.annotation.NonNull HCaptchaException hCaptchaException) {
        m mVar = this.f38379a;
        boolean z9 = mVar != null && mVar.h(hCaptchaException);
        if (isAdded() && !z9) {
            dismissAllowingStateLoss();
        }
        m mVar2 = this.f38379a;
        if (mVar2 != null) {
            if (z9) {
                mVar2.f();
            } else {
                mVar2.d().onFailure(hCaptchaException);
            }
        }
    }

    @Override // com.hcaptcha.sdk.tasks.b
    public void N() {
        if (this.f38379a.c().getSize() != HCaptchaSize.INVISIBLE) {
            W();
        }
    }

    @Override // com.hcaptcha.sdk.tasks.d
    /* renamed from: Z */
    public void onSuccess(String str) {
        if (isAdded()) {
            dismissAllowingStateLoss();
        }
        this.f38379a.d().onSuccess(str);
    }

    @Override // com.hcaptcha.sdk.tasks.c
    public void e() {
        if (this.f38379a.c().getSize() == HCaptchaSize.INVISIBLE) {
            W();
        }
        this.f38379a.d().onOpen();
    }

    @Override // androidx.fragment.app.DialogFragment, android.content.DialogInterface.OnCancelListener
    public void onCancel(@androidx.annotation.NonNull DialogInterface dialogInterface) {
        k.a("DialogFragment.onCancel");
        super.onCancel(dialogInterface);
        J(new HCaptchaException(HCaptchaError.CHALLENGE_CLOSED));
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setStyle(2, q.m.f38940f2);
    }

    @Override // androidx.fragment.app.Fragment
    public View onCreateView(@androidx.annotation.NonNull LayoutInflater layoutInflater, ViewGroup viewGroup, Bundle bundle) {
        View view;
        k.a("DialogFragment.onCreateView");
        HCaptchaStateListener hCaptchaStateListener = null;
        View view2 = null;
        try {
            Bundle arguments = getArguments();
            HCaptchaStateListener hCaptchaStateListener2 = (HCaptchaStateListener) b.b(arguments, f38377g, HCaptchaStateListener.class);
            try {
                HCaptchaConfig hCaptchaConfig = (HCaptchaConfig) b.c(arguments, f38375e, HCaptchaConfig.class);
                i iVar = (i) b.c(arguments, f38376f, i.class);
                int i4 = 0;
                view2 = layoutInflater.inflate(q.k.D, viewGroup, false);
                view2.setFocusableInTouchMode(true);
                view2.requestFocus();
                view2.setOnKeyListener(new View.OnKeyListener() { // from class: com.hcaptcha.sdk.e
                    @Override // android.view.View.OnKeyListener
                    public final boolean onKey(View view3, int i10, KeyEvent keyEvent) {
                        boolean X;
                        X = f.this.X(view3, i10, keyEvent);
                        return X;
                    }
                });
                k.a("DialogFragment.onCreateView inflated");
                WebView webView = (WebView) view2.findViewById(q.h.X1);
                LinearLayout linearLayout = (LinearLayout) view2.findViewById(q.h.F0);
                this.f38380b = linearLayout;
                if (!hCaptchaConfig.getLoading().booleanValue()) {
                    i4 = 8;
                }
                linearLayout.setVisibility(i4);
                this.f38379a = new m(new Handler(Looper.getMainLooper()), requireContext(), hCaptchaConfig, iVar, this, hCaptchaStateListener2, webView);
                return view2;
            } catch (AndroidRuntimeException | ClassCastException unused) {
                view = view2;
                hCaptchaStateListener = hCaptchaStateListener2;
                k.c("Cannot create view. Dismissing dialog...");
                dismiss();
                if (hCaptchaStateListener != null) {
                    hCaptchaStateListener.onFailure(new HCaptchaException(HCaptchaError.ERROR));
                }
                return view;
            }
        } catch (AndroidRuntimeException | ClassCastException unused2) {
            view = null;
        }
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroy() {
        k.a("DialogFragment.onDestroy");
        super.onDestroy();
        m mVar = this.f38379a;
        if (mVar != null) {
            mVar.b();
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onStart() {
        k.a("DialogFragment.onStart");
        super.onStart();
        Dialog dialog = getDialog();
        if (dialog == null || this.f38379a == null) {
            return;
        }
        Window window = dialog.getWindow();
        window.setBackgroundDrawable(new ColorDrawable(0));
        this.f38381c = window.getAttributes().dimAmount;
        if (this.f38379a.c().getLoading().booleanValue()) {
            return;
        }
        window.clearFlags(2);
        window.setDimAmount(0.0f);
    }
}
