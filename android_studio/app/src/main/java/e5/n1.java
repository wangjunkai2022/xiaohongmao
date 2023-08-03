package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.EditText;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentPinnedMsgPurchaseDialogBinding.java */
/* loaded from: classes3.dex */
public final class n1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62768a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f62769b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final EditText f62770c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f62771d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62772e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final RecyclerView f62773f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final TextView f62774g;

    private n1(@NonNull ConstraintLayout constraintLayout, @NonNull TextView textView, @NonNull EditText editText, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull RecyclerView recyclerView, @NonNull TextView textView2) {
        this.f62768a = constraintLayout;
        this.f62769b = textView;
        this.f62770c = editText;
        this.f62771d = imageView;
        this.f62772e = imageView2;
        this.f62773f = recyclerView;
        this.f62774g = textView2;
    }

    @NonNull
    public static n1 a(@NonNull View view) {
        int i4 = R.id.btnConfirm;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.btnConfirm);
        if (textView != null) {
            i4 = R.id.etContent;
            EditText editText = (EditText) ViewBindings.findChildViewById(view, R.id.etContent);
            if (editText != null) {
                i4 = R.id.icClose;
                ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.icClose);
                if (imageView != null) {
                    i4 = R.id.icHint;
                    ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.icHint);
                    if (imageView2 != null) {
                        i4 = R.id.recyclerView;
                        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.recyclerView);
                        if (recyclerView != null) {
                            i4 = R.id.tvHeader;
                            TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvHeader);
                            if (textView2 != null) {
                                return new n1((ConstraintLayout) view, textView, editText, imageView, imageView2, recyclerView, textView2);
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static n1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static n1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_pinned_msg_purchase_dialog, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62768a;
    }
}
