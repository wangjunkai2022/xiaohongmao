package eltos.simpledialogfragment.input;

import androidx.annotation.Nullable;
import eltos.simpledialogfragment.c;
import java.util.regex.Pattern;

/* compiled from: SimpleEMailDialog.java */
/* loaded from: classes3.dex */
public class a extends b {
    public static final String A = "SimpleInputDialog.text";
    protected static final String B = "^[_A-Za-z0-9-+]+(\\.[_A-Za-z0-9-]+)*@[A-Za-z0-9-]+(\\.[A-Za-z0-9]+)*(\\.[A-Za-z]{2,})$";
    public static final String TAG = "SimpleEMailDialog.";

    /* renamed from: z  reason: collision with root package name */
    protected final Pattern f65207z = Pattern.compile(B);

    public a() {
        c1(33);
        a1(c.n.M);
    }

    public static a m1() {
        return new a();
    }

    /* JADX INFO: Access modifiers changed from: protected */
    @Override // eltos.simpledialogfragment.input.b
    public String f1(@Nullable String str) {
        if (str != null && this.f65207z.matcher(str).matches()) {
            return super.f1(str);
        }
        return getString(c.n.V);
    }
}
