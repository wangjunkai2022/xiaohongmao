package com.airbnb.lottie;

import androidx.annotation.Nullable;
import androidx.annotation.VisibleForTesting;
import java.util.HashMap;
import java.util.Map;

/* compiled from: TextDelegate.java */
/* loaded from: classes.dex */
public class t {

    /* renamed from: a  reason: collision with root package name */
    private final Map<String, String> f5620a;
    @Nullable

    /* renamed from: b  reason: collision with root package name */
    private final LottieAnimationView f5621b;
    @Nullable

    /* renamed from: c  reason: collision with root package name */
    private final h f5622c;

    /* renamed from: d  reason: collision with root package name */
    private boolean f5623d;

    @VisibleForTesting
    t() {
        this.f5620a = new HashMap();
        this.f5623d = true;
        this.f5621b = null;
        this.f5622c = null;
    }

    private String a(String str) {
        return str;
    }

    private void c() {
        LottieAnimationView lottieAnimationView = this.f5621b;
        if (lottieAnimationView != null) {
            lottieAnimationView.invalidate();
        }
        h hVar = this.f5622c;
        if (hVar != null) {
            hVar.invalidateSelf();
        }
    }

    public final String b(String str) {
        if (this.f5623d && this.f5620a.containsKey(str)) {
            return this.f5620a.get(str);
        }
        String a10 = a(str);
        if (this.f5623d) {
            this.f5620a.put(str, a10);
        }
        return a10;
    }

    public void d() {
        this.f5620a.clear();
        c();
    }

    public void e(String str) {
        this.f5620a.remove(str);
        c();
    }

    public void f(boolean z9) {
        this.f5623d = z9;
    }

    public void g(String str, String str2) {
        this.f5620a.put(str, str2);
        c();
    }

    public t(LottieAnimationView lottieAnimationView) {
        this.f5620a = new HashMap();
        this.f5623d = true;
        this.f5621b = lottieAnimationView;
        this.f5622c = null;
    }

    public t(h hVar) {
        this.f5620a = new HashMap();
        this.f5623d = true;
        this.f5622c = hVar;
        this.f5621b = null;
    }
}
