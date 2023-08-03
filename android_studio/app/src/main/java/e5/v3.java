package e5;

import android.view.LayoutInflater;
import android.view.View;
import android.view.ViewGroup;
import android.widget.FrameLayout;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.NonNull;
import androidx.annotation.Nullable;
import androidx.appcompat.widget.SearchView;
import androidx.appcompat.widget.Toolbar;
import androidx.constraintlayout.widget.ConstraintLayout;
import androidx.viewbinding.ViewBinding;
import androidx.viewbinding.ViewBindings;
import com.didi.live.spring.R;

/* compiled from: LayoutToolbarChatDetailsBinding.java */
/* loaded from: classes3.dex */
public final class v3 implements ViewBinding {
    @NonNull

    /* renamed from: a  reason: collision with root package name */
    private final Toolbar f63221a;
    @NonNull

    /* renamed from: b  reason: collision with root package name */
    public final FrameLayout f63222b;
    @NonNull

    /* renamed from: c  reason: collision with root package name */
    public final ImageView f63223c;
    @NonNull

    /* renamed from: d  reason: collision with root package name */
    public final ImageView f63224d;
    @NonNull

    /* renamed from: e  reason: collision with root package name */
    public final ImageView f63225e;
    @NonNull

    /* renamed from: f  reason: collision with root package name */
    public final ImageView f63226f;
    @NonNull

    /* renamed from: g  reason: collision with root package name */
    public final ImageView f63227g;
    @NonNull

    /* renamed from: h  reason: collision with root package name */
    public final ImageView f63228h;
    @NonNull

    /* renamed from: i  reason: collision with root package name */
    public final ProgressBar f63229i;
    @NonNull

    /* renamed from: j  reason: collision with root package name */
    public final SearchView f63230j;
    @NonNull

    /* renamed from: k  reason: collision with root package name */
    public final ConstraintLayout f63231k;
    @NonNull

    /* renamed from: l  reason: collision with root package name */
    public final LinearLayout f63232l;
    @NonNull

    /* renamed from: m  reason: collision with root package name */
    public final TextView f63233m;
    @NonNull

    /* renamed from: n  reason: collision with root package name */
    public final TextView f63234n;
    @NonNull

    /* renamed from: o  reason: collision with root package name */
    public final TextView f63235o;
    @NonNull

    /* renamed from: p  reason: collision with root package name */
    public final TextView f63236p;

    private v3(@NonNull Toolbar toolbar, @NonNull FrameLayout frameLayout, @NonNull ImageView imageView, @NonNull ImageView imageView2, @NonNull ImageView imageView3, @NonNull ImageView imageView4, @NonNull ImageView imageView5, @NonNull ImageView imageView6, @NonNull ProgressBar progressBar, @NonNull SearchView searchView, @NonNull ConstraintLayout constraintLayout, @NonNull LinearLayout linearLayout, @NonNull TextView textView, @NonNull TextView textView2, @NonNull TextView textView3, @NonNull TextView textView4) {
        this.f63221a = toolbar;
        this.f63222b = frameLayout;
        this.f63223c = imageView;
        this.f63224d = imageView2;
        this.f63225e = imageView3;
        this.f63226f = imageView4;
        this.f63227g = imageView5;
        this.f63228h = imageView6;
        this.f63229i = progressBar;
        this.f63230j = searchView;
        this.f63231k = constraintLayout;
        this.f63232l = linearLayout;
        this.f63233m = textView;
        this.f63234n = textView2;
        this.f63235o = textView3;
        this.f63236p = textView4;
    }

    @NonNull
    public static v3 a(@NonNull View view) {
        int i4 = R.id.flAvatar;
        FrameLayout frameLayout = (FrameLayout) ViewBindings.findChildViewById(view, R.id.flAvatar);
        if (frameLayout != null) {
            i4 = R.id.ivCopySelected;
            ImageView imageView = (ImageView) ViewBindings.findChildViewById(view, R.id.ivCopySelected);
            if (imageView != null) {
                i4 = R.id.ivDeleteSelected;
                ImageView imageView2 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivDeleteSelected);
                if (imageView2 != null) {
                    i4 = R.id.ivEditSelected;
                    ImageView imageView3 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivEditSelected);
                    if (imageView3 != null) {
                        i4 = R.id.ivForwardSelected;
                        ImageView imageView4 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivForwardSelected);
                        if (imageView4 != null) {
                            i4 = R.id.ivSaveSelected;
                            ImageView imageView5 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivSaveSelected);
                            if (imageView5 != null) {
                                i4 = R.id.ivToolbarAvatar;
                                ImageView imageView6 = (ImageView) ViewBindings.findChildViewById(view, R.id.ivToolbarAvatar);
                                if (imageView6 != null) {
                                    i4 = R.id.ivToolbarAvatarLoading;
                                    ProgressBar progressBar = (ProgressBar) ViewBindings.findChildViewById(view, R.id.ivToolbarAvatarLoading);
                                    if (progressBar != null) {
                                        i4 = R.id.searchViewChat;
                                        SearchView searchView = (SearchView) ViewBindings.findChildViewById(view, R.id.searchViewChat);
                                        if (searchView != null) {
                                            i4 = R.id.toolbarContent;
                                            ConstraintLayout constraintLayout = (ConstraintLayout) ViewBindings.findChildViewById(view, R.id.toolbarContent);
                                            if (constraintLayout != null) {
                                                i4 = R.id.toolbarSelectContent;
                                                LinearLayout linearLayout = (LinearLayout) ViewBindings.findChildViewById(view, R.id.toolbarSelectContent);
                                                if (linearLayout != null) {
                                                    i4 = R.id.tvSelectedCount;
                                                    TextView textView = (TextView) ViewBindings.findChildViewById(view, R.id.tvSelectedCount);
                                                    if (textView != null) {
                                                        i4 = R.id.tvToolbarAvatar;
                                                        TextView textView2 = (TextView) ViewBindings.findChildViewById(view, R.id.tvToolbarAvatar);
                                                        if (textView2 != null) {
                                                            i4 = R.id.tvToolbarTitle;
                                                            TextView textView3 = (TextView) ViewBindings.findChildViewById(view, R.id.tvToolbarTitle);
                                                            if (textView3 != null) {
                                                                i4 = R.id.tvTyping;
                                                                TextView textView4 = (TextView) ViewBindings.findChildViewById(view, R.id.tvTyping);
                                                                if (textView4 != null) {
                                                                    return new v3((Toolbar) view, frameLayout, imageView, imageView2, imageView3, imageView4, imageView5, imageView6, progressBar, searchView, constraintLayout, linearLayout, textView, textView2, textView3, textView4);
                                                                }
                                                            }
                                                        }
                                                    }
                                                }
                                            }
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
    public static v3 c(@NonNull LayoutInflater layoutInflater) {
        return d(layoutInflater, null, false);
    }

    @NonNull
    public static v3 d(@NonNull LayoutInflater layoutInflater, @Nullable ViewGroup viewGroup, boolean z9) {
        View inflate = layoutInflater.inflate(R.layout.layout_toolbar_chat_details, viewGroup, false);
        if (z9) {
            viewGroup.addView(inflate);
        }
        return a(inflate);
    }

    @Override // androidx.viewbinding.ViewBinding
    @NonNull
    /* renamed from: b */
    public Toolbar getRoot() {
        return this.f63221a;
    }
}
