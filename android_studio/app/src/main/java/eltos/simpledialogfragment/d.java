package eltos.simpledialogfragment;

import android.os.Bundle;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import androidx.annotation.StringRes;
import eltos.simpledialogfragment.c;

/* compiled from: SimpleCheckDialog.java */
/* loaded from: classes3.dex */
public class d extends b<d> {
    public static final String TAG = "SimpleCheckDialog.";

    /* renamed from: s  reason: collision with root package name */
    public static final String f65104s = "SimpleCheckDialog.CHECKED";

    /* renamed from: t  reason: collision with root package name */
    protected static final String f65105t = "simpleCheckDialog.check_label";

    /* renamed from: u  reason: collision with root package name */
    protected static final String f65106u = "simpleCheckDialog.check_required";

    /* renamed from: r  reason: collision with root package name */
    private CheckBox f65107r;

    /* compiled from: SimpleCheckDialog.java */
    /* loaded from: classes3.dex */
    class a implements CompoundButton.OnCheckedChangeListener {
        a() {
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
            d dVar = d.this;
            dVar.V0(dVar.Y0());
        }
    }

    public static d X0() {
        return new d();
    }

    /* JADX INFO: Access modifiers changed from: private */
    public boolean Y0() {
        return this.f65107r.isChecked() || !Z().getBoolean(f65106u);
    }

    @Override // eltos.simpledialogfragment.b
    public View M0(Bundle bundle) {
        View K0 = K0(c.l.H0);
        CheckBox checkBox = (CheckBox) K0.findViewById(c.i.E0);
        this.f65107r = checkBox;
        checkBox.setText(Y(f65105t));
        if (bundle != null) {
            this.f65107r.setChecked(bundle.getBoolean(f65104s, false));
        } else {
            this.f65107r.setChecked(Z().getBoolean(f65104s, false));
        }
        this.f65107r.setOnCheckedChangeListener(new a());
        return K0;
    }

    @Override // eltos.simpledialogfragment.b
    protected void N0() {
        V0(Y0());
    }

    @Override // eltos.simpledialogfragment.b
    public Bundle R0(int i4) {
        Bundle bundle = new Bundle();
        bundle.putBoolean(f65104s, this.f65107r.isChecked());
        return bundle;
    }

    public d Z0(boolean z9) {
        return (d) w0(f65104s, z9);
    }

    public d a1(boolean z9) {
        return (d) w0(f65106u, z9);
    }

    public d b1(@StringRes int i4) {
        return (d) t0(f65105t, i4);
    }

    public d c1(String str) {
        return (d) v0(f65105t, str);
    }

    @Override // androidx.fragment.app.DialogFragment, androidx.fragment.app.Fragment
    public void onSaveInstanceState(Bundle bundle) {
        super.onSaveInstanceState(bundle);
        bundle.putBoolean(f65104s, this.f65107r.isChecked());
    }
}
