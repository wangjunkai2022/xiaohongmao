package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogEditAvatarBinding.java */
/* loaded from: classes3.dex */
public final class v implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f63205a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f63206b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f63207c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f63208d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f63209e;

    private v(@NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f63205a = linearLayout;
        this.f63206b = textView;
        this.f63207c = textView2;
        this.f63208d = textView3;
        this.f63209e = textView4;
    }

    @NonNull
    public static v a(@NonNull View view) {
        int i4 = R.id.cancel;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.cancel);
        if (textView != null) {
            i4 = R.id.title;
            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.title);
            if (textView2 != null) {
                i4 = R.id.tv_camera;
                TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_camera);
                if (textView3 != null) {
                    i4 = R.id.tv_gallery;
                    TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_gallery);
                    if (textView4 != null) {
                        return new v((LinearLayout) view, textView, textView2, textView3, textView4);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static v c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_edit_avatar, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f63205a;
    }
}
