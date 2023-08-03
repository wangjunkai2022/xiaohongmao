package com.google.android.gms.common;

import android.content.Context;
import android.content.res.TypedArray;
import android.util.AttributeSet;
import android.util.Log;
import android.view.View;
import android.widget.FrameLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import com.google.android.gms.common.api.Scope;
import com.google.android.gms.common.internal.d1;
import com.google.android.gms.common.internal.zaaa;
import com.google.android.gms.dynamic.RemoteCreator;
import java.lang.annotation.Retention;
import java.lang.annotation.RetentionPolicy;
import t2.a;

/* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
/* loaded from: classes2.dex */
public final class SignInButton extends FrameLayout implements View.OnClickListener {

    /* renamed from: e  reason: collision with root package name */
    public static final int f28483e = 0;

    /* renamed from: f  reason: collision with root package name */
    public static final int f28484f = 1;

    /* renamed from: g  reason: collision with root package name */
    public static final int f28485g = 2;

    /* renamed from: h  reason: collision with root package name */
    public static final int f28486h = 0;

    /* renamed from: i  reason: collision with root package name */
    public static final int f28487i = 1;

    /* renamed from: j  reason: collision with root package name */
    public static final int f28488j = 2;

    /* renamed from: a  reason: collision with root package name */
    private int f28489a;

    /* renamed from: b  reason: collision with root package name */
    private int f28490b;

    /* renamed from: c  reason: collision with root package name */
    private View f28491c;
    @Nullable

    /* renamed from: d  reason: collision with root package name */
    private View.OnClickListener f28492d;

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface a {
    }

    /* compiled from: com.google.android.gms:play-services-base@@18.0.1 */
    @Retention(RetentionPolicy.SOURCE)
    /* loaded from: classes2.dex */
    public @interface b {
    }

    public SignInButton(@NonNull Context context) {
        this(context, null);
    }

    private final void c(Context context) {
        View view = this.f28491c;
        if (view != null) {
            removeView(view);
        }
        try {
            this.f28491c = d1.c(context, this.f28489a, this.f28490b);
        } catch (RemoteCreator.RemoteCreatorException unused) {
            Log.w("SignInButton", "Sign in button not found, using placeholder instead");
            int i4 = this.f28489a;
            int i10 = this.f28490b;
            zaaa zaaaVar = new zaaa(context, null);
            zaaaVar.a(context.getResources(), i4, i10);
            this.f28491c = zaaaVar;
        }
        addView(this.f28491c);
        this.f28491c.setEnabled(isEnabled());
        this.f28491c.setOnClickListener(this);
    }

    public void a(int i4, int i10) {
        this.f28489a = i4;
        this.f28490b = i10;
        c(getContext());
    }

    @Deprecated
    public void b(int i4, int i10, @NonNull Scope[] scopeArr) {
        a(i4, i10);
    }

    @Override // android.view.View.OnClickListener
    public void onClick(@NonNull View view) {
        View.OnClickListener onClickListener = this.f28492d;
        if (onClickListener == null || view != this.f28491c) {
            return;
        }
        onClickListener.onClick(this);
    }

    public void setColorScheme(int i4) {
        a(this.f28489a, i4);
    }

    @Override // android.view.View
    public void setEnabled(boolean z9) {
        super.setEnabled(z9);
        this.f28491c.setEnabled(z9);
    }

    @Override // android.view.View
    public void setOnClickListener(@Nullable View.OnClickListener onClickListener) {
        this.f28492d = onClickListener;
        View view = this.f28491c;
        if (view != null) {
            view.setOnClickListener(this);
        }
    }

    @Deprecated
    public void setScopes(@NonNull Scope[] scopeArr) {
        a(this.f28489a, this.f28490b);
    }

    public void setSize(int i4) {
        a(i4, this.f28490b);
    }

    public SignInButton(@NonNull Context context, @Nullable AttributeSet attributeSet) {
        this(context, attributeSet, 0);
    }

    public SignInButton(@NonNull Context context, @Nullable AttributeSet attributeSet, int i4) {
        super(context, attributeSet, i4);
        this.f28492d = null;
        TypedArray obtainStyledAttributes = context.getTheme().obtainStyledAttributes(attributeSet, a.f.f93830e, 0, 0);
        try {
            this.f28489a = obtainStyledAttributes.getInt(a.f.f93831f, 0);
            this.f28490b = obtainStyledAttributes.getInt(a.f.f93832g, 2);
            obtainStyledAttributes.recycle();
            a(this.f28489a, this.f28490b);
        } catch (Throwable th) {
            obtainStyledAttributes.recycle();
            throw th;
        }
    }
}
