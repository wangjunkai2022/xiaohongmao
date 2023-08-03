package com.facebook.drawee.view;

import android.graphics.Canvas;
import android.graphics.drawable.Drawable;
import android.view.MotionEvent;
import androidx.annotation.VisibleForTesting;
import com.facebook.common.internal.j;
import com.facebook.infer.annotation.Nullsafe;
import java.util.ArrayList;
import z0.b;

/* compiled from: MultiDraweeHolder.java */
@Nullsafe(Nullsafe.Mode.STRICT)
/* loaded from: classes.dex */
public class d<DH extends z0.b> {
    @VisibleForTesting

    /* renamed from: a  reason: collision with root package name */
    boolean f11661a = false;
    @VisibleForTesting

    /* renamed from: b  reason: collision with root package name */
    ArrayList<b<DH>> f11662b = new ArrayList<>();

    public void a(int index, b<DH> holder) {
        j.i(holder);
        j.g(index, this.f11662b.size() + 1);
        this.f11662b.add(index, holder);
        if (this.f11661a) {
            holder.m();
        }
    }

    public void b(b<DH> holder) {
        a(this.f11662b.size(), holder);
    }

    public void c() {
        if (this.f11661a) {
            for (int i4 = 0; i4 < this.f11662b.size(); i4++) {
                this.f11662b.get(i4).n();
            }
        }
        this.f11662b.clear();
    }

    public void d(Canvas canvas) {
        for (int i4 = 0; i4 < this.f11662b.size(); i4++) {
            Drawable i10 = e(i4).i();
            if (i10 != null) {
                i10.draw(canvas);
            }
        }
    }

    public b<DH> e(int index) {
        return this.f11662b.get(index);
    }

    public void f() {
        if (this.f11661a) {
            return;
        }
        this.f11661a = true;
        for (int i4 = 0; i4 < this.f11662b.size(); i4++) {
            this.f11662b.get(i4).m();
        }
    }

    public void g() {
        if (this.f11661a) {
            this.f11661a = false;
            for (int i4 = 0; i4 < this.f11662b.size(); i4++) {
                this.f11662b.get(i4).n();
            }
        }
    }

    public boolean h(MotionEvent event) {
        for (int i4 = 0; i4 < this.f11662b.size(); i4++) {
            if (this.f11662b.get(i4).o(event)) {
                return true;
            }
        }
        return false;
    }

    public void i(int index) {
        b<DH> bVar = this.f11662b.get(index);
        if (this.f11661a) {
            bVar.n();
        }
        this.f11662b.remove(index);
    }

    public int j() {
        return this.f11662b.size();
    }

    public boolean k(Drawable who) {
        for (int i4 = 0; i4 < this.f11662b.size(); i4++) {
            if (who == e(i4).i()) {
                return true;
            }
        }
        return false;
    }
}
