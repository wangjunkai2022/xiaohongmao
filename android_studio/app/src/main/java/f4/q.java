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
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import b4.b;
import com.google.android.material.floatingactionbutton.FloatingActionButton;

/* compiled from: FragmentCreatingNameGroupBinding.java */
/* loaded from: classes3.dex */
public final class q implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f65697a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FloatingActionButton f65698b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f65699c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f65700d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final LinearLayout f65701e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ProgressBar f65702f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final RecyclerView f65703g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final Toolbar f65704h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f65705i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final View f65706j;

    private q(@NonNull ConstraintLayout constraintLayout, @NonNull FloatingActionButton floatingActionButton, @NonNull EditText editText, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout, @NonNull ProgressBar progressBar, @NonNull RecyclerView recyclerView, @NonNull Toolbar toolbar, @NonNull TextView textView, @NonNull View view) {
        this.f65697a = constraintLayout;
        this.f65698b = floatingActionButton;
        this.f65699c = editText;
        this.f65700d = imageView;
        this.f65701e = linearLayout;
        this.f65702f = progressBar;
        this.f65703g = recyclerView;
        this.f65704h = toolbar;
        this.f65705i = textView;
        this.f65706j = view;
    }

    @NonNull
    public static q a(@NonNull View view) {
        View findChildViewById;
        int i4 = b.j.Q3;
        FloatingActionButton floatingActionButton = (FloatingActionButton) ViewBindings.findChildViewById(view, i4);
        if (floatingActionButton != null) {
            i4 = b.j.f1890p5;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, i4);
            if (editText != null) {
                i4 = b.j.J8;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, i4);
                if (imageView != null) {
                    i4 = b.j.F9;
                    LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, i4);
                    if (linearLayout != null) {
                        i4 = b.j.mc;
                        ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, i4);
                        if (progressBar != null) {
                            i4 = b.j.dd;
                            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, i4);
                            if (recyclerView != null) {
                                i4 = b.j.Hf;
                                Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, i4);
                                if (toolbar != null) {
                                    i4 = b.j.pg;
                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, i4);
                                    if (textView != null && (findChildViewById = ViewBindings.findChildViewById(view, (i4 = b.j.qh))) != null) {
                                        return new q((ConstraintLayout) view, floatingActionButton, editText, imageView, linearLayout, progressBar, recyclerView, toolbar, textView, findChildViewById);
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static q c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.G0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f65697a;
    }
}
