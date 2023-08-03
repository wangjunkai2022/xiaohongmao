package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.Switch;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: TranslationBottomsheetBinding.java */
/* loaded from: classes3.dex */
public final class w4 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f63282a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f63283b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f63284c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Switch f63285d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final Switch f63286e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f63287f;

    private w4(@NonNull LinearLayout linearLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull Switch r42, @NonNull Switch r52, @NonNull LinearLayout linearLayout2) {
        this.f63282a = linearLayout;
        this.f63283b = imageView;
        this.f63284c = imageView2;
        this.f63285d = r42;
        this.f63286e = r52;
        this.f63287f = linearLayout2;
    }

    @NonNull
    public static w4 a(@NonNull View view) {
        int i4 = R.id.ic_audio;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ic_audio);
        if (imageView != null) {
            i4 = R.id.ic_chat;
            ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ic_chat);
            if (imageView2 != null) {
                i4 = R.id.sw_option_audio;
                Switch r62 = (Switch) ViewBindings.findChildViewById(view, R.id.sw_option_audio);
                if (r62 != null) {
                    i4 = R.id.sw_option_text;
                    Switch r72 = (Switch) ViewBindings.findChildViewById(view, R.id.sw_option_text);
                    if (r72 != null) {
                        i4 = R.id.translation_row_audio;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.translation_row_audio);
                        if (linearLayout != null) {
                            return new w4((LinearLayout) view, imageView, imageView2, r62, r72, linearLayout);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static w4 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w4 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.translation_bottomsheet, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f63282a;
    }
}
