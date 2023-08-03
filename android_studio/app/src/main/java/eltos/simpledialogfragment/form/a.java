package eltos.simpledialogfragment.form;

import android.content.Context;
import android.content.res.TypedArray;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.widget.CheckBox;
import android.widget.CompoundButton;
import androidx.core.view.ViewCompat;
import eltos.simpledialogfragment.c;
import eltos.simpledialogfragment.form.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: CheckViewHolder.java */
/* loaded from: classes3.dex */
public class a extends d<Check> {

    /* renamed from: c  reason: collision with root package name */
    protected static final String f65133c = "checked";

    /* renamed from: b  reason: collision with root package name */
    private CheckBox f65134b;

    /* compiled from: CheckViewHolder.java */
    /* renamed from: eltos.simpledialogfragment.form.a$a  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class C0517a implements CompoundButton.OnCheckedChangeListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g.b f65135a;

        C0517a(g.b bVar) {
            this.f65135a = bVar;
        }

        @Override // android.widget.CompoundButton.OnCheckedChangeListener
        public void onCheckedChanged(CompoundButton compoundButton, boolean z9) {
            this.f65135a.h();
        }
    }

    /* compiled from: CheckViewHolder.java */
    /* loaded from: classes3.dex */
    class b implements Runnable {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g.c f65137a;

        b(g.c cVar) {
            this.f65137a = cVar;
        }

        @Override // java.lang.Runnable
        public void run() {
            a.this.f65134b.setFocusable(false);
            this.f65137a.a();
        }
    }

    public a(Check check) {
        super(check);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean a(g.c cVar) {
        cVar.b();
        this.f65134b.setFocusableInTouchMode(true);
        this.f65134b.postDelayed(new b(cVar), 100L);
        return this.f65134b.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public int b() {
        return c.l.M0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean c(Context context) {
        return !((Check) this.f65166a).required || this.f65134b.isChecked();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void d(Bundle bundle, String str) {
        bundle.putBoolean(str, this.f65134b.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void e(Bundle bundle) {
        bundle.putBoolean(f65133c, this.f65134b.isChecked());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void f(View view, Context context, Bundle bundle, g.b bVar) {
        CheckBox checkBox = (CheckBox) view.findViewById(c.i.E0);
        this.f65134b = checkBox;
        checkBox.setText(((Check) this.f65166a).getText(context));
        if (bundle != null) {
            this.f65134b.setChecked(bundle.getBoolean(f65133c));
        } else {
            this.f65134b.setChecked(((Check) this.f65166a).getInitialState(context));
        }
        if (bVar.f()) {
            this.f65134b.setOnCheckedChangeListener(new C0517a(bVar));
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean g(Context context) {
        boolean c10 = c(context);
        if (c10) {
            TypedValue typedValue = new TypedValue();
            this.f65134b.getContext().getTheme().resolveAttribute(16842860, typedValue, true);
            TypedArray obtainStyledAttributes = context.obtainStyledAttributes(typedValue.data, new int[]{16842904});
            this.f65134b.setTextColor(obtainStyledAttributes.getColor(0, ViewCompat.MEASURED_STATE_MASK));
            obtainStyledAttributes.recycle();
        } else {
            this.f65134b.setTextColor(context.getResources().getColor(c.f.E2));
        }
        return c10;
    }
}
