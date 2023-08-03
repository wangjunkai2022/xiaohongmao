package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentUpdateAppBinding.java */
/* loaded from: classes3.dex */
public final class y1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f63354a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f63355b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ProgressBar f63356c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f63357d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f63358e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f63359f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f63360g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f63361h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f63362i;

    private y1(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ProgressBar progressBar, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4, @NonNull TextView textView5, @NonNull TextView textView6) {
        this.f63354a = linearLayout;
        this.f63355b = imageView;
        this.f63356c = progressBar;
        this.f63357d = textView;
        this.f63358e = textView2;
        this.f63359f = textView3;
        this.f63360g = textView4;
        this.f63361h = textView5;
        this.f63362i = textView6;
    }

    @NonNull
    public static y1 a(@NonNull View view) {
        int i4 = R.id.bt_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.bt_close);
        if (imageView != null) {
            i4 = R.id.progress;
            ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.progress);
            if (progressBar != null) {
                i4 = R.id.tv_cancel;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_cancel);
                if (textView != null) {
                    i4 = R.id.tv_desc;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_desc);
                    if (textView2 != null) {
                        i4 = R.id.tv_header;
                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_header);
                        if (textView3 != null) {
                            i4 = R.id.tv_ok;
                            TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_ok);
                            if (textView4 != null) {
                                i4 = R.id.tv_title;
                                TextView textView5 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_title);
                                if (textView5 != null) {
                                    i4 = R.id.update_web;
                                    TextView textView6 = (TextView) ViewBindings.findChildViewById(view, R.id.update_web);
                                    if (textView6 != null) {
                                        return new y1((LinearLayout) view, imageView, progressBar, textView, textView2, textView3, textView4, textView5, textView6);
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
    public static y1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static y1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_update_app, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f63354a;
    }
}
