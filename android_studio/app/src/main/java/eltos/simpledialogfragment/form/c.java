package eltos.simpledialogfragment.form;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.EditText;
import androidx.annotation.NonNull;
import com.google.android.material.textfield.TextInputLayout;
import eltos.simpledialogfragment.c;
import eltos.simpledialogfragment.f;
import eltos.simpledialogfragment.form.DateTime;
import eltos.simpledialogfragment.form.g;
import java.text.SimpleDateFormat;
import java.util.Date;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: DateTimeViewHolder.java */
/* loaded from: classes3.dex */
public class c extends eltos.simpledialogfragment.form.d<DateTime> implements f.c {

    /* renamed from: j  reason: collision with root package name */
    protected static final String f65147j = "date";

    /* renamed from: k  reason: collision with root package name */
    protected static final String f65148k = "hour";

    /* renamed from: l  reason: collision with root package name */
    protected static final String f65149l = "minute";

    /* renamed from: m  reason: collision with root package name */
    private static final String f65150m = "datePickerDialogTag";

    /* renamed from: n  reason: collision with root package name */
    private static final String f65151n = "timePickerDialogTag";

    /* renamed from: b  reason: collision with root package name */
    private EditText f65152b;

    /* renamed from: c  reason: collision with root package name */
    private EditText f65153c;

    /* renamed from: d  reason: collision with root package name */
    private TextInputLayout f65154d;

    /* renamed from: e  reason: collision with root package name */
    private TextInputLayout f65155e;

    /* renamed from: f  reason: collision with root package name */
    private Long f65156f;

    /* renamed from: g  reason: collision with root package name */
    private Integer f65157g;

    /* renamed from: h  reason: collision with root package name */
    private Integer f65158h;

    /* renamed from: i  reason: collision with root package name */
    private g.b f65159i;

