package h2;

import android.view.LayoutInflater;
import android.view.SurfaceView;
import android.view.View;
import android.view.ViewGroup;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import com.facebook.drawee.view.SimpleDraweeView;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.views.GPHVideoControls;
import com.giphy.sdk.ui.views.VideoBufferingIndicator;
import java.util.Objects;

/* compiled from: GphVideoPlayerViewBinding.java */
/* loaded from: classes2.dex */
public final class s implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final View f69052a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final VideoBufferingIndicator f69053b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final TextView f69054c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ConstraintLayout f69055d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final SimpleDraweeView f69056e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ProgressBar f69057f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final SurfaceView f69058g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final GPHVideoControls f69059h;

    private s(@NonNull View view, @NonNull VideoBufferingIndicator videoBufferingIndicator, @NonNull TextView textView, @NonNull ConstraintLayout constraintLayout, @NonNull SimpleDraweeView simpleDraweeView, @NonNull ProgressBar progressBar, @NonNull SurfaceView surfaceView, @NonNull GPHVideoControls gPHVideoControls) {
        this.f69052a = view;
        this.f69053b = videoBufferingIndicator;
        this.f69054c = textView;
        this.f69055d = constraintLayout;
        this.f69056e = simpleDraweeView;
        this.f69057f = progressBar;
        this.f69058g = surfaceView;
        this.f69059h = gPHVideoControls;
    }

    @NonNull
    public static s a(@NonNull View view) {
        int i4 = p.j.f17976s0;
        VideoBufferingIndicator videoBufferingIndicator = (VideoBufferingIndicator) view.findViewById(i4);
        if (videoBufferingIndicator != null) {
            i4 = p.j.f17906j1;
            TextView textView = (TextView) view.findViewById(i4);
            if (textView != null) {
                i4 = p.j.f17913k1;
                ConstraintLayout constraintLayout = (ConstraintLayout) view.findViewById(i4);
                if (constraintLayout != null) {
                    i4 = p.j.f17995u3;
                    SimpleDraweeView simpleDraweeView = (SimpleDraweeView) view.findViewById(i4);
                    if (simpleDraweeView != null) {
                        i4 = p.j.f18005v5;
                        ProgressBar progressBar = (ProgressBar) view.findViewById(i4);
                        if (progressBar != null) {
                            i4 = p.j.U5;
                            SurfaceView surfaceView = (SurfaceView) view.findViewById(i4);
                            if (surfaceView != null) {
                                i4 = p.j.M6;
                                GPHVideoControls gPHVideoControls = (GPHVideoControls) view.findViewById(i4);
                                if (gPHVideoControls != null) {
                                    return new s(view, videoBufferingIndicator, textView, constraintLayout, simpleDraweeView, progressBar, surfaceView, gPHVideoControls);
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
    public static s b(@NonNull LayoutInflater layoutInflater, @NonNull ViewGroup viewGroup) {
        Objects.requireNonNull(viewGroup, "parent");
        layoutInflater.inflate(p.m.f18137v0, viewGroup);
        return a(viewGroup);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    public View getRoot() {
        return this.f69052a;
    }
}
