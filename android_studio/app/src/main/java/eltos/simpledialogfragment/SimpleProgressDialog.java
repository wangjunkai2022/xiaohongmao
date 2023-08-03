package eltos.simpledialogfragment;

import android.os.Build;
import android.os.Bundle;
import android.text.TextUtils;
import android.view.View;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import eltos.simpledialogfragment.c;
import java.text.NumberFormat;

/* loaded from: classes3.dex */
public class SimpleProgressDialog extends b<SimpleProgressDialog> {
    private static final String A = "SimpleProgressDialog.text_progress";
    private static final String B = "SimpleProgressDialog.text_info";
    private static final String C = "SimpleProgressDialog.type";
    private static final String D = "SimpleProgressDialog.auto_dismiss";
    public static final int E = 5;
    public static final String TAG = "SimpleProgressDialog.";

    /* renamed from: v  reason: collision with root package name */
    private static final String f63439v = "SimpleProgressDialog.indeterminate";

    /* renamed from: w  reason: collision with root package name */
    private static final String f63440w = "SimpleProgressDialog.max";

    /* renamed from: x  reason: collision with root package name */
    private static final String f63441x = "SimpleProgressDialog.progress";

    /* renamed from: y  reason: collision with root package name */
    private static final String f63442y = "SimpleProgressDialog.progress2";

    /* renamed from: z  reason: collision with root package name */
    private static final String f63443z = "SimpleProgressDialog.percentage";

    /* renamed from: r  reason: collision with root package name */
    protected ProgressBar f63444r;

    /* renamed from: s  reason: collision with root package name */
    protected TextView f63445s;

    /* renamed from: t  reason: collision with root package name */
    protected TextView f63446t;

    /* renamed from: u  reason: collision with root package name */
    protected g<?, ?, ?> f63447u;

    /* loaded from: classes3.dex */
    public enum Type {
        BAR,
        CIRCLE
    }

    public SimpleProgressDialog() {
        W(false);
        p0(17039360);
        s0(null);
    }

    public static SimpleProgressDialog W0() {
        return X0().b1(Type.BAR).Z0(true);
    }

    public static SimpleProgressDialog X0() {
        return new SimpleProgressDialog();
    }

    public static SimpleProgressDialog Y0() {
        return X0().b1(Type.CIRCLE).Z0(false);
    }

    private void k1(String str) {
        TextView textView = this.f63445s;
        if (textView != null) {
            textView.setText(str);
            this.f63445s.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
            return;
        }
        v0(A, str);
    }

