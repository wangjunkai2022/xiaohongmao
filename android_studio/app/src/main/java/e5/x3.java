package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.RelativeLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: NimMenuDialogItemBinding.java */
/* loaded from: classes3.dex */
public final class x3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final RelativeLayout f63325a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final TextView f63326b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final RelativeLayout f63327c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f63328d;

    private x3(@NonNull RelativeLayout relativeLayout, @NonNull TextView textView, @NonNull RelativeLayout relativeLayout2, @NonNull ImageView imageView) {
        this.f63325a = relativeLayout;
        this.f63326b = textView;
        this.f63327c = relativeLayout2;
        this.f63328d = imageView;
    }

    @NonNull
    public static x3 a(@NonNull View view) {
        int i4 = R.id.menu_button;
        TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.menu_button);
        if (textView != null) {
            RelativeLayout relativeLayout = (RelativeLayout) view;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.menu_select_icon);
            if (imageView != null) {
                return new x3(relativeLayout, textView, relativeLayout, imageView);
            }
            i4 = R.id.menu_select_icon;
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static x3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static x3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.nim_menu_dialog_item, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public RelativeLayout getRoot() {
        return this.f63325a;
    }
}
