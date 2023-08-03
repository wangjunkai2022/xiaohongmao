package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.RelativeLayout;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: NimMenuDialogBinding.java */
/* loaded from: classes3.dex */
public final class w3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f63280a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f63281b;

    private w3(@NonNull RelativeLayout relativeLayout, @NonNull LinearLayout linearLayout) {
        this.f63280a = relativeLayout;
        this.f63281b = linearLayout;
    }

    @NonNull
    public static w3 a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.menu_dialog_items_root);
        if (linearLayout != null) {
            return new w3((RelativeLayout) view, linearLayout);
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(R.id.menu_dialog_items_root)));
    }

    @NonNull
    public static w3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.nim_menu_dialog, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f63280a;
    }
}
