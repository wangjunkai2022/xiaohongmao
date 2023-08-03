package com.giphy.sdk.ui.views;

import android.content.Context;
import android.content.Intent;
import android.net.Uri;
import android.view.View;
import android.widget.ImageView;
import android.widget.LinearLayout;
import android.widget.TextView;
import com.facebook.common.callercontext.ContextChain;
import com.giphy.sdk.core.models.User;
import com.giphy.sdk.ui.p;
import com.giphy.sdk.ui.utils.AvatarUtils;
import java.net.URL;
import kotlin.Metadata;
import kotlin.jvm.internal.Intrinsics;

/* compiled from: UserProfileInfoLoader.kt */
@Metadata(bv = {}, d1 = {"\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\b\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0005\n\u0002\u0010\u000b\n\u0002\b\n\n\u0002\u0018\u0002\n\u0002\b\u0004\n\u0002\u0018\u0002\n\u0002\b\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010&\u001a\u00020\"\u0012\u0006\u0010+\u001a\u00020'¢\u0006\u0004\b,\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\bH\u0002J&\u0010\u0013\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\f2\u0006\u0010\u000e\u001a\u00020\f2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\fJ\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\fJ\u0006\u0010\u0018\u001a\u00020\u0017J\u001e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\f2\u0006\u0010\u001a\u001a\u00020\f2\u0006\u0010\t\u001a\u00020\bJ\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011R\u001a\u0010!\u001a\u00020\u00178\u0006X\u0086D¢\u0006\f\n\u0004\b\u001d\u0010\u001e\u001a\u0004\b\u001f\u0010 R\u0017\u0010&\u001a\u00020\"8\u0006¢\u0006\f\n\u0004\b\u000b\u0010#\u001a\u0004\b$\u0010%R\u0017\u0010+\u001a\u00020'8\u0006¢\u0006\f\n\u0004\b\u0016\u0010(\u001a\u0004\b)\u0010*¨\u0006."}, d2 = {"Lcom/giphy/sdk/ui/views/u;", "", "", "url", "", "l", "", "imageId", "Landroid/widget/LinearLayout;", "socialContainer", "Landroid/view/View;", "b", "Landroid/widget/TextView;", "displayName", "channelName", "Landroid/widget/ImageView;", "verifiedBadge", "Lcom/giphy/sdk/ui/views/GifView;", "userChannelGifAvatar", "e", "g", "h", "c", "", "m", "channelDescription", "websiteUrl", "f", "d", "a", "Z", "j", "()Z", "shouldDisplayUserSocial", "Landroid/content/Context;", "Landroid/content/Context;", ContextChain.TAG_INFRA, "()Landroid/content/Context;", "context", "Lcom/giphy/sdk/core/models/User;", "Lcom/giphy/sdk/core/models/User;", "k", "()Lcom/giphy/sdk/core/models/User;", "user", "<init>", "(Landroid/content/Context;Lcom/giphy/sdk/core/models/User;)V", "giphy-ui-2.1.9_release"}, k = 1, mv = {1, 4, 1})
/* loaded from: classes2.dex */
public final class u {

    /* renamed from: a  reason: collision with root package name */
    private final boolean f19224a;
    @m8.g

    /* renamed from: b  reason: collision with root package name */
    private final Context f19225b;
    @m8.g

    /* renamed from: c  reason: collision with root package name */
    private final User f19226c;

    /* compiled from: UserProfileInfoLoader.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class a implements View.OnClickListener {
        a() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            u uVar = u.this;
            String websiteUrl = uVar.k().getWebsiteUrl();
            Intrinsics.checkNotNull(websiteUrl);
            uVar.l(websiteUrl);
        }
    }

    /* compiled from: UserProfileInfoLoader.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class b implements View.OnClickListener {
        b() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            u uVar = u.this;
            String facebookUrl = uVar.k().getFacebookUrl();
            Intrinsics.checkNotNull(facebookUrl);
            uVar.l(facebookUrl);
        }
    }

    /* compiled from: UserProfileInfoLoader.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class c implements View.OnClickListener {
        c() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            u uVar = u.this;
            String twitterUrl = uVar.k().getTwitterUrl();
            Intrinsics.checkNotNull(twitterUrl);
            uVar.l(twitterUrl);
        }
    }

    /* compiled from: UserProfileInfoLoader.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class d implements View.OnClickListener {
        d() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            u uVar = u.this;
            String instagramUrl = uVar.k().getInstagramUrl();
            Intrinsics.checkNotNull(instagramUrl);
            uVar.l(instagramUrl);
        }
    }

    /* compiled from: UserProfileInfoLoader.kt */
    @Metadata(bv = {1, 0, 3}, d1 = {"\u0000\u0010\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\b\u0002\u0010\u0000\u001a\u00020\u00012\u000e\u0010\u0002\u001a\n \u0004*\u0004\u0018\u00010\u00030\u0003H\n¢\u0006\u0002\b\u0005"}, d2 = {"<anonymous>", "", "it", "Landroid/view/View;", "kotlin.jvm.PlatformType", "onClick"}, k = 3, mv = {1, 4, 1})
    /* loaded from: classes2.dex */
    static final class e implements View.OnClickListener {
        e() {
        }

        @Override // android.view.View.OnClickListener
        public final void onClick(View view) {
            u uVar = u.this;
            String tumblrUrl = uVar.k().getTumblrUrl();
            Intrinsics.checkNotNull(tumblrUrl);
            uVar.l(tumblrUrl);
        }
    }

    public u(@m8.g Context context, @m8.g User user) {
        Intrinsics.checkNotNullParameter(context, "context");
        Intrinsics.checkNotNullParameter(user, "user");
        this.f19225b = context;
        this.f19226c = user;
    }

