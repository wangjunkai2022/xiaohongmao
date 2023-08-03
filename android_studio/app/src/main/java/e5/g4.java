package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: PrivateSetstringDialogPopuBinding.java */
/* loaded from: classes3.dex */
public final class g4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62468a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f62469b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62470c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final EditText f62471d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62472e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62473f;

    private g4(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull EditText editText, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f62468a = linearLayout;
        this.f62469b = textView;
        this.f62470c = textView2;
        this.f62471d = editText;
        this.f62472e = textView3;
        this.f62473f = textView4;
    }

    @NonNull
    public static g4 a(@NonNull View view) {
        int i4 = R.id.private_setstring_cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.private_setstring_cancel);
        if (textView != null) {
            i4 = R.id.private_setstring_commit;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.private_setstring_commit);
            if (textView2 != null) {
                i4 = R.id.private_setstring_edit;
                EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.private_setstring_edit);
                if (editText != null) {
                    i4 = R.id.private_setstring_text;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.private_setstring_text);
                    if (textView3 != null) {
                        i4 = R.id.private_setstring_title;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.private_setstring_title);
                        if (textView4 != null) {
                            return new g4((LinearLayout) view, textView, textView2, editText, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static g4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static g4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.private_setstring_dialog_popu, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62468a;
    }
}
