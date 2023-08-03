package eltos.simpledialogfragment.form;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import android.widget.TextView;
import eltos.simpledialogfragment.c;
import eltos.simpledialogfragment.form.g;

/* JADX INFO: Access modifiers changed from: package-private */
/* compiled from: HintViewHolder.java */
/* loaded from: classes3.dex */
public class e extends d<Hint> {
    /* JADX INFO: Access modifiers changed from: package-private */
    public e(Hint hint) {
        super(hint);
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean a(g.c cVar) {
        return false;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public int b() {
        return c.l.P0;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean c(Context context) {
        return true;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void d(Bundle bundle, String str) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void e(Bundle bundle) {
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public void f(View view, Context context, Bundle bundle, g.b bVar) {
        ((TextView) view.findViewById(c.i.f64242q2)).setHint(((Hint) this.f65166a).getText(context));
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.form.d
    public boolean g(Context context) {
        return true;
    }
}