    /* compiled from: DateTimeViewHolder.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g.b f65160a;

        a(g.b bVar) {
            this.f65160a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f65160a.b();
            c.this.o();
        }
    }

    /* compiled from: DateTimeViewHolder.java */
    /* loaded from: classes3.dex */
    class b implements View.OnFocusChangeListener {
        b() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z9) {
            if (z9) {
                if (c.this.f65156f == null || ((DateTime) c.this.f65166a).required) {
                    c.this.f65152b.performClick();
                }
            }
        }
    }

    /* compiled from: DateTimeViewHolder.java */
    /* renamed from: eltos.simpledialogfragment.form.c$c  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class View$OnClickListenerC0519c implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g.b f65163a;

        View$OnClickListenerC0519c(g.b bVar) {
            this.f65163a = bVar;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            this.f65163a.b();
            c.this.p();
        }
    }

    /* compiled from: DateTimeViewHolder.java */
    /* loaded from: classes3.dex */
    class d implements View.OnFocusChangeListener {
        d() {
        }

        @Override // android.view.View.OnFocusChangeListener
        public void onFocusChange(View view, boolean z9) {
            if (z9) {
                if (c.this.f65157g == null || c.this.f65158h == null || ((DateTime) c.this.f65166a).required) {
                    c.this.f65153c.performClick();
                }
            }
        }
    }

    public c(DateTime dateTime) {
        super(dateTime);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void o() {
        eltos.simpledialogfragment.e eVar = (eltos.simpledialogfragment.e) ((eltos.simpledialogfragment.e) eltos.simpledialogfragment.e.W0().G0(((DateTime) this.f65166a).getText(this.f65152b.getContext()))).o0();
        E e4 = this.f65166a;
        if (((DateTime) e4).min != null) {
            eVar.d1(((DateTime) e4).min.longValue());
        }
        E e10 = this.f65166a;
        if (((DateTime) e10).max != null) {
            eVar.b1(((DateTime) e10).max.longValue());
        }
        if (!((DateTime) this.f65166a).required) {
            eVar.m0(c.n.J);
        }
        Long l10 = this.f65156f;
        if (l10 != null) {
            eVar.X0(l10.longValue());
        }
        g.b bVar = this.f65159i;
        bVar.g(eVar, f65150m + ((DateTime) this.f65166a).resultKey);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void p() {
        eltos.simpledialogfragment.h hVar = (eltos.simpledialogfragment.h) ((eltos.simpledialogfragment.h) eltos.simpledialogfragment.h.W0().G0(((DateTime) this.f65166a).getText(this.f65153c.getContext()))).o0();
        Integer num = this.f65157g;
        if (num != null) {
            hVar.X0(num.intValue());
        }
        Integer num2 = this.f65158h;
        if (num2 != null) {
            hVar.Y0(num2.intValue());
        }
        if (!((DateTime) this.f65166a).required) {
            hVar.m0(c.n.J);
        }
        g.b bVar = this.f65159i;
        bVar.g(hVar, f65151n + ((DateTime) this.f65166a).resultKey);
    }

    private void q() {
        String str = null;
        this.f65152b.setText(this.f65156f == null ? null : SimpleDateFormat.getDateInstance().format(new Date(this.f65156f.longValue())));
        EditText editText = this.f65153c;
        if (this.f65157g != null && this.f65158h != null) {
            str = SimpleDateFormat.getTimeInstance(3).format(new Date(0, 0, 0, this.f65157g.intValue(), this.f65158h.intValue()));
        }
        editText.setText(str);
        int i4 = 2;
        this.f65154d.setEndIconMode((((DateTime) this.f65166a).required || this.f65156f == null) ? 0 : 2);
        this.f65155e.setEndIconMode((((DateTime) this.f65166a).required || this.f65157g == null || this.f65158h == null) ? 0 : 0);
        this.f65159i.h();
    }

    @Override // eltos.simpledialogfragment.f.c
    public boolean R(@NonNull String str, int i4, @NonNull Bundle bundle) {
        if ((f65150m + ((DateTime) this.f65166a).resultKey).equals(str)) {
            boolean z9 = this.f65156f == null;
            if (i4 == -1) {
                this.f65156f = Long.valueOf(bundle.getLong(eltos.simpledialogfragment.e.f65109s));
                this.f65154d.setErrorEnabled(false);
                if (((DateTime) this.f65166a).type == DateTime.Type.DATETIME && (this.f65157g == null || this.f65158h == null)) {
                    this.f65153c.performClick();
                } else if (z9) {
                    this.f65159i.d(false);
                }
            } else if (i4 == -2) {
                this.f65156f = null;
            }
            q();
            return true;
        }
        if ((f65151n + ((DateTime) this.f65166a).resultKey).equals(str)) {
            boolean z10 = this.f65157g == null || this.f65158h == null;
            if (i4 == -1) {
                this.f65157g = Integer.valueOf(bundle.getInt(eltos.simpledialogfragment.h.f65202s));
                this.f65158h = Integer.valueOf(bundle.getInt(eltos.simpledialogfragment.h.f65203t));
                this.f65155e.setErrorEnabled(false);
                if (z10) {
                    this.f65159i.d(false);
                }
            } else if (i4 == -2) {
                this.f65157g = null;
                this.f65158h = null;
            }
            q();
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean a(g.c cVar) {
        if (((DateTime) this.f65166a).type == DateTime.Type.TIME) {
            return this.f65153c.requestFocus();
        }
        return this.f65152b.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public int b() {
        return c.l.O0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean c(Context context) {
        E e4 = this.f65166a;
        return !((DateTime) e4).required || (((DateTime) e4).type == DateTime.Type.DATE && this.f65156f != null) || !((((DateTime) e4).type != DateTime.Type.TIME || this.f65157g == null || this.f65158h == null) && (((DateTime) e4).type != DateTime.Type.DATETIME || this.f65156f == null || this.f65157g == null || this.f65158h == null));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void d(Bundle bundle, String str) {
        Long l10 = this.f65156f;
        Date date = new Date(l10 == null ? 0L : l10.longValue());
        Integer num = this.f65157g;
        date.setHours(num == null ? 0 : num.intValue());
        Integer num2 = this.f65158h;
        date.setMinutes(num2 != null ? num2.intValue() : 0);
        bundle.putLong(str, date.getTime());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void e(Bundle bundle) {
        Long l10 = this.f65156f;
        if (l10 != null) {
            bundle.putLong("date", l10.longValue());
        }
        Integer num = this.f65157g;
        if (num != null) {
            bundle.putInt(f65148k, num.intValue());
        }
        Integer num2 = this.f65158h;
        if (num2 != null) {
            bundle.putInt(f65149l, num2.intValue());
        }
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void f(View view, Context context, Bundle bundle, g.b bVar) {
        this.f65159i = bVar;
        this.f65152b = (EditText) view.findViewById(c.i.f64168f1);
        this.f65153c = (EditText) view.findViewById(c.i.f64217m5);
        this.f65154d = (TextInputLayout) view.findViewById(c.i.f64175g1);
        this.f65155e = (TextInputLayout) view.findViewById(c.i.f64224n5);
        String text = ((DateTime) this.f65166a).getText(context);
        if (text != null) {
            this.f65154d.setHint(text);
            if (((DateTime) this.f65166a).type == DateTime.Type.TIME) {
                this.f65155e.setHint(text);
            }
        }
        TextInputLayout textInputLayout = this.f65154d;
        E e4 = this.f65166a;
        DateTime.Type type = ((DateTime) e4).type;
        DateTime.Type type2 = DateTime.Type.DATETIME;
        int i4 = 8;
        textInputLayout.setVisibility((type == type2 || ((DateTime) e4).type == DateTime.Type.DATE) ? 0 : 8);
        this.f65152b.setInputType(0);
        this.f65152b.setKeyListener(null);
        this.f65152b.setOnClickListener(new a(bVar));
        this.f65152b.setOnFocusChangeListener(new b());
        TextInputLayout textInputLayout2 = this.f65155e;
        E e10 = this.f65166a;
        textInputLayout2.setVisibility((((DateTime) e10).type == type2 || ((DateTime) e10).type == DateTime.Type.TIME) ? 0 : 0);
        this.f65153c.setInputType(0);
        this.f65153c.setKeyListener(null);
        this.f65153c.setOnClickListener(new View$OnClickListenerC0519c(bVar));
        this.f65153c.setOnFocusChangeListener(new d());
        if (bundle != null) {
            this.f65156f = Long.valueOf(bundle.getLong("date"));
            this.f65157g = Integer.valueOf(bundle.getInt(f65148k));
            this.f65158h = Integer.valueOf(bundle.getInt(f65149l));
        } else {
            E e11 = this.f65166a;
            this.f65156f = ((DateTime) e11).date;
            this.f65157g = ((DateTime) e11).hour;
            this.f65158h = ((DateTime) e11).minute;
        }
        q();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean g(Context context) {
        boolean c10 = c(context);
        this.f65154d.setErrorEnabled(false);
        this.f65155e.setErrorEnabled(false);
        if (!c10) {
            if (this.f65156f == null) {
                this.f65154d.setError(context.getString(c.n.T0));
            }
            if (this.f65157g == null || this.f65158h == null) {
                this.f65155e.setError(context.getString(c.n.T0));
            }
        }
        return c10;
    }
}
