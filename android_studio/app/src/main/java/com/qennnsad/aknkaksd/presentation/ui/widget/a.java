package com.qennnsad.aknkaksd.presentation.ui.widget;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.StringRes;
import com.didi.live.spring.R;

/* compiled from: MessageDialog.java */
/* loaded from: classes3.dex */
public class a extends Dialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private TextView f54350a;

    /* renamed from: b  reason: collision with root package name */
    private TextView f54351b;

    /* renamed from: c  reason: collision with root package name */
    private Button f54352c;

    /* renamed from: d  reason: collision with root package name */
    private Button f54353d;

    /* renamed from: e  reason: collision with root package name */
    private String f54354e;

    /* renamed from: f  reason: collision with root package name */
    private String f54355f;

    /* renamed from: g  reason: collision with root package name */
    private String f54356g;

    /* renamed from: h  reason: collision with root package name */
    private String f54357h;

    /* renamed from: i  reason: collision with root package name */
    private InterfaceC0456a f54358i;

    /* renamed from: j  reason: collision with root package name */
    private boolean f54359j;

    /* compiled from: MessageDialog.java */
    /* renamed from: com.qennnsad.aknkaksd.presentation.ui.widget.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    public interface InterfaceC0456a {
        void a(a aVar);

        void b(a aVar);
    }

    public a(Context context) {
        super(context, R.style.DialogMessageStyle);
        this.f54356g = "确认";
        this.f54357h = "取消";
    }

    private void a() {
        this.f54351b = (TextView) findViewById(R.id.dialog_message_content);
        this.f54352c = (Button) findViewById(R.id.dialog_message_cancel);
        this.f54353d = (Button) findViewById(R.id.dialog_message_commit);
        this.f54350a = (TextView) findViewById(R.id.dialog_title);
    }

    private void c() {
        String str = this.f54354e;
        if (str != null && !str.isEmpty()) {
            this.f54350a.setText(this.f54354e);
            this.f54350a.setVisibility(0);
        } else {
            this.f54350a.setVisibility(8);
        }
        if (this.f54359j) {
            this.f54352c.setVisibility(8);
        }
        this.f54351b.setText(this.f54355f);
        this.f54352c.setText(this.f54357h);
        this.f54353d.setText(this.f54356g);
        this.f54352c.setOnClickListener(this);
        this.f54353d.setOnClickListener(this);
    }

    public a b() {
        this.f54359j = true;
        return this;
    }

    public void d(@StringRes int i4) {
        e(getContext().getResources().getString(i4));
    }

    public void e(String str) {
        this.f54357h = str;
    }

    public void f(@StringRes int i4) {
        g(getContext().getResources().getString(i4));
    }

    public void g(String str) {
        this.f54356g = str;
    }

    public void h(int i4) {
        this.f54355f = getContext().getResources().getString(i4);
    }

    public void i(String str) {
        this.f54355f = str;
    }

    public void j(InterfaceC0456a interfaceC0456a) {
        this.f54358i = interfaceC0456a;
    }

    public void k(String str) {
        this.f54354e = str;
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        if (view == this.f54352c) {
            InterfaceC0456a interfaceC0456a = this.f54358i;
            if (interfaceC0456a != null) {
                interfaceC0456a.a(this);
                return;
            }
            return;
        }
        InterfaceC0456a interfaceC0456a2 = this.f54358i;
        if (interfaceC0456a2 != null) {
            interfaceC0456a2.b(this);
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(R.layout.dialog_message);
        a();
        c();
    }
}
