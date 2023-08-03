package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;

/* compiled from: LayoutEnterChatNameBinding.java */
/* loaded from: classes3.dex */
public final class y1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f65864a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ProgressBar f65865b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final LinearLayout f65866c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final EditText f65867d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f65868e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f65869f;

    private y1(@NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull LinearLayout linearLayout2, @NonNull EditText editText, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f65864a = linearLayout;
        this.f65865b = progressBar;
        this.f65866c = linearLayout2;
        this.f65867d = editText;
        this.f65868e = imageView;
        this.f65869f = textView;
    }

    @NonNull
    public static y1 a(@NonNull View view) {
        int i4 = b.j.f1976y1;
        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i4);
        if (progressBar != null) {
            LinearLayout linearLayout = (LinearLayout) view;
            i4 = b.j.f1890p5;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, i4);
            if (editText != null) {
                i4 = b.j.J8;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
                if (imageView != null) {
                    i4 = b.j.pg;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                    if (textView != null) {
                        return new y1(linearLayout, progressBar, linearLayout, editText, imageView, textView);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static y1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.f2154v2, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f65864a;
    }
}
