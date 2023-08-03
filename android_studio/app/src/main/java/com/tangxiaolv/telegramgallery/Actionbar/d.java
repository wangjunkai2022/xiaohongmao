package com.tangxiaolv.telegramgallery.Actionbar;

import android.content.Context;
import android.content.res.ColorStateList;
import android.graphics.Rect;
import android.graphics.drawable.Drawable;
import android.os.Build;
import android.text.Editable;
import android.text.TextWatcher;
import android.view.ActionMode;
import android.view.KeyEvent;
import android.view.Menu;
import android.view.MenuItem;
import android.view.MotionEvent;
import android.view.View;
import android.widget.EditText;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.tangxiaolv.telegramgallery.Components.a;
import com.tangxiaolv.telegramgallery.q;
import com.tangxiaolv.telegramgallery.r;
import java.lang.reflect.Field;

/* compiled from: ActionBarMenuItem.java */
/* loaded from: classes3.dex */
public class d extends FrameLayout {

    /* renamed from: a  reason: collision with root package name */
    private a.d f56002a;

    /* renamed from: b  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.Actionbar.c f56003b;

    /* renamed from: c  reason: collision with root package name */
    private com.tangxiaolv.telegramgallery.Components.a f56004c;

    /* renamed from: d  reason: collision with root package name */
    private EditText f56005d;

    /* renamed from: e  reason: collision with root package name */
    private ImageView f56006e;

    /* renamed from: f  reason: collision with root package name */
    protected ImageView f56007f;

    /* renamed from: g  reason: collision with root package name */
    private FrameLayout f56008g;

    /* renamed from: h  reason: collision with root package name */
    private boolean f56009h;

    /* renamed from: i  reason: collision with root package name */
    private k f56010i;

    /* renamed from: j  reason: collision with root package name */
    private Rect f56011j;

    /* renamed from: k  reason: collision with root package name */
    private int[] f56012k;

    /* renamed from: l  reason: collision with root package name */
    private View f56013l;

    /* renamed from: m  reason: collision with root package name */
    private Runnable f56014m;

    /* renamed from: n  reason: collision with root package name */
    private boolean f56015n;

    /* renamed from: o  reason: collision with root package name */
    private int f56016o;

    /* renamed from: p  reason: collision with root package name */
    private int f56017p;

    /* renamed from: q  reason: collision with root package name */
    private j f56018q;

    /* renamed from: r  reason: collision with root package name */
    private boolean f56019r;

    /* renamed from: s  reason: collision with root package name */
    protected boolean f56020s;

    /* renamed from: t  reason: collision with root package name */
    private boolean f56021t;

    /* compiled from: ActionBarMenuItem.java */
    /* loaded from: classes3.dex */
    class a implements Runnable {
        a() {
        }

        @Override // java.lang.Runnable
        public void run() {
            if (d.this.getParent() != null) {
                d.this.getParent().requestDisallowInterceptTouchEvent(true);
            }
            d.this.u();
        }
    }

    /* compiled from: ActionBarMenuItem.java */
    /* loaded from: classes3.dex */
    class b implements View.OnTouchListener {
        b() {
        }

        @Override // android.view.View.OnTouchListener
        public boolean onTouch(View view, MotionEvent motionEvent) {
            if (motionEvent.getActionMasked() == 0 && d.this.f56004c != null && d.this.f56004c.isShowing()) {
                view.getHitRect(d.this.f56011j);
                if (d.this.f56011j.contains((int) motionEvent.getX(), (int) motionEvent.getY())) {
                    return false;
                }
                d.this.f56004c.dismiss();
                return false;
            }
            return false;
        }
    }

    /* compiled from: ActionBarMenuItem.java */
    /* loaded from: classes3.dex */
    class c implements a.e {
        c() {
        }

        @Override // com.tangxiaolv.telegramgallery.Components.a.e
        public void a(KeyEvent keyEvent) {
            if (keyEvent.getKeyCode() == 4 && keyEvent.getRepeatCount() == 0 && d.this.f56004c != null && d.this.f56004c.isShowing()) {
                d.this.f56004c.dismiss();
            }
        }
    }

