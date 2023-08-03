package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageButton;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentChatDetailsPinnedMessageBinding.java */
/* loaded from: classes3.dex */
public final class b1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62266a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageButton f62267b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62268c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final View f62269d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final View f62270e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62271f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62272g;

    private b1(@NonNull ConstraintLayout constraintLayout, @NonNull ImageButton imageButton, @NonNull ImageView imageView, @NonNull View view, @NonNull View view2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f62266a = constraintLayout;
        this.f62267b = imageButton;
        this.f62268c = imageView;
        this.f62269d = view;
        this.f62270e = view2;
        this.f62271f = textView;
        this.f62272g = textView2;
    }

    @NonNull
    public static b1 a(@NonNull View view) {
        int i4 = R.id.btnRemovePin;
        ImageButton imageButton = (ImageButton) ViewBindings.findChildViewById(view, R.id.btnRemovePin);
        if (imageButton != null) {
            i4 = R.id.ivPinPreview;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivPinPreview);
            if (imageView != null) {
                i4 = R.id.pinDivider;
                View findChildViewById = ViewBindings.findChildViewById(view, R.id.pinDivider);
                if (findChildViewById != null) {
                    i4 = R.id.pinView;
                    View findChildViewById2 = ViewBindings.findChildViewById(view, R.id.pinView);
                    if (findChildViewById2 != null) {
                        i4 = R.id.tvPinContent;
                        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvPinContent);
                        if (textView != null) {
                            i4 = R.id.tvPinMessage;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvPinMessage);
                            if (textView2 != null) {
                                return new b1((ConstraintLayout) view, imageButton, imageView, findChildViewById, findChildViewById2, textView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static b1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static b1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_chat_details_pinned_message, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62266a;
    }
}
