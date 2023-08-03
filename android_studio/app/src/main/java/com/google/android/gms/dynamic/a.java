package com.google.android.gms.dynamic;

import android.app.Activity;
import android.content.Context;
import android.content.Intent;
import android.os.Bundle;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.internal.j0;
import com.google.android.gms.dynamic.e;
import java.util.LinkedList;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
@u2.a
/* loaded from: classes2.dex */
public abstract class a<T extends e> {

    /* renamed from: a  reason: collision with root package name */
    private T f29306a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private Bundle f29307b;

    /* renamed from: c  reason: collision with root package name */
    private LinkedList<p> f29308c;

    /* renamed from: d  reason: collision with root package name */
    private final g<T> f29309d = new i(this);

    @u2.a
    public static void o(@NonNull FrameLayout frameLayout) {
        com.google.android.gms.common.e x9 = com.google.android.gms.common.e.x();
        Context context = frameLayout.getContext();
        int j4 = x9.j(context);
        String d4 = j0.d(context, j4);
        String c10 = j0.c(context, j4);
        LinearLayout linearLayout = new LinearLayout(frameLayout.getContext());
        linearLayout.setOrientation(1);
        linearLayout.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        frameLayout.addView(linearLayout);
        TextView textView = new TextView(frameLayout.getContext());
        textView.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
        textView.setText(d4);
        linearLayout.addView(textView);
        Intent e4 = x9.e(context, j4, null);
        if (e4 != null) {
            Button button = new Button(context);
            button.setId(16908313);
            button.setLayoutParams(new FrameLayout.LayoutParams(-2, -2));
            button.setText(c10);
            linearLayout.addView(button);
            button.setOnClickListener(new m(context, e4));
        }
    }

    private final void t(int i4) {
        while (!this.f29308c.isEmpty() && this.f29308c.getLast().zaa() >= i4) {
            this.f29308c.removeLast();
        }
    }

    private final void u(@Nullable Bundle bundle, p pVar) {
        T t9 = this.f29306a;
        if (t9 != null) {
            pVar.a(t9);
            return;
        }
        if (this.f29308c == null) {
            this.f29308c = new LinkedList<>();
        }
        this.f29308c.add(pVar);
        if (bundle != null) {
            Bundle bundle2 = this.f29307b;
            if (bundle2 == null) {
                this.f29307b = (Bundle) bundle.clone();
            } else {
                bundle2.putAll(bundle);
            }
        }
        a(this.f29309d);
    }

    @u2.a
    protected abstract void a(@NonNull g<T> gVar);

    @NonNull
    @u2.a
    public T b() {
        return this.f29306a;
    }

    @u2.a
    protected void c(@NonNull FrameLayout frameLayout) {
        o(frameLayout);
    }

    @u2.a
    public void d(@Nullable Bundle bundle) {
        u(bundle, new k(this, bundle));
    }

    @NonNull
    @u2.a
    public View e(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, @Nullable Bundle bundle) {
        FrameLayout frameLayout = new FrameLayout(layoutInflater.getContext());
        u(bundle, new l(this, frameLayout, layoutInflater, viewGroup, bundle));
        if (this.f29306a == null) {
            c(frameLayout);
        }
        return frameLayout;
    }

    @u2.a
    public void f() {
        T t9 = this.f29306a;
        if (t9 != null) {
            t9.a();
        } else {
            t(1);
        }
    }

    @u2.a
    public void g() {
        T t9 = this.f29306a;
        if (t9 != null) {
            t9.b();
        } else {
            t(2);
        }
    }

    @u2.a
    public void h(@NonNull Activity activity, @NonNull Bundle bundle, @Nullable Bundle bundle2) {
        u(bundle2, new j(this, activity, bundle, bundle2));
    }

    @u2.a
    public void i() {
        T t9 = this.f29306a;
        if (t9 != null) {
            t9.onLowMemory();
        }
    }

    @u2.a
    public void j() {
        T t9 = this.f29306a;
        if (t9 != null) {
            t9.onPause();
        } else {
            t(5);
        }
    }

    @u2.a
    public void k() {
        u(null, new o(this));
    }

    @u2.a
    public void l(@NonNull Bundle bundle) {
        T t9 = this.f29306a;
        if (t9 != null) {
            t9.f(bundle);
            return;
        }
        Bundle bundle2 = this.f29307b;
        if (bundle2 != null) {
            bundle.putAll(bundle2);
        }
    }

    @u2.a
    public void m() {
        u(null, new n(this));
    }

    @u2.a
    public void n() {
        T t9 = this.f29306a;
        if (t9 != null) {
            t9.onStop();
        } else {
            t(4);
        }
    }
}
