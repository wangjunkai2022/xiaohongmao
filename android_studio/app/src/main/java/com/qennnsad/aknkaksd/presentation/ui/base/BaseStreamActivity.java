package com.qennnsad.aknkaksd.presentation.ui.base;

import android.annotation.SuppressLint;
import android.app.Dialog;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.text.TextUtils;
import android.text.method.ScrollingMovementMethod;
import android.view.View;
import android.view.ViewGroup;
import android.view.Window;
import android.widget.CompoundButton;
import android.widget.Switch;
import android.widget.TextView;
import androidx.annotation.IdRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import com.didi.live.spring.R;
import com.google.android.material.bottomsheet.BottomSheetDialog;
import com.qennnsad.aknkaksd.BaseBeautyApplication;
import com.qennnsad.aknkaksd.data.bean.room.PrivateLimitBean;
import com.qennnsad.aknkaksd.data.bean.room.eyecatching.PinnedMessageBean;
import com.qennnsad.aknkaksd.data.bean.websocket.PopupWindowMsg;
import com.qennnsad.aknkaksd.data.websocket.WebSocketService;
import com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity;
import com.qennnsad.aknkaksd.presentation.ui.base.BaseStreamActivity;
import com.qennnsad.aknkaksd.presentation.ui.room.player.player.PlayerActivity;
import com.qennnsad.aknkaksd.presentation.ui.widget.a;
import com.qennnsad.aknkaksd.util.f1;
import com.qennnsad.aknkaksd.util.o0;
import com.qennnsad.aknkaksd.util.s1;
import com.qennnsad.aknkaksd.util.t0;
import java.util.concurrent.TimeUnit;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.functions.Function1;

@SuppressLint({"UseSwitchCompatOrMaterialCode"})
/* loaded from: classes3.dex */
public abstract class BaseStreamActivity<VB extends ViewBinding> extends BaseMvvmActivity<VB> implements n {

    /* renamed from: h  reason: collision with root package name */
    public final String f52467h = getClass().getSimpleName();

    /* renamed from: i  reason: collision with root package name */
    private final f5.e f52468i;

    /* renamed from: j  reason: collision with root package name */
    protected g5.a f52469j;

    /* renamed from: k  reason: collision with root package name */
    protected x4.a f52470k;

    /* renamed from: l  reason: collision with root package name */
    protected t0 f52471l;

    /* renamed from: m  reason: collision with root package name */
    protected com.qennnsad.aknkaksd.data.repository.m f52472m;

    /* renamed from: n  reason: collision with root package name */
    protected com.qennnsad.aknkaksd.data.websocket.j f52473n;

    /* renamed from: o  reason: collision with root package name */
    public c5.b f52474o;

    /* renamed from: p  reason: collision with root package name */
    protected boolean f52475p;

    /* renamed from: q  reason: collision with root package name */
    private BottomSheetDialog f52476q;

    /* renamed from: r  reason: collision with root package name */
    private TextView f52477r;

    /* renamed from: s  reason: collision with root package name */
    private Switch f52478s;

    /* renamed from: t  reason: collision with root package name */
    private Switch f52479t;

    /* renamed from: u  reason: collision with root package name */
    protected WebSocketService f52480u;

    /* renamed from: v  reason: collision with root package name */
    private com.qennnsad.aknkaksd.presentation.ui.widget.a f52481v;

    /* renamed from: w  reason: collision with root package name */
    private Dialog f52482w;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* loaded from: classes3.dex */
    public class a implements a.InterfaceC0456a {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ PinnedMessageBean f52483a;

        a(PinnedMessageBean pinnedMessageBean) {
            this.f52483a = pinnedMessageBean;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public /* synthetic */ Unit d() {
            BaseStreamActivity.this.a();
            com.qennnsad.aknkaksd.util.toast.a.h(R.string.room_live_manage_report_success);
            return Unit.INSTANCE;
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.widget.a.InterfaceC0456a
        public void a(com.qennnsad.aknkaksd.presentation.ui.widget.a aVar) {
            aVar.dismiss();
        }

        @Override // com.qennnsad.aknkaksd.presentation.ui.widget.a.InterfaceC0456a
        public void b(com.qennnsad.aknkaksd.presentation.ui.widget.a aVar) {
            if (aVar != null && aVar.isShowing()) {
                aVar.dismiss();
            }
            BaseStreamActivity.this.c();
            BaseStreamActivity.this.P().N(this.f52483a, new Function0() { // from class: com.qennnsad.aknkaksd.presentation.ui.base.m
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit d4;
                    d4 = BaseStreamActivity.a.this.d();
                    return d4;
                }
            });
        }
    }

    public BaseStreamActivity() {
        f5.e c10 = ((f5.d) dagger.hilt.c.a(BaseBeautyApplication.getContextInstance(), f5.d.class)).c();
        this.f52468i = c10;
        this.f52469j = c10.c();
        this.f52470k = c10.a();
        this.f52471l = c10.e();
        this.f52472m = c10.g();
        this.f52473n = c10.i();
        this.f52474o = c10.b();
        this.f52475p = false;
    }

