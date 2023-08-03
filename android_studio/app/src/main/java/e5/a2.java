package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;
import com.qennnsad.aknkaksd.presentation.ui.widget.OneKeyClearEditText;

/* compiled from: GraphCaptchaDialogBinding.java */
/* loaded from: classes3.dex */
public final class a2 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62238a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final OneKeyClearEditText f62239b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62240c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f62241d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62242e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62243f;

    private a2(@NonNull ConstraintLayout constraintLayout, @NonNull OneKeyClearEditText oneKeyClearEditText, @NonNull ImageView imageView, @NonNull Button button, @NonNull ImageView imageView2, @NonNull TextView textView) {
        this.f62238a = constraintLayout;
        this.f62239b = oneKeyClearEditText;
        this.f62240c = imageView;
        this.f62241d = button;
        this.f62242e = imageView2;
        this.f62243f = textView;
    }

    @NonNull
    public static a2 a(@NonNull View view) {
        int i4 = R.id.code;
        OneKeyClearEditText oneKeyClearEditText = (OneKeyClearEditText) ViewBindings.findChildViewById(view, R.id.code);
        if (oneKeyClearEditText != null) {
            i4 = R.id.ivLoginCaptchaImage;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivLoginCaptchaImage);
            if (imageView != null) {
                i4 = R.id.proceed;
                Button button = (Button) ViewBindings.findChildViewById(view, R.id.proceed);
                if (button != null) {
                    i4 = R.id.refresh;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.refresh);
                    if (imageView2 != null) {
                        i4 = R.id.title;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.title);
                        if (textView != null) {
                            return new a2((ConstraintLayout) view, oneKeyClearEditText, imageView, button, imageView2, textView);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static a2 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static a2 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.graph_captcha_dialog, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62238a;
    }
}
