package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.FrameLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogMessageBinding.java */
/* loaded from: classes3.dex */
public final class e0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final FrameLayout f62341a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f62342b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f62343c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62344d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62345e;

    private e0(@NonNull FrameLayout frameLayout, @NonNull Button button, @NonNull Button button2, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f62341a = frameLayout;
        this.f62342b = button;
        this.f62343c = button2;
        this.f62344d = textView;
        this.f62345e = textView2;
    }

    @NonNull
    public static e0 a(@NonNull View view) {
        int i4 = R.id.dialog_message_cancel;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.dialog_message_cancel);
        if (button != null) {
            i4 = R.id.dialog_message_commit;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.dialog_message_commit);
            if (button2 != null) {
                i4 = R.id.dialog_message_content;
                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_message_content);
                if (textView != null) {
                    i4 = R.id.dialog_title;
                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_title);
                    if (textView2 != null) {
                        return new e0((FrameLayout) view, button, button2, textView, textView2);
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static e0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static e0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_message, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public FrameLayout getRoot() {
        return this.f62341a;
    }
}