    private final View b(int i4, LinearLayout linearLayout) {
        ImageView imageView = new ImageView(this.f19225b);
        imageView.setImageResource(i4);
        int dimensionPixelSize = this.f19225b.getResources().getDimensionPixelSize(p.g.f17590j6);
        int dimensionPixelSize2 = this.f19225b.getResources().getDimensionPixelSize(p.g.f17583i6);
        LinearLayout.LayoutParams layoutParams = new LinearLayout.LayoutParams(dimensionPixelSize, dimensionPixelSize);
        layoutParams.leftMargin = dimensionPixelSize2;
        layoutParams.rightMargin = dimensionPixelSize2;
        linearLayout.addView(imageView, layoutParams);
        return imageView;
    }

    /* JADX INFO: Access modifiers changed from: private */
    public final void l(String str) {
        Intent intent = new Intent("android.intent.action.VIEW");
        intent.setData(Uri.parse(str));
        intent.setFlags(268435456);
        Context context = this.f19225b;
        if (context != null) {
            context.startActivity(intent);
        }
    }

    public final void c(@m8.g TextView displayName) {
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        String displayName2 = this.f19226c.getDisplayName();
        if (!(displayName2 == null || displayName2.length() == 0)) {
            displayName.setText(this.f19226c.getDisplayName());
        } else {
            displayName.setText(this.f19226c.getUsername());
        }
    }

    public final void d(@m8.g GifView userChannelGifAvatar) {
        Intrinsics.checkNotNullParameter(userChannelGifAvatar, "userChannelGifAvatar");
        String avatarUrl = this.f19226c.getAvatarUrl();
        if (avatarUrl == null || avatarUrl.length() == 0) {
            return;
        }
        userChannelGifAvatar.v(AvatarUtils.f18910a.a(this.f19226c.getAvatarUrl(), AvatarUtils.Dimension.Big));
    }

    public final void e(@m8.g TextView displayName, @m8.g TextView channelName, @m8.g ImageView verifiedBadge, @m8.g GifView userChannelGifAvatar) {
        Intrinsics.checkNotNullParameter(displayName, "displayName");
        Intrinsics.checkNotNullParameter(channelName, "channelName");
        Intrinsics.checkNotNullParameter(verifiedBadge, "verifiedBadge");
        Intrinsics.checkNotNullParameter(userChannelGifAvatar, "userChannelGifAvatar");
        g(channelName);
        h(verifiedBadge);
        d(userChannelGifAvatar);
        c(displayName);
    }

    public final void f(@m8.g TextView channelDescription, @m8.g TextView websiteUrl, @m8.g LinearLayout socialContainer) {
        Intrinsics.checkNotNullParameter(channelDescription, "channelDescription");
        Intrinsics.checkNotNullParameter(websiteUrl, "websiteUrl");
        Intrinsics.checkNotNullParameter(socialContainer, "socialContainer");
        String description = this.f19226c.getDescription();
        boolean z9 = true;
        if (!(description == null || description.length() == 0)) {
            channelDescription.setVisibility(0);
            channelDescription.setText(this.f19226c.getDescription());
        }
        if (this.f19224a) {
            String websiteUrl2 = this.f19226c.getWebsiteUrl();
            if (!(websiteUrl2 == null || websiteUrl2.length() == 0)) {
                websiteUrl.setText(new URL(this.f19226c.getWebsiteUrl()).getHost());
                websiteUrl.setVisibility(0);
                websiteUrl.setOnClickListener(new a());
            }
            String facebookUrl = this.f19226c.getFacebookUrl();
            if (!(facebookUrl == null || facebookUrl.length() == 0)) {
                b(p.h.f17735f3, socialContainer).setOnClickListener(new b());
            }
            String twitterUrl = this.f19226c.getTwitterUrl();
            if (!(twitterUrl == null || twitterUrl.length() == 0)) {
                b(p.h.f17750i3, socialContainer).setOnClickListener(new c());
            }
            String instagramUrl = this.f19226c.getInstagramUrl();
            if (!(instagramUrl == null || instagramUrl.length() == 0)) {
                b(p.h.f17740g3, socialContainer).setOnClickListener(new d());
            }
            String tumblrUrl = this.f19226c.getTumblrUrl();
            if (tumblrUrl != null && tumblrUrl.length() != 0) {
                z9 = false;
            }
            if (!z9) {
                b(p.h.f17745h3, socialContainer).setOnClickListener(new e());
            }
        }
        if (socialContainer.getChildCount() > 0) {
            socialContainer.setVisibility(0);
        } else {
            socialContainer.setVisibility(8);
        }
    }

    public final void g(@m8.g TextView channelName) {
        Intrinsics.checkNotNullParameter(channelName, "channelName");
        String displayName = this.f19226c.getDisplayName();
        channelName.setVisibility(displayName == null || displayName.length() == 0 ? 4 : 0);
        channelName.setText('@' + this.f19226c.getUsername());
    }

    public final void h(@m8.g ImageView verifiedBadge) {
        Intrinsics.checkNotNullParameter(verifiedBadge, "verifiedBadge");
        verifiedBadge.setVisibility(m() ? 0 : 4);
    }

    @m8.g
    public final Context i() {
        return this.f19225b;
    }

    public final boolean j() {
        return this.f19224a;
    }

    @m8.g
    public final User k() {
        return this.f19226c;
    }

    public final boolean m() {
        if (this.f19226c.getVerified()) {
            String displayName = this.f19226c.getDisplayName();
            return !(displayName == null || displayName.length() == 0);
        }
        return false;
    }
}
