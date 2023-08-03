package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.CheckedTextView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: FragmentSettingsBinding.java */
/* loaded from: classes3.dex */
public final class v1 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f63213a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final CheckedTextView f63214b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final CheckedTextView f63215c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final CheckedTextView f63216d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f63217e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f63218f;

    private v1(@NonNull LinearLayout linearLayout, @NonNull CheckedTextView checkedTextView, @NonNull CheckedTextView checkedTextView2, @NonNull CheckedTextView checkedTextView3, @NonNull TextView textView, @NonNull TextView textView2) {
        this.f63213a = linearLayout;
        this.f63214b = checkedTextView;
        this.f63215c = checkedTextView2;
        this.f63216d = checkedTextView3;
        this.f63217e = textView;
        this.f63218f = textView2;
    }

    @NonNull
    public static v1 a(@NonNull View view) {
        int i4 = R.id.cb_notifications;
        CheckedTextView checkedTextView = (CheckedTextView) ViewBindings.findChildViewById(view, R.id.cb_notifications);
        if (checkedTextView != null) {
            i4 = R.id.cb_show_last_online;
            CheckedTextView checkedTextView2 = (CheckedTextView) ViewBindings.findChildViewById(view, R.id.cb_show_last_online);
            if (checkedTextView2 != null) {
                i4 = R.id.cb_sounds;
                CheckedTextView checkedTextView3 = (CheckedTextView) ViewBindings.findChildViewById(view, R.id.cb_sounds);
                if (checkedTextView3 != null) {
                    i4 = R.id.tv_clear_all;
                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tv_clear_all);
                    if (textView != null) {
                        i4 = R.id.tv_data_usage;
                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tv_data_usage);
                        if (textView2 != null) {
                            return new v1((LinearLayout) view, checkedTextView, checkedTextView2, checkedTextView3, textView, textView2);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static v1 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v1 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.fragment_settings, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f63213a;
    }
}
