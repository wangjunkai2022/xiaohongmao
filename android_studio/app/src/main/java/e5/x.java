package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogEditFieldBinding.java */
/* loaded from: classes3.dex */
public final class x implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63288a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f63289b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final View f63290c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f63291d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f63292e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final EditText f63293f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f63294g;

    private x(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull View view, @NonNull View view2, @NonNull TextView textView2, @NonNull EditText editText, @NonNull TextView textView3) {
        this.f63288a = constraintLayout;
        this.f63289b = textView;
        this.f63290c = view;
        this.f63291d = view2;
        this.f63292e = textView2;
        this.f63293f = editText;
        this.f63294g = textView3;
    }

    @NonNull
    public static x a(@NonNull View view) {
        int i4 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i4 = R.id.divider1;
            View findChildViewById = ViewBindings.findChildViewById(view, R.id.divider1);
            if (findChildViewById != null) {
                i4 = R.id.divider2;
                View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.divider2);
                if (findChildViewById2 != null) {
                    i4 = R.id.ok;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.ok);
                    if (textView2 != null) {
                        i4 = R.id.popup_edit;
                        EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.popup_edit);
                        if (editText != null) {
                            i4 = R.id.tv_title;
                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                            if (textView3 != null) {
                                return new x((ConstraintLayout) view, textView, findChildViewById, findChildViewById2, textView2, editText, textView3);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static x c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_edit_field, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63288a;
    }
}
