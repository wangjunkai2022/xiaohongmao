package eltos.simpledialogfragment.form;

import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.view.ViewGroup;
import android.widget.AdapterView;
import android.widget.ArrayAdapter;
import android.widget.SpinnerAdapter;
import android.widget.TextView;
import androidx.annotation.NonNull;
import eltos.simpledialogfragment.c;
import eltos.simpledialogfragment.form.CustomSpinnerView;
import eltos.simpledialogfragment.form.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: SpinnerViewHolder.java */
/* loaded from: classes3.dex */
public class h extends d<Spinner> {

    /* renamed from: e  reason: collision with root package name */
    public static final int f65191e = -1;

    /* renamed from: f  reason: collision with root package name */
    protected static final String f65192f = "pos";

    /* renamed from: b  reason: collision with root package name */
    private CustomSpinnerView f65193b;

    /* renamed from: c  reason: collision with root package name */
    private TextView f65194c;

    /* renamed from: d  reason: collision with root package name */
    private c f65195d;

    /* compiled from: SpinnerViewHolder.java */
    /* loaded from: classes3.dex */
    class a implements AdapterView.OnItemSelectedListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g.b f65196a;

        a(g.b bVar) {
            this.f65196a = bVar;
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onItemSelected(AdapterView<?> adapterView, View view, int i4, long j4) {
            this.f65196a.d(false);
        }

        @Override // android.widget.AdapterView.OnItemSelectedListener
        public void onNothingSelected(AdapterView<?> adapterView) {
        }
    }

    /* compiled from: SpinnerViewHolder.java */
    /* loaded from: classes3.dex */
    class b implements CustomSpinnerView.a {
        b() {
        }

        @Override // eltos.simpledialogfragment.form.CustomSpinnerView.a
        public void e() {
            if (h.this.j() == -1) {
                h hVar = h.this;
                if (((Spinner) hVar.f65166a).required) {
                    hVar.k(0);
                }
            }
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* compiled from: SpinnerViewHolder.java */
    /* loaded from: classes3.dex */
    public static class c extends ArrayAdapter<String> {

        /* renamed from: a  reason: collision with root package name */
        private int f65199a;

        /* renamed from: b  reason: collision with root package name */
        private boolean f65200b;

        c(Context context, String[] strArr, boolean z9, String str) {
            super(context, 17367049);
            this.f65200b = z9;
            if (z9) {
                this.f65199a = 0;
                add(str);
                addAll(strArr);
                return;
            }
            addAll(strArr);
            add(str);
            this.f65199a = strArr.length;
        }

        int a(int i4) {
            int i10 = this.f65199a;
            if (i4 == i10) {
                return -1;
            }
            return i4 < i10 ? i4 : i4 - 1;
        }

        int b(int i4) {
            return i4 == -1 ? this.f65199a : i4 < this.f65199a ? i4 : i4 + 1;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        public int getCount() {
            return super.getCount() - (!this.f65200b ? 1 : 0);
        }

        @Override // android.widget.ArrayAdapter, android.widget.BaseAdapter, android.widget.SpinnerAdapter
        public View getDropDownView(int i4, View view, @NonNull ViewGroup viewGroup) {
            View dropDownView = super.getDropDownView(i4, view, viewGroup);
            if (i4 == this.f65199a) {
                TextView textView = (TextView) dropDownView.findViewById(16908308);
                textView.setText("");
                textView.setHint(getItem(i4));
            }
            return dropDownView;
        }

        @Override // android.widget.ArrayAdapter, android.widget.Adapter
        @NonNull
        public View getView(int i4, View view, @NonNull ViewGroup viewGroup) {
            View view2 = super.getView(i4, view, viewGroup);
            if (i4 == this.f65199a) {
                TextView textView = (TextView) view2.findViewById(16908308);
                textView.setText("");
                textView.setHint(getItem(i4));
            }
            return view2;
        }
    }

    /* JADX INFO: Access modifiers changed from: package-private */
    public h(Spinner spinner) {
        super(spinner);
    }

    /* JADX INFO: Access modifiers changed from: private */
    public int j() {
        return this.f65195d.a(this.f65193b.getSelectedItemPosition());
    }

    /* JADX INFO: Access modifiers changed from: private */
    public void k(int i4) {
        this.f65193b.setSelection(this.f65195d.b(i4), false);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean a(g.c cVar) {
        cVar.b();
        cVar.a();
        this.f65193b.performClick();
        return this.f65193b.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public int b() {
        return c.l.R0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean c(Context context) {
        return (((Spinner) this.f65166a).required && j() == -1) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void d(Bundle bundle, String str) {
        bundle.putInt(str, j());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void e(Bundle bundle) {
        bundle.putInt(f65192f, j());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void f(View view, Context context, Bundle bundle, g.b bVar) {
        this.f65193b = (CustomSpinnerView) view.findViewById(c.i.f64272u4);
        this.f65194c = (TextView) view.findViewById(c.i.f64242q2);
        String text = ((Spinner) this.f65166a).getText(context);
        this.f65194c.setText(text);
        this.f65194c.setVisibility(text == null ? 8 : 0);
        String[] items = ((Spinner) this.f65166a).getItems(context);
        String placeholderText = ((Spinner) this.f65166a).getPlaceholderText(context);
        if (items != null) {
            boolean z9 = !((Spinner) this.f65166a).required;
            if (placeholderText != null) {
                text = placeholderText;
            } else if (text == null) {
                text = "";
            }
            c cVar = new c(context, items, z9, text);
            this.f65195d = cVar;
            this.f65193b.setAdapter((SpinnerAdapter) cVar);
            E e4 = this.f65166a;
            k((((Spinner) e4).position < 0 || ((Spinner) e4).position >= items.length) ? -1 : ((Spinner) e4).position);
        }
        if (bundle != null) {
            k(bundle.getInt(f65192f));
        }
        this.f65193b.setOnItemSelectedListener(new a(bVar));
        this.f65193b.setSpinnerEventsListener(new b());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean g(Context context) {
        boolean c10 = c(context);
        if (c10) {
            TypedValue typedValue = new TypedValue();
            if (this.f65194c.getContext().getTheme().resolveAttribute(16842904, typedValue, true)) {
                this.f65194c.setTextColor(typedValue.data);
            } else {
                this.f65194c.setTextColor(-1979711488);
            }
        } else {
            this.f65194c.setTextColor(context.getResources().getColor(c.f.E2));
        }
        return c10;
    }
}
