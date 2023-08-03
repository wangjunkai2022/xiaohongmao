package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: AdapterDeviceBinding.java */
/* loaded from: classes3.dex */
public final class l implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final LinearLayout f62667a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final Button f62668b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final Button f62669c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final Button f62670d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f62671e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final LinearLayout f62672f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final LinearLayout f62673g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final TextView f62674h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final TextView f62675i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final TextView f62676j;

    private l(@NonNull LinearLayout linearLayout, @NonNull Button button, @NonNull Button button2, @NonNull Button button3, @NonNull ImageView imageView, @NonNull LinearLayout linearLayout2, @NonNull LinearLayout linearLayout3, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3) {
        this.f62667a = linearLayout;
        this.f62668b = button;
        this.f62669c = button2;
        this.f62670d = button3;
        this.f62671e = imageView;
        this.f62672f = linearLayout2;
        this.f62673g = linearLayout3;
        this.f62674h = textView;
        this.f62675i = textView2;
        this.f62676j = textView3;
    }

    @NonNull
    public static l a(@NonNull View view) {
        int i4 = R.id.btn_connect;
        Button button = (Button) ViewBindings.findChildViewById(view, R.id.btn_connect);
        if (button != null) {
            i4 = R.id.btn_detail;
            Button button2 = (Button) ViewBindings.findChildViewById(view, R.id.btn_detail);
            if (button2 != null) {
                i4 = R.id.btn_disconnect;
                Button button3 = (Button) ViewBindings.findChildViewById(view, R.id.btn_disconnect);
                if (button3 != null) {
                    i4 = R.id.img_blue;
                    ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.img_blue);
                    if (imageView != null) {
                        i4 = R.id.layout_connected;
                        LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_connected);
                        if (linearLayout != null) {
                            i4 = R.id.layout_idle;
                            LinearLayout linearLayout2 = (LinearLayout) ViewBindings.findChildViewById(view, R.id.layout_idle);
                            if (linearLayout2 != null) {
                                i4 = R.id.txt_mac;
                                TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.txt_mac);
                                if (textView != null) {
                                    i4 = R.id.txt_name;
                                    TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.txt_name);
                                    if (textView2 != null) {
                                        i4 = R.id.txt_rssi;
                                        TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.txt_rssi);
                                        if (textView3 != null) {
                                            return new l((LinearLayout) view, button, button2, button3, imageView, linearLayout, linearLayout2, textView, textView2, textView3);
                                        }
                                    }
                                }
                            }
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static l c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static l d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.adapter_device, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public LinearLayout getRoot() {
        return this.f62667a;
    }
}
