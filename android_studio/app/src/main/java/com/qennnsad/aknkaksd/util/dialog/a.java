package com.qennnsad.aknkaksd.util.dialog;

import android.app.Dialog;
import android.content.Context;
import android.graphics.Bitmap;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.text.Html;
import android.text.SpannableStringBuilder;
import android.text.style.ClickableSpan;
import android.text.style.URLSpan;
import android.view.KeyEvent;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.view.WindowManager;
import android.webkit.WebSettings;
import android.webkit.WebView;
import android.widget.AdapterView;
import android.widget.ImageView;
import android.widget.Spinner;
import android.widget.TextView;
import androidx.annotation.DimenRes;
import androidx.annotation.NonNull;
import com.qennnsad.aknkaksd.util.h1;
import com.qennnsad.aknkaksd.util.o0;
import java.io.InputStream;
import java.net.URL;

/* compiled from: CustomDialog.java */
/* loaded from: classes3.dex */
public class a extends Dialog {

    /* renamed from: a  reason: collision with root package name */
    private final int f54658a;

    /* renamed from: b  reason: collision with root package name */
    private final int f54659b;

    /* renamed from: c  reason: collision with root package name */
    private final boolean f54660c;

    /* renamed from: d  reason: collision with root package name */
    private final View f54661d;

    /* renamed from: e  reason: collision with root package name */
    private final int f54662e;

    /* renamed from: f  reason: collision with root package name */
    private final int f54663f;

    /* renamed from: g  reason: collision with root package name */
    private boolean f54664g;

    /* compiled from: CustomDialog.java */
    /* renamed from: com.qennnsad.aknkaksd.util.dialog.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0460a implements Html.ImageGetter {
        C0460a() {
        }

        @Override // android.text.Html.ImageGetter
        public Drawable getDrawable(String str) {
            try {
                InputStream inputStream = (InputStream) new URL(str).getContent();
                Drawable createFromStream = Drawable.createFromStream(inputStream, "src");
                createFromStream.setBounds(0, 0, createFromStream.getIntrinsicWidth(), createFromStream.getIntrinsicHeight());
                inputStream.close();
                return createFromStream;
            } catch (Exception unused) {
                return null;
            }
        }
    }

    /* compiled from: CustomDialog.java */
    /* loaded from: classes3.dex */
    class b extends ClickableSpan {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ URLSpan f54665a;

        b(URLSpan uRLSpan) {
            this.f54665a = uRLSpan;
        }

        @Override // android.text.style.ClickableSpan
        public void onClick(View view) {
            o0.g("URL-click:", this.f54665a.getURL());
        }
    }

    /* compiled from: CustomDialog.java */
    /* loaded from: classes3.dex */
    public static final class c {

        /* renamed from: a  reason: collision with root package name */
        private Context f54666a;

        /* renamed from: b  reason: collision with root package name */
        private int f54667b;

        /* renamed from: c  reason: collision with root package name */
        private int f54668c;

        /* renamed from: d  reason: collision with root package name */
        private boolean f54669d;

        /* renamed from: e  reason: collision with root package name */
        private boolean f54670e;

        /* renamed from: f  reason: collision with root package name */
        private View f54671f;

        /* renamed from: g  reason: collision with root package name */
        private int f54672g = -1;

        /* renamed from: h  reason: collision with root package name */
        private int f54673h = 17;

        /* renamed from: i  reason: collision with root package name */
        private int f54674i = 0;

        public c(Context context) {
            this.f54666a = context;
        }

        public c A(int i4) {
            this.f54668c = h1.f(this.f54666a, i4);
            return this;
        }

        public c B(int i4) {
            this.f54668c = i4;
            return this;
        }

        public c i(int i4, AdapterView.OnItemSelectedListener onItemSelectedListener) {
            ((Spinner) this.f54671f.findViewById(i4)).setOnItemSelectedListener(onItemSelectedListener);
            return this;
        }

        public c j(int i4, View.OnLongClickListener onLongClickListener) {
            this.f54671f.findViewById(i4).setOnLongClickListener(onLongClickListener);
            return this;
        }

        public c k(int i4, View.OnClickListener onClickListener) {
            this.f54671f.findViewById(i4).setOnClickListener(onClickListener);
            return this;
        }

        public a l() {
            if (this.f54672g != -1) {
                return new a(this, this.f54672g, null);
            }
            return new a(this, (C0460a) null);
        }

