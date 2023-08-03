package androidx.navigation.dynamicfeatures.fragment.ui;

import android.content.ComponentName;
import android.content.pm.PackageManager;
import android.graphics.drawable.Drawable;
import android.os.Bundle;
import android.util.Log;
import android.view.View;
import android.widget.Button;
import android.widget.ImageView;
import android.widget.ProgressBar;
import android.widget.TextView;
import androidx.annotation.StringRes;
import androidx.navigation.dynamicfeatures.fragment.R;
import com.alipay.sdk.packet.d;
import kotlin.Metadata;
import kotlin.Unit;
import kotlin.jvm.functions.Function0;
import kotlin.jvm.internal.DefaultConstructorMarker;
import kotlin.jvm.internal.Intrinsics;
import m8.g;
import m8.h;
import org.bouncycastle.i18n.MessageBundle;

/* compiled from: DefaultProgressFragment.kt */
@Metadata(d1 = {"\u0000P\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0002\b\b\n\u0002\u0010\t\n\u0002\b\u0003\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0002\b\u0002\u0018\u0000 !2\u00020\u0001:\u0001!B\u0005¢\u0006\u0002\u0010\u0002J \u0010\t\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\f2\f\u0010\r\u001a\b\u0012\u0004\u0012\u00020\n0\u000eH\u0002J\u0012\u0010\u000f\u001a\u00020\n2\b\b\u0001\u0010\u000b\u001a\u00020\fH\u0002J\b\u0010\u0010\u001a\u00020\nH\u0014J\b\u0010\u0011\u001a\u00020\nH\u0016J\u0012\u0010\u0012\u001a\u00020\n2\b\b\u0001\u0010\u0013\u001a\u00020\fH\u0014J \u0010\u0014\u001a\u00020\n2\u0006\u0010\u0015\u001a\u00020\f2\u0006\u0010\u0016\u001a\u00020\u00172\u0006\u0010\u0018\u001a\u00020\u0017H\u0014J\u001a\u0010\u0019\u001a\u00020\n2\u0006\u0010\u001a\u001a\u00020\u001b2\b\u0010\u001c\u001a\u0004\u0018\u00010\u001dH\u0016J\u0010\u0010\u001e\u001a\u00020\n2\u0006\u0010\u001f\u001a\u00020 H\u0002R\u0010\u0010\u0003\u001a\u0004\u0018\u00010\u0004X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0005\u001a\u0004\u0018\u00010\u0006X\u0082\u000e¢\u0006\u0002\n\u0000R\u0010\u0010\u0007\u001a\u0004\u0018\u00010\bX\u0082\u000e¢\u0006\u0002\n\u0000¨\u0006\""}, d2 = {"Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment;", "Landroidx/navigation/dynamicfeatures/fragment/ui/AbstractProgressFragment;", "()V", d.f6907q, "Landroid/widget/Button;", "progressBar", "Landroid/widget/ProgressBar;", MessageBundle.TITLE_ENTRY, "Landroid/widget/TextView;", "displayAction", "", "text", "", "onClick", "Lkotlin/Function0;", "displayErrorState", "onCancelled", "onDestroyView", "onFailed", "errorCode", "onProgress", "status", "bytesDownloaded", "", "bytesTotal", "onViewCreated", "view", "Landroid/view/View;", "savedInstanceState", "Landroid/os/Bundle;", "setActivityIcon", "activityIcon", "Landroid/widget/ImageView;", "Companion", "navigation-dynamic-features-fragment_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
/* loaded from: classes.dex */
public final class DefaultProgressFragment extends AbstractProgressFragment {
    @g
    public static final Companion Companion = new Companion(null);
    private static final int PROGRESS_MAX = 100;
    @g
    private static final String TAG = "DefaultProgressFragment";
    @h
    private Button action;
    @h
    private ProgressBar progressBar;
    @h
    private TextView title;

    /* compiled from: DefaultProgressFragment.kt */
    @Metadata(d1 = {"\u0000\u0018\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\b\u0002\n\u0002\u0010\b\n\u0000\n\u0002\u0010\u000e\n\u0000\b\u0080\u0003\u0018\u00002\u00020\u0001B\u0007\b\u0002¢\u0006\u0002\u0010\u0002R\u000e\u0010\u0003\u001a\u00020\u0004X\u0082T¢\u0006\u0002\n\u0000R\u000e\u0010\u0005\u001a\u00020\u0006X\u0082T¢\u0006\u0002\n\u0000¨\u0006\u0007"}, d2 = {"Landroidx/navigation/dynamicfeatures/fragment/ui/DefaultProgressFragment$Companion;", "", "()V", "PROGRESS_MAX", "", "TAG", "", "navigation-dynamic-features-fragment_release"}, k = 1, mv = {1, 6, 0}, xi = 48)
    /* loaded from: classes.dex */
    public static final class Companion {
        private Companion() {
        }

        public /* synthetic */ Companion(DefaultConstructorMarker defaultConstructorMarker) {
            this();
        }
    }

    public DefaultProgressFragment() {
        super(R.layout.dynamic_feature_install_fragment);
    }

    private final void displayAction(@StringRes int i4, final Function0<Unit> function0) {
        Button button = this.action;
        if (button != null) {
            button.setText(i4);
            button.setOnClickListener(new View.OnClickListener() { // from class: androidx.navigation.dynamicfeatures.fragment.ui.c
                @Override // android.view.View.OnClickListener
                public final void onClick(View view) {
                    DefaultProgressFragment.m42displayAction$lambda4$lambda3(Function0.this, view);
                }
            });
            button.setVisibility(0);
        }
    }

    /* JADX INFO: Access modifiers changed from: private */
    /* renamed from: displayAction$lambda-4$lambda-3  reason: not valid java name */
    public static final void m42displayAction$lambda4$lambda3(Function0 onClick, View view) {
        Intrinsics.checkNotNullParameter(onClick, "$onClick");
        onClick.invoke();
    }

    private final void displayErrorState(@StringRes int i4) {
        TextView textView = this.title;
        if (textView != null) {
            textView.setText(i4);
        }
        ProgressBar progressBar = this.progressBar;
        if (progressBar == null) {
            return;
        }
        progressBar.setVisibility(4);
    }

    private final void setActivityIcon(ImageView imageView) {
        Drawable defaultActivityIcon;
        PackageManager packageManager = requireContext().getPackageManager();
        try {
            defaultActivityIcon = packageManager.getActivityIcon(new ComponentName(requireContext(), requireActivity().getClass()));
        } catch (PackageManager.NameNotFoundException unused) {
            defaultActivityIcon = packageManager.getDefaultActivityIcon();
        }
        Intrinsics.checkNotNullExpressionValue(defaultActivityIcon, "try {\n                ge…ctivityIcon\n            }");
        imageView.setImageDrawable(defaultActivityIcon);
    }

    @Override // androidx.navigation.dynamicfeatures.fragment.ui.AbstractProgressFragment
    protected void onCancelled() {
        displayErrorState(R.string.installation_cancelled);
        displayAction(R.string.retry, new DefaultProgressFragment$onCancelled$1(this));
    }

    @Override // androidx.fragment.app.Fragment
    public void onDestroyView() {
        super.onDestroyView();
        this.title = null;
        this.progressBar = null;
        this.action = null;
    }

    @Override // androidx.navigation.dynamicfeatures.fragment.ui.AbstractProgressFragment
    protected void onFailed(@g3.a int i4) {
        Log.w(TAG, "Installation failed with error " + i4);
        displayErrorState(R.string.installation_failed);
        displayAction(R.string.ok, new DefaultProgressFragment$onFailed$1(this));
    }

    @Override // androidx.navigation.dynamicfeatures.fragment.ui.AbstractProgressFragment
    protected void onProgress(int i4, long j4, long j10) {
        ProgressBar progressBar = this.progressBar;
        if (progressBar != null) {
            progressBar.setVisibility(0);
            if (j10 == 0) {
                progressBar.setIndeterminate(true);
                return;
            }
            progressBar.setProgress((int) ((100 * j4) / j10));
            progressBar.setIndeterminate(false);
        }
    }

    @Override // androidx.navigation.dynamicfeatures.fragment.ui.AbstractProgressFragment, androidx.fragment.app.Fragment
    public void onViewCreated(@g View view, @h Bundle bundle) {
        Intrinsics.checkNotNullParameter(view, "view");
        super.onViewCreated(view, bundle);
        this.title = (TextView) view.findViewById(R.id.progress_title);
        this.progressBar = (ProgressBar) view.findViewById(R.id.installation_progress);
        View findViewById = view.findViewById(R.id.progress_icon);
        Intrinsics.checkNotNullExpressionValue(findViewById, "findViewById(R.id.progress_icon)");
        setActivityIcon((ImageView) findViewById);
        this.action = (Button) view.findViewById(R.id.progress_action);
    }
}
