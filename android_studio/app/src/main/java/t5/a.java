package t5;

import android.content.Context;
import android.content.res.Resources;
import android.view.View;
import android.widget.TextView;
import com.shizhefei.view.indicator.c;

/* compiled from: OnTransitionTextListener.java */
/* loaded from: classes3.dex */
public class a implements c.e {

    /* renamed from: c  reason: collision with root package name */
    private u5.a f93855c;

    /* renamed from: a  reason: collision with root package name */
    private float f93853a = -1.0f;

    /* renamed from: b  reason: collision with root package name */
    private float f93854b = -1.0f;

    /* renamed from: d  reason: collision with root package name */
    private float f93856d = -1.0f;

    /* renamed from: e  reason: collision with root package name */
    private boolean f93857e = false;

    public a() {
    }

    @Override // com.shizhefei.view.indicator.c.e
    public void a(View view, int i4, float f10) {
        TextView b10 = b(view, i4);
        u5.a aVar = this.f93855c;
        if (aVar != null) {
            b10.setTextColor(aVar.a((int) (100.0f * f10)));
        }
        float f11 = this.f93854b;
        if (f11 <= 0.0f || this.f93853a <= 0.0f) {
            return;
        }
        if (this.f93857e) {
            b10.setTextSize(0, f11 + (this.f93856d * f10));
        } else {
            b10.setTextSize(f11 + (this.f93856d * f10));
        }
    }

    public TextView b(View view, int i4) {
        return (TextView) view;
    }

    public final a c(int i4, int i10) {
        this.f93855c = new u5.a(i10, i4, 100);
        return this;
    }

    public final a d(Context context, int i4, int i10) {
        Resources resources = context.getResources();
        c(resources.getColor(i4), resources.getColor(i10));
        return this;
    }

    public final a e(float f10, float f11) {
        this.f93857e = false;
        this.f93853a = f10;
        this.f93854b = f11;
        this.f93856d = f10 - f11;
        return this;
    }

    public final a f(Context context, int i4, int i10) {
        Resources resources = context.getResources();
        e(resources.getDimensionPixelSize(i4), resources.getDimensionPixelSize(i10));
        this.f93857e = true;
        return this;
    }

    public final a g(Context context, int i4, int i10, int i11, int i12) {
        d(context, i4, i10);
        f(context, i11, i12);
        return this;
    }

    public a(float f10, float f11, int i4, int i10) {
        c(i4, i10);
        e(f10, f11);
    }
}
