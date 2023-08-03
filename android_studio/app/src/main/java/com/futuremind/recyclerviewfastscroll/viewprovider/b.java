package com.futuremind.recyclerviewfastscroll.viewprovider;

import android.graphics.drawable.InsetDrawable;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.TextView;
import androidx.core.content.ContextCompat;
import com.futuremind.recyclerviewfastscroll.viewprovider.e;
import com.hbb20.i;

/* compiled from: DefaultScrollerViewProvider.java */
/* loaded from: classes2.dex */
public class b extends c {

    /* renamed from: d  reason: collision with root package name */
    protected View f16112d;

    /* renamed from: e  reason: collision with root package name */
    protected View f16113e;

    @Override // com.futuremind.recyclerviewfastscroll.viewprovider.c
    public int b() {
        float width;
        int width2;
        if (e().m()) {
            width = this.f16113e.getHeight() / 2.0f;
            width2 = this.f16112d.getHeight();
        } else {
            width = this.f16113e.getWidth() / 2.0f;
            width2 = this.f16112d.getWidth();
        }
        return (int) (width - width2);
    }

    @Override // com.futuremind.recyclerviewfastscroll.viewprovider.c
    protected d j() {
        return new a(new e.c(this.f16112d).d(1.0f).e(1.0f).a());
    }

    @Override // com.futuremind.recyclerviewfastscroll.viewprovider.c
    public TextView k() {
        return (TextView) this.f16112d;
    }

    @Override // com.futuremind.recyclerviewfastscroll.viewprovider.c
    public View l(ViewGroup container) {
        View inflate = LayoutInflater.from(c()).inflate(i.k.D, container, false);
        this.f16112d = inflate;
        return inflate;
    }

    @Override // com.futuremind.recyclerviewfastscroll.viewprovider.c
    protected d m() {
        return null;
    }

    @Override // com.futuremind.recyclerviewfastscroll.viewprovider.c
    public View n(ViewGroup container) {
        this.f16113e = new View(c());
        int dimensionPixelSize = e().m() ? 0 : c().getResources().getDimensionPixelSize(i.f.V0);
        int dimensionPixelSize2 = !e().m() ? 0 : c().getResources().getDimensionPixelSize(i.f.V0);
        com.futuremind.recyclerviewfastscroll.c.d(this.f16113e, new InsetDrawable(ContextCompat.getDrawable(c(), i.g.L0), dimensionPixelSize2, dimensionPixelSize, dimensionPixelSize2, dimensionPixelSize));
        this.f16113e.setLayoutParams(new ViewGroup.LayoutParams(c().getResources().getDimensionPixelSize(e().m() ? i.f.S0 : i.f.U0), c().getResources().getDimensionPixelSize(e().m() ? i.f.U0 : i.f.S0)));
        return this.f16113e;
    }
}