    @SuppressLint({"CheckResult"})
    private void D0() {
        View findViewById = findViewById(R.id.imgbtn_toolbar_back);
        if (findViewById != null) {
            s1.T(findViewById, new Function0() { // from class: com.qennnsad.aknkaksd.presentation.ui.base.j
                @Override // kotlin.jvm.functions.Function0
                public final Object invoke() {
                    Unit v02;
                    v02 = BaseStreamActivity.this.v0();
                    return v02;
                }
            });
            f1.b(findViewById).M6(50L, TimeUnit.MILLISECONDS).a6(new q7.g() { // from class: com.qennnsad.aknkaksd.presentation.ui.base.l
                @Override // q7.g
                public final void accept(Object obj) {
                    BaseStreamActivity.this.w0((Unit) obj);
                }
            });
        }
    }

    private void G0(boolean z9) {
        this.f52469j.p0(z9 ? 1 : 0);
    }

    private void H0(boolean z9) {
        this.f52469j.q0(z9 ? 1 : 0);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void t0(Function1 function1, CompoundButton compoundButton, boolean z9) {
        H0(z9);
        if (function1 != null) {
            function1.invoke(Boolean.valueOf(z9));
        }
        N0(z9, true);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void u0(CompoundButton compoundButton, boolean z9) {
        G0(z9);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit v0() {
        onBackPressed();
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void w0(Unit unit) throws Throwable {
        onBackPressed();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ Unit x0(PrivateLimitBean privateLimitBean) {
        b5.a.g(privateLimitBean, this);
        return Unit.INSTANCE;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void y0(PopupWindowMsg popupWindowMsg) {
        d0(popupWindowMsg, new Function1() { // from class: com.qennnsad.aknkaksd.presentation.ui.base.k
            @Override // kotlin.jvm.functions.Function1
            public final Object invoke(Object obj) {
                Unit x02;
                x02 = BaseStreamActivity.this.x0((PrivateLimitBean) obj);
                return x02;
            }
        });
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void z0(View view) {
        I0(false);
    }

    public void A0(@Nullable String str) {
        com.qennnsad.aknkaksd.util.l.u(this, this.f52469j);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void B0(Intent intent, boolean z9) {
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void C() {
        com.qennnsad.aknkaksd.util.toast.a.b(R.string.msg_unknown_error, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void C0(Intent intent, boolean z9, Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void E0() {
        if (this.f52480u != null) {
            this.f52480u.F(com.qennnsad.aknkaksd.data.websocket.b.f47802b0, new com.qennnsad.aknkaksd.data.websocket.i() { // from class: com.qennnsad.aknkaksd.presentation.ui.base.i
                @Override // com.qennnsad.aknkaksd.data.websocket.i
                public final void a(Object obj) {
                    BaseStreamActivity.this.y0((PopupWindowMsg) obj);
                }
            });
            o0.a(this.f52467h, "Window Popup Listener registered.");
            com.qennnsad.aknkaksd.util.l.C(this, this.f52480u);
        }
    }

    public void F0() {
        G0(false);
        H0(false);
    }

    public void I0(boolean z9) {
        Switch r02 = this.f52478s;
        if (r02 != null) {
            r02.setChecked(z9);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public void J0() {
        Window window = getWindow();
        window.clearFlags(67108864);
        window.getDecorView().setSystemUiVisibility(com.im.freechat.utils.h.f43782b);
        window.addFlags(Integer.MIN_VALUE);
        window.setStatusBarColor(0);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void K() {
    }

    public void K0(String str) {
        StringBuilder sb = new StringBuilder();
        TextView textView = this.f52477r;
        if (textView != null) {
            String charSequence = textView.getText().toString();
            sb.append(charSequence);
            sb.append(TextUtils.isEmpty(charSequence) ? "" : "\n");
            sb.append("-");
            sb.append(str);
            this.f52477r.setText(sb.toString());
            this.f52477r.setGravity(80);
            sb.setLength(0);
        }
    }

    protected abstract void L0();

    public void M0(PinnedMessageBean pinnedMessageBean) {
        com.qennnsad.aknkaksd.presentation.ui.widget.a aVar = new com.qennnsad.aknkaksd.presentation.ui.widget.a(this);
        this.f52481v = aVar;
        aVar.i(getString(R.string.room_live_pinned_confirm_title));
        this.f52481v.j(new a(pinnedMessageBean));
        this.f52481v.show();
    }

    public void N0(boolean z9, boolean z10) {
        ViewGroup viewGroup = (ViewGroup) findViewById(R.id.fl_subtitles);
        if (viewGroup == null) {
            return;
        }
        viewGroup.setVisibility(z9 ? 0 : 8);
        if (z9) {
            this.f52477r = (TextView) findViewById(R.id.tv_subtitle);
            if (z10) {
                findViewById(R.id.iv_subtitle_close).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.base.f
                    @Override // android.view.View.OnClickListener
                    public final void onClick(View view) {
                        BaseStreamActivity.this.z0(view);
                    }
                });
            } else {
                findViewById(R.id.iv_subtitle_close).setVisibility(4);
            }
            this.f52477r.setMovementMethod(new ScrollingMovementMethod());
            this.f52477r.setText("");
        }
    }

    public void O0() {
        if (this.f52476q.isShowing()) {
            return;
        }
        this.f52476q.show();
    }

    protected abstract void P0();

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void a() {
        Dialog dialog = this.f52482w;
        if (dialog != null && dialog.isShowing()) {
            this.f52482w.dismiss();
            this.f52482w = null;
            return;
        }
        o0.n(this.f52467h, "Try to dismiss a dialog but dialog is null or already dismiss!");
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    @NonNull
    public Context b() {
        return getApplicationContext();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public Dialog c() {
        return p(null);
    }

    protected final <T extends View> T f0(@IdRes int i4) {
        return (T) findViewById(i4);
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void n() {
        com.qennnsad.aknkaksd.util.toast.a.b(R.string.msg_network_error, false);
    }

    protected abstract com.qennnsad.aknkaksd.presentation.common.l<?> n0();

    /* JADX INFO: Access modifiers changed from: protected */
    public void o0() {
        if (this.f52469j.F()) {
            return;
        }
        getWindow().addFlags(8192);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity, androidx.fragment.app.FragmentActivity, androidx.activity.ComponentActivity, androidx.core.app.ComponentActivity, android.app.Activity
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (n0() == null) {
            o0.n(this.f52467h, "ViewModel has not been instantiated in this Activity.");
        }
        if (this instanceof PlayerActivity) {
            C0(getIntent(), false, bundle);
        } else {
            B0(getIntent(), false);
        }
        L0();
        D0();
        r0();
        P0();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // com.qennnsad.aknkaksd.presentation.common.BaseMvvmActivity, androidx.fragment.app.FragmentActivity, android.app.Activity
    public void onResume() {
        E0();
        super.onResume();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public Dialog p(String str) {
        if (isFinishing()) {
            return null;
        }
        Dialog dialog = this.f52482w;
        if (dialog != null && dialog.isShowing()) {
            this.f52482w.dismiss();
        }
        com.qennnsad.aknkaksd.util.dialog.c cVar = str == null ? new com.qennnsad.aknkaksd.util.dialog.c(this) : new com.qennnsad.aknkaksd.util.dialog.c(this, str);
        this.f52482w = cVar;
        cVar.show();
        return this.f52482w;
    }

    public void p0() {
        com.qennnsad.aknkaksd.presentation.ui.widget.a aVar = this.f52481v;
        if (aVar == null || !aVar.isShowing()) {
            return;
        }
        this.f52481v.dismiss();
    }

    public void q0(boolean z9, @Nullable final Function1<Boolean, Void> function1) {
        if (this.f52476q == null) {
            BottomSheetDialog bottomSheetDialog = new BottomSheetDialog(this);
            this.f52476q = bottomSheetDialog;
            bottomSheetDialog.setContentView(R.layout.translation_bottomsheet);
            this.f52476q.setCanceledOnTouchOutside(true);
            if (!z9) {
                this.f52476q.findViewById(R.id.translation_row_audio).setVisibility(8);
            } else {
                this.f52476q.findViewById(R.id.translation_row_audio).setVisibility(0);
                Switch r32 = (Switch) this.f52476q.findViewById(R.id.sw_option_audio);
                this.f52478s = r32;
                if (r32 != null) {
                    r32.setChecked(this.f52469j.L());
                    this.f52478s.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.base.h
                        @Override // android.widget.CompoundButton.OnCheckedChangeListener
                        public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                            BaseStreamActivity.this.t0(function1, compoundButton, z10);
                        }
                    });
                }
            }
            Switch r33 = (Switch) this.f52476q.findViewById(R.id.sw_option_text);
            this.f52479t = r33;
            if (r33 != null) {
                r33.setChecked(this.f52469j.K());
                this.f52479t.setOnCheckedChangeListener(new CompoundButton.OnCheckedChangeListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.base.g
                    @Override // android.widget.CompoundButton.OnCheckedChangeListener
                    public final void onCheckedChanged(CompoundButton compoundButton, boolean z10) {
                        BaseStreamActivity.this.u0(compoundButton, z10);
                    }
                });
            }
        }
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void r(String str) {
        com.qennnsad.aknkaksd.util.toast.a.d(str, false);
    }

    protected abstract void r0();

    public boolean s0() {
        Dialog dialog = this.f52482w;
        return dialog != null && dialog.isShowing();
    }

    @Override // com.qennnsad.aknkaksd.presentation.ui.base.n
    public void v(@m8.h String str) {
        t0.r(this, str);
    }
}
