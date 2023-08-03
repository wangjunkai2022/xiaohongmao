package com.qennnsad.aknkaksd.presentation.ui.room.player.pk;

import android.app.Dialog;
import android.content.Context;
import android.net.Uri;
import android.os.Bundle;
import android.os.CountDownTimer;
import android.text.SpannableString;
import android.view.View;
import android.view.Window;
import android.view.WindowManager;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.core.content.ContextCompat;
import com.didi.live.spring.R;
import com.facebook.drawee.view.SimpleDraweeView;
import com.qennnsad.aknkaksd.presentation.ui.room.player.pk.d;
import com.qennnsad.aknkaksd.util.h1;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;

/* compiled from: PkAcceptDialog.java */
/* loaded from: classes3.dex */
public class d extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private final String f53579a;

    /* renamed from: b  reason: collision with root package name */
    private final String f53580b;

    /* renamed from: c  reason: collision with root package name */
    private final String f53581c;

    /* renamed from: d  reason: collision with root package name */
    private final String f53582d;

    /* renamed from: e  reason: collision with root package name */
    private final Function0<Unit> f53583e;

    /* renamed from: f  reason: collision with root package name */
    private CountDownTimer f53584f;

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: PkAcceptDialog.java */
    /* loaded from: classes3.dex */
    public class a extends CountDownTimer {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ TextView f53585a;

        /* JADX WARN: 'super' call moved to the top of the method (can break code semantics) */
        a(long j4, long j10, TextView textView) {
            super(j4, j10);
            this.f53585a = textView;
        }

        /* JADX INFO: Access modifiers changed from: private */
        public static /* synthetic */ void b(TextView textView, long j4) {
            textView.setText("拒绝" + (j4 / 1000) + "s");
        }

        @Override // android.os.CountDownTimer
        public void onFinish() {
            d.this.f53584f = null;
            if (d.this.isShowing()) {
                d.this.cancel();
            }
        }

        @Override // android.os.CountDownTimer
        public void onTick(final long j4) {
            final TextView textView = this.f53585a;
            textView.post(new Runnable() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.pk.c
                @Override // java.lang.Runnable
                public final void run() {
                    d.a.b(textView, j4);
                }
            });
        }
    }

    public d(@NonNull Context context, String str, String str2, String str3, String str4, Function0<Unit> function0) {
        super(context);
        f5.e c10 = ((f5.d) dagger.hilt.c.a(context.getApplicationContext(), f5.d.class)).c();
        Uri j4 = c10.g().j(str);
        Uri j10 = c10.g().j(str2);
        this.f53579a = j4 == null ? "" : j4.toString();
        this.f53580b = j10 == null ? "" : j10.toString();
        this.f53581c = str3;
        if (!str4.contains(",")) {
            this.f53582d = str4;
        } else {
            this.f53582d = str4.replaceFirst(",", "\n").replace(str4.substring(str4.lastIndexOf(",")), "");
        }
        this.f53583e = function0;
        setCanceledOnTouchOutside(false);
    }

    private void d() {
        TextView textView = (TextView) findViewById(R.id.btn_reject);
        ((SimpleDraweeView) findViewById(R.id.avatar_competitor_1)).setImageURI(this.f53579a);
        ((SimpleDraweeView) findViewById(R.id.avatar_competitor_2)).setImageURI(this.f53580b);
        SpannableString spannableString = new SpannableString(this.f53582d);
        int indexOf = this.f53582d.indexOf(this.f53581c);
        spannableString.setSpan(new com.qennnsad.aknkaksd.presentation.ui.room.pubmsg.a(this.f53582d, this.f53581c, ContextCompat.getColor(getContext(), R.color.pk_btn_selection_gradient_start), ContextCompat.getColor(getContext(), R.color.pk_btn_selection_gradient_end)), indexOf, this.f53581c.length() + indexOf, 33);
        ((TextView) findViewById(R.id.tv_content)).setText(spannableString);
        ((TextView) findViewById(R.id.btn_ok)).setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.pk.a
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.this.e(view);
            }
        });
        textView.setOnClickListener(new View.OnClickListener() { // from class: com.qennnsad.aknkaksd.presentation.ui.room.player.pk.b
            @Override // android.view.View.OnClickListener
            public final void onClick(View view) {
                d.this.f(view);
            }
        });
        this.f53584f = new a(30000L, 1000L, textView).start();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void e(View view) {
        this.f53584f.cancel();
        dismiss();
        this.f53583e.invoke();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void f(View view) {
        cancel();
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.pk_confirmation_dialog);
        d();
    }

    @Override // android.app.Dialog
    public void show() {
        Window window = getWindow();
        window.getDecorView().setPadding(0, 0, 0, 0);
        WindowManager.LayoutParams attributes = window.getAttributes();
        attributes.width = (h1.g(getContext()).widthPixels * 9) / 10;
        attributes.height = -2;
        window.setAttributes(attributes);
        window.setBackgroundDrawableResource(17170445);
        super.show();
    }
}