    @Override // eltos.simpledialogfragment.b
    protected View M0(Bundle bundle) {
        View K0;
        if (Z().getInt(C) == Type.CIRCLE.ordinal()) {
            K0 = K0(c.l.f64346b1);
        } else {
            K0 = K0(c.l.f64343a1);
        }
        this.f63444r = (ProgressBar) K0.findViewById(c.i.F3);
        this.f63445s = (TextView) K0.findViewById(c.i.H3);
        this.f63446t = (TextView) K0.findViewById(c.i.f64194j2);
        if (bundle == null) {
            bundle = Z();
        }
        e1(bundle.getString(B));
        k1(bundle.getString(A));
        i1(Boolean.valueOf(bundle.getBoolean(f63439v, true)), Integer.valueOf(bundle.getInt(f63441x, 0)), Integer.valueOf(bundle.getInt(f63442y, 0)), Integer.valueOf(bundle.getInt(f63440w, 100)));
        return K0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.b, eltos.simpledialogfragment.f
    @CallSuper
    public boolean V(int i4, Bundle bundle) {
        g<?, ?, ?> gVar = this.f63447u;
        if (gVar != null && (i4 == -3 || i4 == 0)) {
            gVar.cancel(false);
        }
        return super.V(i4, null);
    }

    public SimpleProgressDialog Z0(boolean z9) {
        return (SimpleProgressDialog) w0(f63443z, z9);
    }

    public SimpleProgressDialog a1(g<?, ?, ?> gVar, boolean z9, boolean z10) {
        this.f63447u = gVar;
        gVar.a(this);
        Z0(true);
        W(false);
        if (z9) {
            p0(17039360);
        } else {
            q0(null);
        }
        w0(D, z10);
        if (z10) {
            s0(null);
        } else {
            r0(17039370);
            V0(false);
        }
        return this;
    }

    public SimpleProgressDialog b1(Type type) {
        return (SimpleProgressDialog) t0(C, type.ordinal());
    }

    public void c1() {
        i1(Boolean.FALSE, 100, 100, 100);
        if (this.f63447u != null) {
            V0(true);
            U0(false);
            if (Z().getBoolean(D)) {
                dismiss();
                V(5, new Bundle());
            }
        }
    }

    public void d1() {
        i1(Boolean.TRUE, null, null, null);
    }

    public void e1(String str) {
        TextView textView = this.f63446t;
        if (textView != null) {
            textView.setText(str);
            this.f63446t.setVisibility(TextUtils.isEmpty(str) ? 8 : 0);
            return;
        }
        v0(B, str);
    }

    public void f1(int i4) {
        i1(null, null, null, Integer.valueOf(i4));
    }

    public void g1(int i4) {
        i1(Boolean.FALSE, Integer.valueOf(i4), null, null);
    }

    public void h1(int i4, int i10) {
        i1(Boolean.FALSE, Integer.valueOf(i4), null, Integer.valueOf(i10));
    }

    public void i1(@Nullable Boolean bool, @Nullable Integer num, @Nullable Integer num2, @Nullable Integer num3) {
        double progress;
        int max;
        ProgressBar progressBar = this.f63444r;
        if (progressBar == null) {
            if (bool != null) {
                w0(f63439v, bool.booleanValue());
            }
            if (num != null) {
                t0(f63441x, num.intValue());
            }
            if (num2 != null) {
                t0(f63442y, num2.intValue());
            }
            if (num3 != null) {
                t0(f63440w, num3.intValue());
                return;
            }
            return;
        }
        if (bool != null) {
            progressBar.setIndeterminate(bool.booleanValue());
        }
        if (num != null) {
            this.f63444r.setProgress(num.intValue());
        }
        if (num2 != null) {
            this.f63444r.setSecondaryProgress(num2.intValue());
        }
        if (num3 != null) {
            this.f63444r.setMax(num3.intValue());
        }
        if (Z().getBoolean(f63443z)) {
            if (this.f63444r.isIndeterminate()) {
                k1(null);
                return;
            }
            if (Build.VERSION.SDK_INT >= 26) {
                progress = (this.f63444r.getProgress() - this.f63444r.getMin()) * 1.0d;
                max = this.f63444r.getMax() - this.f63444r.getMin();
            } else {
                progress = this.f63444r.getProgress() * 1.0d;
                max = this.f63444r.getMax();
            }
            k1(NumberFormat.getPercentInstance().format(progress / max));
        }
    }

    public void j1(String str) {
        Z0(false);
        k1(str);
    }

    public void l1(int i4) {
        i1(Boolean.FALSE, null, Integer.valueOf(i4), null);
    }

    @Override // eltos.simpledialogfragment.b, eltos.simpledialogfragment.f, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @CallSuper
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        if (this.f63447u != null) {
            setRetainInstance(true);
        }
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(@NonNull Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(f63439v, this.f63444r.isIndeterminate());
        bundle.putInt(f63440w, this.f63444r.getMax());
        bundle.putInt(f63441x, this.f63444r.getProgress());
        bundle.putInt(f63442y, this.f63444r.getSecondaryProgress());
        bundle.putString(B, String.valueOf(this.f63446t.getText()));
        bundle.putString(A, String.valueOf(this.f63445s.getText()));
    }
}
