package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.LinearLayout;
import android.widget.ListView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogBleliBinding.java */
/* loaded from: classes3.dex */
public final class q implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62923a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final LinearLayout f62924b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ListView f62925c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62926d;

    private q(@NonNull LinearLayout linearLayout, @NonNull LinearLayout linearLayout2, @NonNull ListView listView, @NonNull TextView textView) {
        this.f62923a = linearLayout;
        this.f62924b = linearLayout2;
        this.f62925c = listView;
        this.f62926d = textView;
    }

    @NonNull
    public static q a(@NonNull View view) {
        LinearLayout linearLayout = (LinearLayout) view;
        int i4 = R.id.dialog_ble_list;
        ListView listView = (ListView) ViewBindings.findChildViewById(view, R.id.dialog_ble_list);
        if (listView != null) {
            i4 = R.id.dialog_ble_scan;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.dialog_ble_scan);
            if (textView != null) {
                return new q(linearLayout, linearLayout, listView, textView);
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static q c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static q d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_bleli, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62923a;
    }
}
