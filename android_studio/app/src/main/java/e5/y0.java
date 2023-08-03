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

/* compiled from: FragmentBlacklistBinding.java */
/* loaded from: classes3.dex */
public final class y0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f63348a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f63349b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageButton f63350c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Toolbar f63351d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f63352e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f63353f;

    private y0(@NonNull ConstraintLayout constraintLayout, @NonNull RecyclerView recyclerView, @NonNull ImageButton imageButton, @NonNull Toolbar toolbar, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f63348a = constraintLayout;
        this.f63349b = recyclerView;
        this.f63350c = imageButton;
        this.f63351d = toolbar;
        this.f63352e = textView;
        this.f63353f = textView2;
    }

    @NonNull
    public static y0 a(@NonNull View view) {
        int i4 = R.id.blacklist_recycler;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.blacklist_recycler);
        if (recyclerView != null) {
            i4 = R.id.imgbtn_toolbar_back;
            ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.imgbtn_toolbar_back);
            if (imageButton != null) {
                i4 = R.id.toolbar;
                Toolbar toolbar = (Toolbar) ViewBindings.findChildViewById(view, R.id.toolbar);
                if (toolbar != null) {
                    i4 = R.id.tv_empty_list;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_empty_list);
                    if (textView != null) {
                        i4 = R.id.tv_toolbar_title;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_toolbar_title);
                        if (textView2 != null) {
                            return new y0((ConstraintLayout) view, recyclerView, imageButton, toolbar, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static y0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_blacklist, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f63348a;
    }
}