        public c m(boolean z9) {
            this.f54669d = z9;
            return this;
        }

        public c n(boolean z9) {
            this.f54670e = z9;
            return this;
        }

        public c o(@DimenRes int i4) {
            this.f54667b = this.f54666a.getResources().getDimensionPixelOffset(i4);
            return this;
        }

        public c p(int i4) {
            this.f54667b = h1.f(this.f54666a, i4);
            return this;
        }

        public c q(int i4) {
            this.f54667b = i4;
            return this;
        }

        public c r(int i4) {
            this.f54673h = i4;
            return this;
        }

        public c s(int i4, Bitmap bitmap) {
            ((ImageView) this.f54671f.findViewById(i4)).setImageBitmap(bitmap);
            return this;
        }

        public c t(int i4) {
            this.f54674i = i4;
            return this;
        }

        public c u(int i4, String str) {
            ((TextView) this.f54671f.findViewById(i4)).setText(str);
            return this;
        }

        public c v(int i4, int i10) {
            this.f54671f.findViewById(i4).setVisibility(i10);
            return this;
        }

        public c w(int i4, String str, Context context) {
            WebView webView = (WebView) this.f54671f.findViewById(i4);
            webView.setBackgroundColor(0);
            webView.getSettings().setLayoutAlgorithm(WebSettings.LayoutAlgorithm.NORMAL);
            webView.getSettings().setJavaScriptEnabled(true);
            webView.loadDataWithBaseURL(null, str, "text/html", "utf-8", null);
            webView.requestFocus();
            return this;
        }

        public c x(int i4) {
            this.f54672g = i4;
            return this;
        }

        public c y(int i4) {
            this.f54671f = LayoutInflater.from(this.f54666a).inflate(i4, (ViewGroup) null);
            return this;
        }

        public c z(@DimenRes int i4) {
            this.f54668c = this.f54666a.getResources().getDimensionPixelOffset(i4);
            return this;
        }
    }

    /* synthetic */ a(c cVar, int i4, C0460a c0460a) {
        this(cVar, i4);
    }

    private static CharSequence a(String str) {
        return Html.fromHtml(str, new C0460a(), null);
    }

    private static void c(SpannableStringBuilder spannableStringBuilder, URLSpan uRLSpan) {
        spannableStringBuilder.setSpan(new b(uRLSpan), spannableStringBuilder.getSpanStart(uRLSpan), spannableStringBuilder.getSpanEnd(uRLSpan), spannableStringBuilder.getSpanFlags(uRLSpan));
    }

    public View b() {
        return this.f54661d;
    }

    @Override // android.app.Dialog, android.view.Window.Callback
    public boolean dispatchKeyEvent(@NonNull KeyEvent keyEvent) {
        o0.g("dialog", "code" + keyEvent.getKeyCode() + "---action:" + keyEvent.getAction());
        keyEvent.getKeyCode();
        return super.dispatchKeyEvent(keyEvent);
    }

    @Override // android.app.Dialog
    protected void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setContentView(this.f54661d);
        setCanceledOnTouchOutside(this.f54660c);
        setCancelable(this.f54664g);
    }

    @Override // android.app.Dialog, android.view.KeyEvent.Callback
    public boolean onKeyDown(int i4, @NonNull KeyEvent keyEvent) {
        return super.onKeyDown(i4, keyEvent);
    }

    @Override // android.app.Dialog
    public void show() {
        super.show();
        WindowManager.LayoutParams attributes = getWindow().getAttributes();
        attributes.gravity = this.f54662e;
        o0.g("CustomDialog", "width:" + this.f54659b + "--height:" + this.f54658a);
        attributes.width = this.f54659b;
        attributes.height = this.f54658a;
        getWindow().getDecorView().setPadding(0, 0, 0, this.f54663f);
        getWindow().setAttributes(attributes);
    }

    /* synthetic */ a(c cVar, C0460a c0460a) {
        this(cVar);
    }

    private a(c cVar) {
        this(cVar, 0);
    }

    private a(c cVar, int i4) {
        super(cVar.f54666a, i4);
        this.f54664g = true;
        Context unused = cVar.f54666a;
        this.f54658a = cVar.f54667b;
        this.f54659b = cVar.f54668c;
        this.f54660c = cVar.f54669d;
        this.f54664g = cVar.f54670e;
        this.f54661d = cVar.f54671f;
        this.f54662e = cVar.f54673h;
        this.f54663f = cVar.f54674i;
    }
}