    /* compiled from: ActionBarMenuItem.java */
    /* renamed from: com.tangxiaolv.telegramgallery.Actionbar.d$d  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class View$OnClickListenerC0480d implements View.OnClickListener {
        View$OnClickListenerC0480d() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            if (d.this.f56004c != null && d.this.f56004c.isShowing()) {
                if (d.this.f56021t) {
                    return;
                }
                d.this.f56021t = true;
                d.this.f56004c.f(d.this.f56019r);
            }
            if (d.this.f56003b != null) {
                d.this.f56003b.l(((Integer) view.getTag()).intValue());
            } else if (d.this.f56018q != null) {
                d.this.f56018q.a(((Integer) view.getTag()).intValue());
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    /* compiled from: ActionBarMenuItem.java */
    /* loaded from: classes3.dex */
    public class e implements View.OnKeyListener {
        e() {
        }

        @Override // android.view.View.OnKeyListener
        public boolean onKey(View view, int i4, KeyEvent keyEvent) {
            if (i4 == 82 && keyEvent.getRepeatCount() == 0 && keyEvent.getAction() == 1 && d.this.f56004c != null && d.this.f56004c.isShowing()) {
                d.this.f56004c.dismiss();
                return true;
            }
            return false;
        }
    }

    /* compiled from: ActionBarMenuItem.java */
    /* loaded from: classes3.dex */
    class f implements ActionMode.Callback {
        f() {
        }

        @Override // android.view.ActionMode.Callback
        public boolean onActionItemClicked(ActionMode actionMode, MenuItem menuItem) {
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public boolean onCreateActionMode(ActionMode actionMode, Menu menu) {
            return false;
        }

        @Override // android.view.ActionMode.Callback
        public void onDestroyActionMode(ActionMode actionMode) {
        }

        @Override // android.view.ActionMode.Callback
        public boolean onPrepareActionMode(ActionMode actionMode, Menu menu) {
            return false;
        }
    }

    /* compiled from: ActionBarMenuItem.java */
    /* loaded from: classes3.dex */
    class g implements TextView.OnEditorActionListener {
        g() {
        }

        @Override // android.widget.TextView.OnEditorActionListener
        public boolean onEditorAction(TextView textView, int i4, KeyEvent keyEvent) {
            if (keyEvent != null) {
                if ((keyEvent.getAction() == 1 && keyEvent.getKeyCode() == 84) || (keyEvent.getAction() == 0 && keyEvent.getKeyCode() == 66)) {
                    com.tangxiaolv.telegramgallery.Utils.a.t(d.this.f56005d);
                    if (d.this.f56010i != null) {
                        d.this.f56010i.d(d.this.f56005d);
                        return false;
                    }
                    return false;
                }
                return false;
            }
            return false;
        }
    }

    /* compiled from: ActionBarMenuItem.java */
    /* loaded from: classes3.dex */
    class h implements TextWatcher {
        h() {
        }

        @Override // android.text.TextWatcher
        public void afterTextChanged(Editable editable) {
        }

        @Override // android.text.TextWatcher
        public void beforeTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
        }

        @Override // android.text.TextWatcher
        public void onTextChanged(CharSequence charSequence, int i4, int i10, int i11) {
            if (d.this.f56010i != null) {
                d.this.f56010i.e(d.this.f56005d);
            }
            if (d.this.f56006e != null) {
                d.this.f56006e.setAlpha((charSequence == null || charSequence.length() == 0) ? 0.6f : 1.0f);
            }
        }
    }

