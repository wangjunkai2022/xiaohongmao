package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ImageView;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.cardview.widget.CardView;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: DialogNamecardBinding.java */
/* loaded from: classes3.dex */
public final class f0 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final CardView f62368a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final ImageView f62369b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f62370c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final TextView f62371d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final TextView f62372e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final TextView f62373f;

    private f0(@NonNull CardView cardView, @NonNull ImageView imageView, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f62368a = cardView;
        this.f62369b = imageView;
        this.f62370c = textView;
        this.f62371d = textView2;
        this.f62372e = textView3;
        this.f62373f = textView4;
    }

    @NonNull
    public static f0 a(@NonNull View view) {
        int i4 = R.id.background;
        ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.background);
        if (imageView != null) {
            i4 = R.id.namecardCopy;
            TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.namecardCopy);
            if (textView != null) {
                i4 = R.id.namecard_name;
                TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.namecard_name);
                if (textView2 != null) {
                    i4 = R.id.room_live_namecard_prompt1;
                    TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.room_live_namecard_prompt1);
                    if (textView3 != null) {
                        i4 = R.id.room_live_namecard_prompt2;
                        TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.room_live_namecard_prompt2);
                        if (textView4 != null) {
                            return new f0((CardView) view, imageView, textView, textView2, textView3, textView4);
                        }
                    }
                }
            }
        }
        throw new NullPointerException("Missing required view with ID: ".concat(view.getResources().getResourceName(i4)));
    }

    @NonNull
    public static f0 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static f0 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.dialog_namecard, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public CardView getRoot() {
        return this.f62368a;
    }
}
