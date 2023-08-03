package eltos.simpledialogfragment.form;

import android.content.Context;
import android.os.Bundle;
import android.view.View;
import androidx.annotation.LayoutRes;
import eltos.simpledialogfragment.form.FormElement;
import eltos.simpledialogfragment.form.g;

/* compiled from: FormElementViewHolder.java */
/* loaded from: classes3.dex */
public abstract class d<E extends FormElement> {

    /* renamed from: a  reason: collision with root package name */
    protected E f65166a;

    /* JADX INFO: Access modifiers changed from: protected */
    public d(E e4) {
        this.f65166a = e4;
    }

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean a(g.c cVar);

    /* JADX INFO: Access modifiers changed from: protected */
    @LayoutRes
    public abstract int b();

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean c(Context context);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void d(Bundle bundle, String str);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void e(Bundle bundle);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract void f(View view, Context context, Bundle bundle, g.b bVar);

    /* JADX INFO: Access modifiers changed from: protected */
    public abstract boolean g(Context context);
}
