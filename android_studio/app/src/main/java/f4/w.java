package f4;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.viewbinding.ViewBinding;
import b4.b;
import com.google.android.exoplayer2.ui.PlayerView;
import java.util.Objects;

/* compiled from: GalleryPlayerBinding.java */
/* loaded from: classes3.dex */
public final class w implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final PlayerView f65826a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final PlayerView f65827b;

    private w(@NonNull PlayerView playerView, @NonNull PlayerView playerView2) {
        this.f65826a = playerView;
        this.f65827b = playerView2;
    }

    @NonNull
    public static w a(@NonNull View view) {
        Objects.requireNonNull(view, "rootView");
        PlayerView playerView = (PlayerView) view;
        return new w(playerView, playerView);
    }

    @NonNull
    public static w c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static w d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(b.m.Y0, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public PlayerView getRoot() {
        return this.f65826a;
    }
}
