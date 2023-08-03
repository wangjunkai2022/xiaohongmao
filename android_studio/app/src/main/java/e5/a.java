package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: ActivityAdminListBinding.java */
/* loaded from: classes3.dex */
public final class a implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62219a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageButton f62220b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RecyclerView f62221c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Toolbar f62222d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62223e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62224f;

    private a(@NonNull ConstraintLayout constraintLayout, @NonNull ImageButton imageButton, @NonNull RecyclerView recyclerView, @NonNull Toolbar toolbar, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f62219a = constraintLayout;
        this.f62220b = imageButton;
        this.f62221c = recyclerView;
        this.f62222d = toolbar;
        this.f62223e = textView;
        this.f62224f = textView2;
    }

    @NonNull
    public static a a(@NonNull View view) {
        int i4 = R.id.imgbtn_toolbar_back;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.imgbtn_toolbar_back);
        if (imageButton != null) {
            i4 = R.id.recycler;
            RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recycler);
            if (recyclerView != null) {
                i4 = R.id.toolbar;
                Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                if (toolbar != null) {
                    i4 = R.id.tv_empty_list;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_empty_list);
                    if (textView != null) {
                        i4 = R.id.tv_toolbar_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_toolbar_title);
                        if (textView2 != null) {
                            return new a((ConstraintLayout) view, imageButton, recyclerView, toolbar, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static a c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.activity_admin_list, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62219a;
    }
}
