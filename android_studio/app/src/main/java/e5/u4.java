package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: SubtitleLayoutBinding.java */
/* loaded from: classes3.dex */
public final class u4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f63201a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f63202b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f63203c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f63204d;

    private u4(@NonNull FrameLayout frameLayout, @NonNull FrameLayout frameLayout2, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f63201a = frameLayout;
        this.f63202b = frameLayout2;
        this.f63203c = imageView;
        this.f63204d = textView;
    }

    @NonNull
    public static u4 a(@NonNull View view) {
        FrameLayout frameLayout = (FrameLayout) view;
        int i4 = R.id.iv_subtitle_close;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_subtitle_close);
        if (imageView != null) {
            i4 = R.id.tv_subtitle;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_subtitle);
            if (textView != null) {
                return new u4(frameLayout, frameLayout, imageView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static u4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static u4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.subtitle_layout, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f63201a;
    }
}
