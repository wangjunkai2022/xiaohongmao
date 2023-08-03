package com.qennnsad.aknkaksd.util.dialog;

import android.app.Activity;
import android.app.Dialog;
import android.content.Context;
import android.content.DialogInterface;
import android.os.Bundle;
import android.view.View;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.didi.live.spring.R;
import com.wang.avi.AVLoadingIndicatorView;

/* compiled from: LodingDialog.java */
/* loaded from: classes3.dex */
public class c extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private Context f54676a;

    /* renamed from: b  reason: collision with root package name */
    private AVLoadingIndicatorView f54677b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f54678c;

    /* renamed from: d  reason: collision with root package name */
    private String f54679d;

    /* renamed from: e  reason: collision with root package name */
    private boolean f54680e;

    public c(@NonNull Context context) {
        super(context, R.style.loading_dialog_style);
        this.f54679d = " ";
        this.f54676a = context;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public /* synthetic */ void b() {
        this.f54677b.hide();
    }

    @Override // android.app.Dialog, android.content.DialogInterface
    public void dismiss() {
        super.dismiss();
        AVLoadingIndicatorView aVLoadingIndicatorView = this.f54677b;
        if (aVLoadingIndicatorView == null) {
            return;
        }
        aVLoadingIndicatorView.post(new Runnable() { // from class: com.qennnsad.aknkaksd.util.dialog.b
            @Override // java.lang.Runnable
            public final void run() {
                c.this.b();
            }
        });
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        if (this.f54680e) {
            return;
        }
        this.f54680e = true;
        super.onCreate(bundle);
        View inflate = View.inflate(this.f54676a, R.layout.dialog_loading, null);
        TextView textView = (TextView) inflate.findViewById(R.id.id_tv_loading_dialog_text);
        this.f54678c = textView;
        textView.setText(this.f54679d);
        this.f54677b = (AVLoadingIndicatorView) inflate.findViewById(R.id.AVLoadingIndicatorView);
        setContentView(inflate, new LinearLayout.LayoutParams(-1, -1));
        this.f54680e = false;
    }

    @Override // android.app.Dialog
    public void show() {
        Context context = this.f54676a;
        if (!(context instanceof Activity) || ((Activity) context).isFinishing()) {
            return;
        }
        super.show();
        this.f54677b.show();
    }

    protected c(@NonNull Context context, boolean z9, @Nullable DialogInterface.OnCancelListener onCancelListener) {
        super(context, z9, onCancelListener);
        this.f54679d = " ";
    }

    public c(@NonNull Context context, String str) {
        super(context, R.style.loading_dialog_style);
        this.f54679d = " ";
        if (str != null) {
            this.f54679d = str;
        }
        this.f54676a = context;
    }
}
