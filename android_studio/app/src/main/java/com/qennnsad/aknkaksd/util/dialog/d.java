package com.qennnsad.aknkaksd.util.dialog;

import android.app.Dialog;
import android.content.Context;
import android.os.Bundle;
import android.util.DisplayMetrics;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import android.widget.TextView;
import com.didi.live.spring.R;
import java.util.ArrayList;
import java.util.List;

/* compiled from: MenuDialog.java */
/* loaded from: classes3.dex */
public class d extends Dialog implements View.OnClickListener {

    /* renamed from: a  reason: collision with root package name */
    private Context f54681a;

    /* renamed from: b  reason: collision with root package name */
    private ViewGroup f54682b;

    /* renamed from: c  reason: collision with root package name */
    private LinearLayout f54683c;

    /* renamed from: d  reason: collision with root package name */
    private List<String> f54684d;

    /* renamed from: e  reason: collision with root package name */
    private List<View> f54685e;

    /* renamed from: f  reason: collision with root package name */
    private b f54686f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f54687g;

    /* renamed from: h  reason: collision with root package name */
    private int f54688h;

    /* renamed from: i  reason: collision with root package name */
    private int f54689i;

    /* renamed from: j  reason: collision with root package name */
    private int f54690j;

    /* renamed from: k  reason: collision with root package name */
    private DisplayMetrics f54691k;

    /* compiled from: MenuDialog.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.dismiss();
        }
    }

    /* compiled from: MenuDialog.java */
    /* loaded from: classes3.dex */
    public interface b {
        void a(String str);
    }

    public d(Context context, List<String> list, b bVar) {
        super(context, R.style.dialog_default_style);
        this.f54687g = false;
        this.f54688h = -1;
        this.f54689i = -1;
        this.f54690j = -1;
        this.f54681a = context;
        this.f54684d = list;
        this.f54686f = bVar;
        this.f54691k = context.getResources().getDisplayMetrics();
    }

    private void a() {
        int i4;
        List<View> list;
        if (!this.f54687g || (i4 = this.f54688h) < 0 || i4 >= this.f54684d.size() || (list = this.f54685e) == null || list.isEmpty()) {
            return;
        }
        int i10 = 0;
        while (i10 < this.f54685e.size()) {
            this.f54685e.get(i10).findViewById(R.id.menu_select_icon).setVisibility(this.f54688h == i10 ? 0 : 8);
            i10++;
        }
    }

    public void b() {
        int i4;
        if (!this.f54687g || (i4 = this.f54690j) < 0 || i4 >= this.f54684d.size()) {
            return;
        }
        this.f54688h = this.f54690j;
        a();
    }

    @Override // android.view.View.OnClickListener
    public void onClick(View view) {
        int intValue = ((Integer) view.getTag()).intValue();
        if (this.f54687g && intValue != this.f54689i) {
            this.f54690j = this.f54688h;
            this.f54688h = intValue;
            a();
        }
        String str = this.f54684d.get(intValue);
        b bVar = this.f54686f;
        if (bVar != null) {
            bVar.a(str);
        }
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        getWindow().setLayout(-1, -1);
        ViewGroup viewGroup = (ViewGroup) View.inflate(this.f54681a, R.layout.nim_menu_dialog, null);
        this.f54682b = viewGroup;
        this.f54683c = (LinearLayout) viewGroup.findViewById(R.id.menu_dialog_items_root);
        if (this.f54687g) {
            this.f54685e = new ArrayList();
        }
        for (int i4 = 0; i4 < this.f54684d.size(); i4++) {
            View inflate = View.inflate(this.f54681a, R.layout.nim_menu_dialog_item, null);
            ((TextView) inflate.findViewById(R.id.menu_button)).setText(this.f54684d.get(i4));
            RelativeLayout relativeLayout = (RelativeLayout) inflate.findViewById(R.id.menu_button_click_layout);
            if (i4 == 0 && this.f54684d.size() == 2) {
                relativeLayout.setBackgroundResource(R.drawable.nim_list_item_selector_ios_cancel);
            } else if (i4 == 0) {
                relativeLayout.setBackgroundResource(R.drawable.nim_list_item_selector_ios_top);
            } else if (i4 + 1 == this.f54684d.size()) {
                relativeLayout.setBackgroundResource(R.drawable.nim_list_item_selector_ios_cancel);
                RelativeLayout.LayoutParams layoutParams = new RelativeLayout.LayoutParams(-1, -2);
                layoutParams.setMargins(0, 20, 0, 0);
                relativeLayout.setLayoutParams(layoutParams);
            } else if (i4 + 2 == this.f54684d.size()) {
                relativeLayout.setBackgroundResource(R.drawable.nim_list_item_selector_ios_bottom);
            } else {
                relativeLayout.setBackgroundResource(R.drawable.nim_list_item_selector_ios_center);
            }
            inflate.setTag(Integer.valueOf(i4));
            inflate.setOnClickListener(this);
            if (this.f54687g) {
                this.f54685e.add(inflate);
            }
            this.f54683c.addView(inflate);
        }
        a();
        this.f54682b.setOnClickListener(new a());
        setContentView(this.f54682b);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.width = this.f54691k.widthPixels;
        attributes.height = -1;
        attributes.gravity = 80;
        getWindow().setAttributes(attributes);
        getWindow().setContentView(this.f54682b);
    }

    public d(Context context, List<String> list, int i4, int i10, b bVar) {
        this(context, list, bVar);
        if (i4 >= 0 && i4 < list.size()) {
            this.f54687g = true;
            this.f54688h = i4;
            this.f54690j = i4;
            this.f54689i = i10;
        }
        this.f54691k = context.getResources().getDisplayMetrics();
    }
}
