package eltos.simpledialogfragment;

import android.app.Dialog;
import android.content.DialogInterface;
import android.os.Build;
import android.os.Bundle;
import android.text.Html;
import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.TextView;
import androidx.annotation.CallSuper;
import androidx.annotation.LayoutRes;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.app.AlertDialog;
import eltos.simpledialogfragment.b;
import eltos.simpledialogfragment.c;

/* compiled from: CustomViewDialog.java */
/* loaded from: classes3.dex */
public abstract class b<This extends b<This>> extends f<This> {
    public static final String TAG = "CustomViewDialog.";

    /* renamed from: o  reason: collision with root package name */
    private static final String f63452o = "CustomViewDialog.pos_enabled";

    /* renamed from: p  reason: collision with root package name */
    private static final String f63453p = "CustomViewDialog.neg_enabled";

    /* renamed from: q  reason: collision with root package name */
    private static final String f63454q = "CustomViewDialog.neu_enabled";

    /* renamed from: n  reason: collision with root package name */
    private LayoutInflater f63455n;

    /* compiled from: CustomViewDialog.java */
    /* loaded from: classes3.dex */
    class a implements DialogInterface.OnShowListener {

        /* compiled from: CustomViewDialog.java */
        /* renamed from: eltos.simpledialogfragment.b$a$a  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class View$OnClickListenerC0511a implements View.OnClickListener {
            View$OnClickListenerC0511a() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.this.Q0();
            }
        }

        /* compiled from: CustomViewDialog.java */
        /* renamed from: eltos.simpledialogfragment.b$a$b  reason: collision with other inner class name */
        /* loaded from: classes3.dex */
        class View$OnClickListenerC0512b implements View.OnClickListener {
            View$OnClickListenerC0512b() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.this.P0();
            }
        }

        /* compiled from: CustomViewDialog.java */
        /* loaded from: classes3.dex */
        class c implements View.OnClickListener {
            c() {
            }

            @Override // android.view.View.OnClickListener
            public void onClick(View view) {
                b.this.O0();
            }
        }

        a() {
        }

        @Override // android.content.DialogInterface.OnShowListener
        public void onShow(DialogInterface dialogInterface) {
            b bVar = b.this;
            bVar.V0(bVar.Z().getBoolean(b.f63452o, true));
            b bVar2 = b.this;
            bVar2.T0(bVar2.Z().getBoolean(b.f63453p, true));
            b bVar3 = b.this;
            bVar3.U0(bVar3.Z().getBoolean(b.f63454q, true));
            Button e02 = b.this.e0();
            if (e02 != null) {
                e02.setOnClickListener(new View$OnClickListenerC0511a());
            }
            Button d02 = b.this.d0();
            if (d02 != null) {
                d02.setOnClickListener(new View$OnClickListenerC0512b());
            }
            Button c02 = b.this.c0();
            if (c02 != null) {
                c02.setOnClickListener(new c());
            }
            b.this.N0();
        }
    }

    public static b I0() {
        throw new InstantiationError("Unintended abuse of the builder method. Have you created your own build() method in your custom dialog?");
    }

    protected boolean H0() {
        return true;
    }

    public final View J0(Bundle bundle) {
        this.f63455n = ((AlertDialog) super.onCreateDialog(bundle)).getLayoutInflater();
        return M0(bundle);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final View K0(@LayoutRes int i4) {
        return L0(i4, null, false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final View L0(@LayoutRes int i4, ViewGroup viewGroup, boolean z9) {
        return this.f63455n.inflate(i4, viewGroup, z9);
    }

    protected abstract View M0(Bundle bundle);

    protected void N0() {
    }

    protected void O0() {
        getDialog().dismiss();
        V(-2, null);
    }

    protected void P0() {
        getDialog().dismiss();
        V(-3, null);
    }

    protected void Q0() {
        S0();
    }

    @Nullable
    protected Bundle R0(int i4) {
        return null;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public final void S0() {
        if (H0()) {
            getDialog().dismiss();
            V(-1, null);
        }
    }

    public final void T0(boolean z9) {
        w0(f63453p, z9);
        if (c0() != null) {
            c0().setEnabled(z9);
        }
    }

    public final void U0(boolean z9) {
        w0(f63454q, z9);
        if (d0() != null) {
            d0().setEnabled(z9);
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.f
    @CallSuper
    public boolean V(int i4, @Nullable Bundle bundle) {
        Bundle R0 = R0(i4);
        if (bundle == null) {
            bundle = new Bundle();
        }
        if (R0 != null) {
            bundle.putAll(R0);
        }
        return super.V(i4, bundle);
    }

    public final void V0(boolean z9) {
        w0(f63452o, z9);
        if (e0() != null) {
            e0().setEnabled(z9);
        }
    }

    @Override // eltos.simpledialogfragment.f, androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    @CallSuper
    public void onCreate(Bundle bundle) {
        super.onCreate(bundle);
        setRetainInstance(false);
    }

    @Override // eltos.simpledialogfragment.f, androidx.fragment.app.DialogFragment
    @NonNull
    public Dialog onCreateDialog(Bundle bundle) {
        CharSequence charSequence;
        AlertDialog alertDialog = (AlertDialog) super.onCreateDialog(bundle);
        this.f63455n = alertDialog.getLayoutInflater();
        View M0 = M0(bundle);
        View K0 = K0(c.l.K0);
        TextView textView = (TextView) K0.findViewById(c.i.f64142b1);
        View findViewById = K0.findViewById(c.i.f64159d5);
        ((ViewGroup) K0.findViewById(c.i.f64156d1)).addView(M0);
        alertDialog.setView(K0);
        String b02 = b0();
        int i4 = 0;
        if (b02 != null) {
            if (!Z().getBoolean("SimpleDialog.html")) {
                charSequence = b02;
            } else if (Build.VERSION.SDK_INT >= 24) {
                charSequence = Html.fromHtml(b02, 0);
            } else {
                charSequence = Html.fromHtml(b02);
            }
            textView.setText(charSequence);
        } else {
            textView.setVisibility(8);
        }
        alertDialog.setMessage(null);
        findViewById.setVisibility((f0() != null || b02 == null) ? 8 : 8);
        alertDialog.setOnShowListener(new a());
        return alertDialog;
    }
}
