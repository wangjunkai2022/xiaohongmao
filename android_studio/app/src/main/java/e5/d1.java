package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.recyclerview.widget.RecyclerView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentChatRequestsListBinding.java */
/* loaded from: classes3.dex */
public final class d1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final ConstraintLayout f62317a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final RecyclerView f62318b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f62319c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62320d;

    private d1(@NonNull ConstraintLayout constraintLayout, @NonNull RecyclerView recyclerView, @NonNull ImageView imageView, @NonNull TextView textView) {
        this.f62317a = constraintLayout;
        this.f62318b = recyclerView;
        this.f62319c = imageView;
        this.f62320d = textView;
    }

    @NonNull
    public static d1 a(@NonNull View view) {
        int i4 = R.id.chat_request_list;
        RecyclerView recyclerView = (RecyclerView) ViewBindings.findChildViewById(view, R.id.chat_request_list);
        if (recyclerView != null) {
            i4 = R.id.iv_empty;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.iv_empty);
            if (imageView != null) {
                i4 = R.id.tv_empty;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_empty);
                if (textView != null) {
                    return new d1((ConstraintLayout) view, recyclerView, imageView, textView);
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static d1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static d1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_chat_requests_list, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public ConstraintLayout getRoot() {
        return this.f62317a;
    }
}
