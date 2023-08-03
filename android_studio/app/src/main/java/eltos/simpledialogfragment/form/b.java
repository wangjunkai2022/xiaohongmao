package eltos.simpledialogfragment.form;

import android.content.Context;
import android.os.Bundle;
import android.util.TypedValue;
import android.view.View;
import android.widget.TextView;
import androidx.annotation.NonNull;
import eltos.simpledialogfragment.c;
import eltos.simpledialogfragment.color.ColorView;
import eltos.simpledialogfragment.f;
import eltos.simpledialogfragment.form.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: ColorViewHolder.java */
/* loaded from: classes3.dex */
public class b extends d<ColorField> implements f.c {

    /* renamed from: d  reason: collision with root package name */
    protected static final String f65139d = "color";

    /* renamed from: e  reason: collision with root package name */
    private static final String f65140e = "colorPickerDialogTag";

    /* renamed from: b  reason: collision with root package name */
    private TextView f65141b;

    /* renamed from: c  reason: collision with root package name */
    private ColorView f65142c;

    /* compiled from: ColorViewHolder.java */
    /* loaded from: classes3.dex */
    class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            b.this.f65142c.performClick();
        }
    }

    /* compiled from: ColorViewHolder.java */
    /* renamed from: eltos.simpledialogfragment.form.b$b  reason: collision with other inner class name */
    /* loaded from: classes3.dex */
    class View$OnClickListenerC0518b implements View.OnClickListener {

        /* renamed from: a  reason: collision with root package name */
        final /* synthetic */ g.b f65144a;

        /* renamed from: b  reason: collision with root package name */
        final /* synthetic */ Context f65145b;

        View$OnClickListenerC0518b(g.b bVar, Context context) {
            this.f65144a = bVar;
            this.f65145b = context;
        }

        @Override // android.view.View.OnClickListener
        public void onClick(View view) {
            g.b bVar = this.f65144a;
            eltos.simpledialogfragment.f o02 = ((eltos.simpledialogfragment.color.a) eltos.simpledialogfragment.color.a.z1().G0(((ColorField) b.this.f65166a).getText(this.f65145b))).C1(((ColorField) b.this.f65166a).colors).y1(((ColorField) b.this.f65166a).allowCustom).A1(b.this.f65142c.getColor()).o0();
            bVar.g(o02, b.f65140e + ((ColorField) b.this.f65166a).resultKey);
        }
    }

    public b(ColorField colorField) {
        super(colorField);
    }

    @Override // eltos.simpledialogfragment.f.c
    public boolean R(@NonNull String str, int i4, @NonNull Bundle bundle) {
        ColorView colorView;
        if ((f65140e + ((ColorField) this.f65166a).resultKey).equals(str)) {
            if (i4 != -1 || (colorView = this.f65142c) == null) {
                return true;
            }
            colorView.setColor(bundle.getInt(eltos.simpledialogfragment.color.a.R, colorView.getColor()));
            return true;
        }
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean a(g.c cVar) {
        cVar.b();
        return this.f65142c.requestFocus();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public int b() {
        return c.l.N0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean c(Context context) {
        return (((ColorField) this.f65166a).required && this.f65142c.getColor() == 0) ? false : true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void d(Bundle bundle, String str) {
        bundle.putInt(str, this.f65142c.getColor());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void e(Bundle bundle) {
        bundle.putInt("color", this.f65142c.getColor());
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void f(View view, Context context, Bundle bundle, g.b bVar) {
        this.f65141b = (TextView) view.findViewById(c.i.f64242q2);
        this.f65142c = (ColorView) view.findViewById(c.i.P0);
        String text = ((ColorField) this.f65166a).getText(context);
        this.f65141b.setText(text);
        this.f65141b.setVisibility(text == null ? 8 : 0);
        this.f65141b.setOnClickListener(new a());
        if (bundle != null) {
            this.f65142c.setColor(bundle.getInt("color"));
        } else {
            this.f65142c.setColor(((ColorField) this.f65166a).getInitialColor(context));
        }
        this.f65142c.setOutlineWidth((int) TypedValue.applyDimension(1, 2.0f, context.getResources().getDisplayMetrics()));
        this.f65142c.setOutlineColor(((ColorField) this.f65166a).outline);
        this.f65142c.setStyle(ColorView.Style.PALETTE);
        this.f65142c.setChecked(true);
        this.f65142c.setOnClickListener(new View$OnClickListenerC0518b(bVar, context));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean g(Context context) {
        boolean c10 = c(context);
        if (c10) {
            TypedValue typedValue = new TypedValue();
            if (this.f65141b.getContext().getTheme().resolveAttribute(16842904, typedValue, true)) {
                this.f65141b.setTextColor(typedValue.data);
            } else {
                this.f65141b.setTextColor(-1979711488);
            }
        } else {
            this.f65141b.setTextColor(context.getResources().getColor(c.f.E2));
        }
        return c10;
    }
}