    /* compiled from: ActionBarMenuItem.java */
    /* loaded from: classes3.dex */
    class i implements View.OnClickListener {
        i() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            d.this.f56005d.setText("");
            d.this.f56005d.requestFocus();
            com.tangxiaolv.telegramgallery.Utils.a.I(d.this.f56005d);
        }
    }

    /* compiled from: ActionBarMenuItem.java */
    /* loaded from: classes3.dex */
    public interface j {
        void a(int i4);
    }

    /* compiled from: ActionBarMenuItem.java */
    /* loaded from: classes3.dex */
    public static class k {
        public boolean a() {
            return true;
        }

        public void b() {
        }

        public void c() {
        }

        public void d(EditText editText) {
        }

        public void e(EditText editText) {
        }
    }

    public d(Context context, com.tangxiaolv.telegramgallery.Actionbar.c cVar, int i4) {
        super(context);
        this.f56009h = false;
        this.f56016o = com.tangxiaolv.telegramgallery.Utils.a.g(16.0f);
        this.f56017p = 0;
        this.f56019r = true;
        if (i4 != 0) {
            setBackgroundDrawable(r.b(i4));
        }
        this.f56003b = cVar;
        ImageView imageView = new ImageView(context);
        this.f56007f = imageView;
        imageView.setScaleType(ImageView.ScaleType.CENTER);
        addView(this.f56007f);
        FrameLayout.LayoutParams layoutParams = (FrameLayout.LayoutParams) this.f56007f.getLayoutParams();
        layoutParams.width = -1;
        layoutParams.height = -1;
        this.f56007f.setLayoutParams(layoutParams);
    }

    private void v(boolean z9, boolean z10) {
        int i4;
        if (this.f56015n) {
            getLocationOnScreen(this.f56012k);
            int measuredHeight = (this.f56012k[1] - com.tangxiaolv.telegramgallery.Utils.a.f56373b) + getMeasuredHeight();
            int i10 = this.f56016o;
            int i11 = measuredHeight - i10;
            i4 = -i10;
            if (i11 < 0) {
                i4 -= i11;
            }
        } else {
            com.tangxiaolv.telegramgallery.Actionbar.c cVar = this.f56003b;
            if (cVar != null && this.f56017p == 0) {
                i4 = this.f56003b.getTop() + (-cVar.f55998a.getMeasuredHeight());
            } else {
                i4 = -getMeasuredHeight();
            }
        }
        int i12 = i4;
        if (z9) {
            this.f56002a.e();
        }
        if (this.f56017p != 0) {
            if (z9) {
                this.f56004c.showAsDropDown(this, -com.tangxiaolv.telegramgallery.Utils.a.g(10.0f), i12);
            }
            if (z10) {
                this.f56004c.update(this, -com.tangxiaolv.telegramgallery.Utils.a.g(10.0f), i12, -1, -1);
            }
        } else if (this.f56015n) {
            if (z9) {
                this.f56004c.showAsDropDown(this, (-this.f56002a.getMeasuredWidth()) + getMeasuredWidth(), i12);
            }
            if (z10) {
                this.f56004c.update(this, (-this.f56002a.getMeasuredWidth()) + getMeasuredWidth(), i12, -1, -1);
            }
        } else {
            com.tangxiaolv.telegramgallery.Actionbar.c cVar2 = this.f56003b;
            if (cVar2 != null) {
                com.tangxiaolv.telegramgallery.Actionbar.a aVar = cVar2.f55998a;
                if (z9) {
                    this.f56004c.showAsDropDown(aVar, ((getLeft() + this.f56003b.getLeft()) + getMeasuredWidth()) - this.f56002a.getMeasuredWidth(), i12);
                }
                if (z10) {
                    this.f56004c.update(aVar, ((getLeft() + this.f56003b.getLeft()) + getMeasuredWidth()) - this.f56002a.getMeasuredWidth(), i12, -1, -1);
                }
            } else if (getParent() != null) {
                View view = (View) getParent();
                if (z9) {
                    this.f56004c.showAsDropDown(view, ((view.getMeasuredWidth() - this.f56002a.getMeasuredWidth()) - getLeft()) - view.getLeft(), i12);
                }
                if (z10) {
                    this.f56004c.update(view, ((view.getMeasuredWidth() - this.f56002a.getMeasuredWidth()) - getLeft()) - view.getLeft(), i12, -1, -1);
                }
            }
        }
    }

    public ImageView getImageView() {
        return this.f56007f;
    }

    public EditText getSearchField() {
        return this.f56005d;
    }

    public TextView k(int i4, String str, int i10) {
        if (this.f56002a == null) {
            this.f56011j = new Rect();
            this.f56012k = new int[2];
            a.d dVar = new a.d(getContext());
            this.f56002a = dVar;
            dVar.setOnTouchListener(new b());
            this.f56002a.setDispatchKeyEventListener(new c());
        }
        TextView textView = new TextView(getContext());
        textView.setTextColor(-14606047);
        textView.setBackgroundResource(q.h.Y1);
        if (!com.tangxiaolv.telegramgallery.Utils.a.x()) {
            textView.setGravity(16);
        } else {
            textView.setGravity(21);
        }
        textView.setPadding(com.tangxiaolv.telegramgallery.Utils.a.g(16.0f), 0, com.tangxiaolv.telegramgallery.Utils.a.g(16.0f), 0);
        textView.setTextSize(1, 18.0f);
        textView.setMinWidth(com.tangxiaolv.telegramgallery.Utils.a.g(196.0f));
        textView.setTag(Integer.valueOf(i4));
        textView.setText(str);
        if (i10 != 0) {
            textView.setCompoundDrawablePadding(com.tangxiaolv.telegramgallery.Utils.a.g(12.0f));
            if (!com.tangxiaolv.telegramgallery.Utils.a.x()) {
                textView.setCompoundDrawablesWithIntrinsicBounds(getResources().getDrawable(i10), (Drawable) null, (Drawable) null, (Drawable) null);
            } else {
                textView.setCompoundDrawablesWithIntrinsicBounds((Drawable) null, (Drawable) null, getResources().getDrawable(i10), (Drawable) null);
            }
        }
        this.f56002a.setShowedFromBotton(this.f56015n);
        this.f56002a.addView(textView);
        LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) textView.getLayoutParams();
        if (com.tangxiaolv.telegramgallery.Utils.a.x()) {
            layoutParams.gravity = 5;
        }
        layoutParams.width = -1;
        layoutParams.height = com.tangxiaolv.telegramgallery.Utils.a.g(48.0f);
        textView.setLayoutParams(layoutParams);
        textView.setOnClickListener(new View$OnClickListenerC0480d());
        this.f56016o += layoutParams.height;
        return textView;
    }

    public void l() {
        com.tangxiaolv.telegramgallery.Components.a aVar = this.f56004c;
        if (aVar == null || !aVar.isShowing()) {
            return;
        }
        this.f56004c.dismiss();
    }

    public boolean m() {
        return this.f56002a != null;
    }

    public boolean n() {
        return this.f56009h;
    }

    public void o(boolean z9) {
        com.tangxiaolv.telegramgallery.Actionbar.c cVar;
        FrameLayout frameLayout = this.f56008g;
        if (frameLayout == null || frameLayout.getVisibility() == 0 || (cVar = this.f56003b) == null) {
            return;
        }
        cVar.f55998a.u(t(z9));
    }

    @Override // android.widget.FrameLayout, android.view.ViewGroup, android.view.View
    protected void onLayout(boolean z9, int i4, int i10, int i11, int i12) {
        super.onLayout(z9, i4, i10, i11, i12);
        com.tangxiaolv.telegramgallery.Components.a aVar = this.f56004c;
        if (aVar == null || !aVar.isShowing()) {
            return;
        }
        v(false, true);
    }

    @Override // android.view.View
    public boolean onTouchEvent(MotionEvent motionEvent) {
        com.tangxiaolv.telegramgallery.Components.a aVar;
        com.tangxiaolv.telegramgallery.Components.a aVar2;
        if (motionEvent.getActionMasked() == 0) {
            if (m() && ((aVar2 = this.f56004c) == null || (aVar2 != null && !aVar2.isShowing()))) {
                a aVar3 = new a();
                this.f56014m = aVar3;
                com.tangxiaolv.telegramgallery.Utils.a.E(aVar3, 200L);
            }
        } else if (motionEvent.getActionMasked() == 2) {
            if (m() && ((aVar = this.f56004c) == null || (aVar != null && !aVar.isShowing()))) {
                if (motionEvent.getY() > getHeight()) {
                    if (getParent() != null) {
                        getParent().requestDisallowInterceptTouchEvent(true);
                    }
                    u();
                    return true;
                }
            } else {
                com.tangxiaolv.telegramgallery.Components.a aVar4 = this.f56004c;
                if (aVar4 != null && aVar4.isShowing()) {
                    getLocationOnScreen(this.f56012k);
                    float x9 = motionEvent.getX() + this.f56012k[0];
                    float y9 = motionEvent.getY();
                    int[] iArr = this.f56012k;
                    float f10 = y9 + iArr[1];
                    this.f56002a.getLocationOnScreen(iArr);
                    int[] iArr2 = this.f56012k;
                    float f11 = x9 - iArr2[0];
                    float f12 = f10 - iArr2[1];
                    this.f56013l = null;
                    for (int i4 = 0; i4 < this.f56002a.getItemsCount(); i4++) {
                        View d4 = this.f56002a.d(i4);
                        d4.getHitRect(this.f56011j);
                        if (((Integer) d4.getTag()).intValue() < 100) {
                            if (!this.f56011j.contains((int) f11, (int) f12)) {
                                d4.setPressed(false);
                                d4.setSelected(false);
                                if (Build.VERSION.SDK_INT == 21) {
                                    d4.getBackground().setVisible(false, false);
                                }
                            } else {
                                d4.setPressed(true);
                                d4.setSelected(true);
                                if (Build.VERSION.SDK_INT == 21) {
                                    d4.getBackground().setVisible(true, false);
                                }
                                d4.drawableHotspotChanged(f11, f12 - d4.getTop());
                                this.f56013l = d4;
                            }
                        }
                    }
                }
            }
        } else {
            com.tangxiaolv.telegramgallery.Components.a aVar5 = this.f56004c;
            if (aVar5 != null && aVar5.isShowing() && motionEvent.getActionMasked() == 1) {
                View view = this.f56013l;
                if (view != null) {
                    view.setSelected(false);
                    com.tangxiaolv.telegramgallery.Actionbar.c cVar = this.f56003b;
                    if (cVar != null) {
                        cVar.l(((Integer) this.f56013l.getTag()).intValue());
                    } else {
                        j jVar = this.f56018q;
                        if (jVar != null) {
                            jVar.a(((Integer) this.f56013l.getTag()).intValue());
                        }
                    }
                    this.f56004c.f(this.f56019r);
                } else {
                    this.f56004c.dismiss();
                }
            } else {
                View view2 = this.f56013l;
                if (view2 != null) {
                    view2.setSelected(false);
                    this.f56013l = null;
                }
            }
        }
        return super.onTouchEvent(motionEvent);
    }

    public d p(k kVar) {
        this.f56010i = kVar;
        return this;
    }

    public d q(boolean z9) {
        this.f56019r = z9;
        return this;
    }

    public d r(boolean z9) {
        if (this.f56003b == null) {
            return this;
        }
        if (z9 && this.f56008g == null) {
            FrameLayout frameLayout = new FrameLayout(getContext());
            this.f56008g = frameLayout;
            this.f56003b.addView(frameLayout, 0);
            LinearLayout.LayoutParams layoutParams = (LinearLayout.LayoutParams) this.f56008g.getLayoutParams();
            layoutParams.weight = 1.0f;
            layoutParams.width = 0;
            layoutParams.height = -1;
            layoutParams.leftMargin = com.tangxiaolv.telegramgallery.Utils.a.g(6.0f);
            this.f56008g.setLayoutParams(layoutParams);
            this.f56008g.setVisibility(8);
            EditText editText = new EditText(getContext());
            this.f56005d = editText;
            editText.setTextSize(1, 18.0f);
            this.f56005d.setHintTextColor(-1996488705);
            this.f56005d.setTextColor(-1);
            this.f56005d.setSingleLine(true);
            this.f56005d.setBackgroundResource(0);
            this.f56005d.setPadding(0, 0, 0, 0);
            this.f56005d.setInputType(this.f56005d.getInputType() | 524288);
            this.f56005d.setCustomSelectionActionModeCallback(new f());
            this.f56005d.setOnEditorActionListener(new g());
            this.f56005d.addTextChangedListener(new h());
            try {
                Field declaredField = TextView.class.getDeclaredField("mCursorDrawableRes");
                declaredField.setAccessible(true);
                declaredField.set(this.f56005d, Integer.valueOf(q.h.R2));
            } catch (Exception unused) {
            }
            this.f56005d.setImeOptions(33554435);
            this.f56005d.setTextIsSelectable(false);
            this.f56008g.addView(this.f56005d);
            FrameLayout.LayoutParams layoutParams2 = (FrameLayout.LayoutParams) this.f56005d.getLayoutParams();
            layoutParams2.width = -1;
            layoutParams2.gravity = 16;
            layoutParams2.height = com.tangxiaolv.telegramgallery.Utils.a.g(36.0f);
            layoutParams2.rightMargin = com.tangxiaolv.telegramgallery.Utils.a.g(48.0f);
            this.f56005d.setLayoutParams(layoutParams2);
            ImageView imageView = new ImageView(getContext());
            this.f56006e = imageView;
            imageView.setImageResource(q.h.E1);
            this.f56006e.setScaleType(ImageView.ScaleType.CENTER);
            this.f56006e.setOnClickListener(new i());
            this.f56008g.addView(this.f56006e);
            FrameLayout.LayoutParams layoutParams3 = (FrameLayout.LayoutParams) this.f56006e.getLayoutParams();
            layoutParams3.width = com.tangxiaolv.telegramgallery.Utils.a.g(48.0f);
            layoutParams3.gravity = 21;
            layoutParams3.height = -1;
            this.f56006e.setLayoutParams(layoutParams3);
        }
        this.f56009h = z9;
        return this;
    }

    public d s(boolean z9) {
        this.f56020s = z9;
        return this;
    }

    public void setDelegate(j jVar) {
        this.f56018q = jVar;
    }

    public void setIcon(int i4) {
        this.f56007f.setImageResource(i4);
        this.f56007f.setImageTintList(ColorStateList.valueOf(r.e(getContext())));
    }

    public void setShowFromBottom(boolean z9) {
        this.f56015n = z9;
        a.d dVar = this.f56002a;
        if (dVar != null) {
            dVar.setShowedFromBotton(z9);
        }
    }

    public void setSubMenuOpenSide(int i4) {
        this.f56017p = i4;
    }

    public boolean t(boolean z9) {
        FrameLayout frameLayout = this.f56008g;
        if (frameLayout == null) {
            return false;
        }
        if (frameLayout.getVisibility() == 0) {
            k kVar = this.f56010i;
            if (kVar == null || (kVar != null && kVar.a())) {
                this.f56008g.setVisibility(8);
                this.f56005d.clearFocus();
                setVisibility(0);
                com.tangxiaolv.telegramgallery.Utils.a.t(this.f56005d);
                k kVar2 = this.f56010i;
                if (kVar2 != null) {
                    kVar2.b();
                }
            }
            return false;
        }
        this.f56008g.setVisibility(0);
        setVisibility(8);
        this.f56005d.setText("");
        this.f56005d.requestFocus();
        if (z9) {
            com.tangxiaolv.telegramgallery.Utils.a.I(this.f56005d);
        }
        k kVar3 = this.f56010i;
        if (kVar3 != null) {
            kVar3.c();
            return true;
        }
        return true;
    }

    public void u() {
        if (this.f56002a == null) {
            return;
        }
        Runnable runnable = this.f56014m;
        if (runnable != null) {
            com.tangxiaolv.telegramgallery.Utils.a.c(runnable);
            this.f56014m = null;
        }
        com.tangxiaolv.telegramgallery.Components.a aVar = this.f56004c;
        if (aVar != null && aVar.isShowing()) {
            this.f56004c.dismiss();
            return;
        }
        if (this.f56004c == null) {
            com.tangxiaolv.telegramgallery.Components.a aVar2 = new com.tangxiaolv.telegramgallery.Components.a(this.f56002a, -2, -2);
            this.f56004c = aVar2;
            aVar2.setAnimationStyle(0);
            this.f56004c.setOutsideTouchable(true);
            this.f56004c.setClippingEnabled(true);
            this.f56004c.setInputMethodMode(2);
            this.f56004c.setSoftInputMode(0);
            this.f56002a.measure(View.MeasureSpec.makeMeasureSpec(com.tangxiaolv.telegramgallery.Utils.a.g(1000.0f), Integer.MIN_VALUE), View.MeasureSpec.makeMeasureSpec(com.tangxiaolv.telegramgallery.Utils.a.g(1000.0f), Integer.MIN_VALUE));
            this.f56004c.getContentView().setFocusableInTouchMode(true);
            this.f56004c.getContentView().setOnKeyListener(new e());
        }
        this.f56021t = false;
        this.f56004c.setFocusable(true);
        if (this.f56002a.getMeasuredWidth() == 0) {
            v(true, true);
        } else {
            v(true, false);
        }
        this.f56004c.i();
    }
}
