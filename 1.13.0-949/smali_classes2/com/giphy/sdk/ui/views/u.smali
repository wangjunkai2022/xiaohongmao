.class public final Lcom/giphy/sdk/ui/views/u;
.super Ljava/lang/Object;
.source "UserProfileInfoLoader.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0010\u000b\n\u0002\u0008\n\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0018\u00002\u00020\u0001B\u0017\u0012\u0006\u0010&\u001a\u00020\"\u0012\u0006\u0010+\u001a\u00020\'\u00a2\u0006\u0004\u0008,\u0010-J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0018\u0010\u000b\u001a\u00020\n2\u0006\u0010\u0007\u001a\u00020\u00062\u0006\u0010\t\u001a\u00020\u0008H\u0002J&\u0010\u0013\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u000e\u001a\u00020\u000c2\u0006\u0010\u0010\u001a\u00020\u000f2\u0006\u0010\u0012\u001a\u00020\u0011J\u000e\u0010\u0014\u001a\u00020\u00042\u0006\u0010\u000e\u001a\u00020\u000cJ\u000e\u0010\u0015\u001a\u00020\u00042\u0006\u0010\u0010\u001a\u00020\u000fJ\u000e\u0010\u0016\u001a\u00020\u00042\u0006\u0010\r\u001a\u00020\u000cJ\u0006\u0010\u0018\u001a\u00020\u0017J\u001e\u0010\u001b\u001a\u00020\u00042\u0006\u0010\u0019\u001a\u00020\u000c2\u0006\u0010\u001a\u001a\u00020\u000c2\u0006\u0010\t\u001a\u00020\u0008J\u000e\u0010\u001c\u001a\u00020\u00042\u0006\u0010\u0012\u001a\u00020\u0011R\u001a\u0010!\u001a\u00020\u00178\u0006X\u0086D\u00a2\u0006\u000c\n\u0004\u0008\u001d\u0010\u001e\u001a\u0004\u0008\u001f\u0010 R\u0017\u0010&\u001a\u00020\"8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u000b\u0010#\u001a\u0004\u0008$\u0010%R\u0017\u0010+\u001a\u00020\'8\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0016\u0010(\u001a\u0004\u0008)\u0010*\u00a8\u0006."
    }
    d2 = {
        "Lcom/giphy/sdk/ui/views/u;",
        "",
        "",
        "url",
        "",
        "l",
        "",
        "imageId",
        "Landroid/widget/LinearLayout;",
        "socialContainer",
        "Landroid/view/View;",
        "b",
        "Landroid/widget/TextView;",
        "displayName",
        "channelName",
        "Landroid/widget/ImageView;",
        "verifiedBadge",
        "Lcom/giphy/sdk/ui/views/GifView;",
        "userChannelGifAvatar",
        "e",
        "g",
        "h",
        "c",
        "",
        "m",
        "channelDescription",
        "websiteUrl",
        "f",
        "d",
        "a",
        "Z",
        "j",
        "()Z",
        "shouldDisplayUserSocial",
        "Landroid/content/Context;",
        "Landroid/content/Context;",
        "i",
        "()Landroid/content/Context;",
        "context",
        "Lcom/giphy/sdk/core/models/User;",
        "Lcom/giphy/sdk/core/models/User;",
        "k",
        "()Lcom/giphy/sdk/core/models/User;",
        "user",
        "<init>",
        "(Landroid/content/Context;Lcom/giphy/sdk/core/models/User;)V",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# instance fields
.field private final a:Z

.field private final b:Landroid/content/Context;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final c:Lcom/giphy/sdk/core/models/User;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;Lcom/giphy/sdk/core/models/User;)V
    .locals 1
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/core/models/User;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "user"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/u;->b:Landroid/content/Context;

    iput-object p2, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    return-void
.end method

.method public static final synthetic a(Lcom/giphy/sdk/ui/views/u;Ljava/lang/String;)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/views/u;->l(Ljava/lang/String;)V

    return-void
.end method

.method private final b(ILandroid/widget/LinearLayout;)Landroid/view/View;
    .locals 3

    .line 1
    new-instance v0, Landroid/widget/ImageView;

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/u;->b:Landroid/content/Context;

    invoke-direct {v0, v1}, Landroid/widget/ImageView;-><init>(Landroid/content/Context;)V

    .line 2
    invoke-virtual {v0, p1}, Landroid/widget/ImageView;->setImageResource(I)V

    .line 3
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/u;->b:Landroid/content/Context;

    invoke-virtual {p1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object p1

    sget v1, Lcom/giphy/sdk/ui/p$g;->j6:I

    invoke-virtual {p1, v1}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result p1

    .line 4
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/u;->b:Landroid/content/Context;

    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    sget v2, Lcom/giphy/sdk/ui/p$g;->i6:I

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 5
    new-instance v2, Landroid/widget/LinearLayout$LayoutParams;

    invoke-direct {v2, p1, p1}, Landroid/widget/LinearLayout$LayoutParams;-><init>(II)V

    .line 6
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->leftMargin:I

    .line 7
    iput v1, v2, Landroid/widget/LinearLayout$LayoutParams;->rightMargin:I

    .line 8
    invoke-virtual {p2, v0, v2}, Landroid/widget/LinearLayout;->addView(Landroid/view/View;Landroid/view/ViewGroup$LayoutParams;)V

    return-object v0
.end method

.method private final l(Ljava/lang/String;)V
    .locals 2

    .line 1
    new-instance v0, Landroid/content/Intent;

    const-string v1, "android.intent.action.VIEW"

    invoke-direct {v0, v1}, Landroid/content/Intent;-><init>(Ljava/lang/String;)V

    .line 2
    invoke-static {p1}, Landroid/net/Uri;->parse(Ljava/lang/String;)Landroid/net/Uri;

    move-result-object p1

    invoke-virtual {v0, p1}, Landroid/content/Intent;->setData(Landroid/net/Uri;)Landroid/content/Intent;

    const/high16 p1, 0x10000000

    .line 3
    invoke-virtual {v0, p1}, Landroid/content/Intent;->setFlags(I)Landroid/content/Intent;

    .line 4
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/u;->b:Landroid/content/Context;

    if-eqz p1, :cond_0

    invoke-virtual {p1, v0}, Landroid/content/Context;->startActivity(Landroid/content/Intent;)V

    :cond_0
    return-void
.end method


# virtual methods
.method public final c(Landroid/widget/TextView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "displayName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/User;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/User;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    goto :goto_2

    .line 3
    :cond_2
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/User;->getUsername()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    :goto_2
    return-void
.end method

.method public final d(Lcom/giphy/sdk/ui/views/GifView;)V
    .locals 3
    .param p1    # Lcom/giphy/sdk/ui/views/GifView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "userChannelGifAvatar"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/User;->getAvatarUrl()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    return-void

    .line 2
    :cond_2
    sget-object v0, Lcom/giphy/sdk/ui/utils/AvatarUtils;->a:Lcom/giphy/sdk/ui/utils/AvatarUtils;

    .line 3
    iget-object v1, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/User;->getAvatarUrl()Ljava/lang/String;

    move-result-object v1

    .line 4
    sget-object v2, Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;->Big:Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;

    .line 5
    invoke-virtual {v0, v1, v2}, Lcom/giphy/sdk/ui/utils/AvatarUtils;->a(Ljava/lang/String;Lcom/giphy/sdk/ui/utils/AvatarUtils$Dimension;)Ljava/lang/String;

    move-result-object v0

    .line 6
    invoke-virtual {p1, v0}, Lcom/giphy/sdk/ui/views/GifView;->v(Ljava/lang/String;)V

    return-void
.end method

.method public final e(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/ImageView;Lcom/giphy/sdk/ui/views/GifView;)V
    .locals 1
    .param p1    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p4    # Lcom/giphy/sdk/ui/views/GifView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "displayName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "channelName"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "verifiedBadge"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "userChannelGifAvatar"

    invoke-static {p4, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-virtual {p0, p2}, Lcom/giphy/sdk/ui/views/u;->g(Landroid/widget/TextView;)V

    .line 2
    invoke-virtual {p0, p3}, Lcom/giphy/sdk/ui/views/u;->h(Landroid/widget/ImageView;)V

    .line 3
    invoke-virtual {p0, p4}, Lcom/giphy/sdk/ui/views/u;->d(Lcom/giphy/sdk/ui/views/GifView;)V

    .line 4
    invoke-virtual {p0, p1}, Lcom/giphy/sdk/ui/views/u;->c(Landroid/widget/TextView;)V

    return-void
.end method

.method public final f(Landroid/widget/TextView;Landroid/widget/TextView;Landroid/widget/LinearLayout;)V
    .locals 3
    .param p1    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/widget/LinearLayout;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "channelDescription"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "websiteUrl"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "socialContainer"

    invoke-static {p3, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/User;->getDescription()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x1

    const/4 v2, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    .line 2
    invoke-virtual {p1, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/User;->getDescription()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 4
    :cond_2
    iget-boolean p1, p0, Lcom/giphy/sdk/ui/views/u;->a:Z

    if-eqz p1, :cond_11

    .line 5
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/User;->getWebsiteUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_4

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_3

    goto :goto_2

    :cond_3
    const/4 p1, 0x0

    goto :goto_3

    :cond_4
    :goto_2
    const/4 p1, 0x1

    :goto_3
    if-nez p1, :cond_5

    .line 6
    new-instance p1, Ljava/net/URL;

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/User;->getWebsiteUrl()Ljava/lang/String;

    move-result-object v0

    invoke-direct {p1, v0}, Ljava/net/URL;-><init>(Ljava/lang/String;)V

    invoke-virtual {p1}, Ljava/net/URL;->getHost()Ljava/lang/String;

    move-result-object p1

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    .line 7
    invoke-virtual {p2, v2}, Landroid/widget/TextView;->setVisibility(I)V

    .line 8
    new-instance p1, Lcom/giphy/sdk/ui/views/u$a;

    invoke-direct {p1, p0}, Lcom/giphy/sdk/ui/views/u$a;-><init>(Lcom/giphy/sdk/ui/views/u;)V

    invoke-virtual {p2, p1}, Landroid/widget/TextView;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 9
    :cond_5
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/User;->getFacebookUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_7

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_6

    goto :goto_4

    :cond_6
    const/4 p1, 0x0

    goto :goto_5

    :cond_7
    :goto_4
    const/4 p1, 0x1

    :goto_5
    if-nez p1, :cond_8

    .line 10
    sget p1, Lcom/giphy/sdk/ui/p$h;->f3:I

    .line 11
    invoke-direct {p0, p1, p3}, Lcom/giphy/sdk/ui/views/u;->b(ILandroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object p1

    .line 12
    new-instance p2, Lcom/giphy/sdk/ui/views/u$b;

    invoke-direct {p2, p0}, Lcom/giphy/sdk/ui/views/u$b;-><init>(Lcom/giphy/sdk/ui/views/u;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 13
    :cond_8
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/User;->getTwitterUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_a

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_9

    goto :goto_6

    :cond_9
    const/4 p1, 0x0

    goto :goto_7

    :cond_a
    :goto_6
    const/4 p1, 0x1

    :goto_7
    if-nez p1, :cond_b

    .line 14
    sget p1, Lcom/giphy/sdk/ui/p$h;->i3:I

    .line 15
    invoke-direct {p0, p1, p3}, Lcom/giphy/sdk/ui/views/u;->b(ILandroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object p1

    .line 16
    new-instance p2, Lcom/giphy/sdk/ui/views/u$c;

    invoke-direct {p2, p0}, Lcom/giphy/sdk/ui/views/u$c;-><init>(Lcom/giphy/sdk/ui/views/u;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 17
    :cond_b
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/User;->getInstagramUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_d

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_c

    goto :goto_8

    :cond_c
    const/4 p1, 0x0

    goto :goto_9

    :cond_d
    :goto_8
    const/4 p1, 0x1

    :goto_9
    if-nez p1, :cond_e

    .line 18
    sget p1, Lcom/giphy/sdk/ui/p$h;->g3:I

    .line 19
    invoke-direct {p0, p1, p3}, Lcom/giphy/sdk/ui/views/u;->b(ILandroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object p1

    .line 20
    new-instance p2, Lcom/giphy/sdk/ui/views/u$d;

    invoke-direct {p2, p0}, Lcom/giphy/sdk/ui/views/u$d;-><init>(Lcom/giphy/sdk/ui/views/u;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 21
    :cond_e
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/User;->getTumblrUrl()Ljava/lang/String;

    move-result-object p1

    if-eqz p1, :cond_10

    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    if-nez p1, :cond_f

    goto :goto_a

    :cond_f
    const/4 v1, 0x0

    :cond_10
    :goto_a
    if-nez v1, :cond_11

    .line 22
    sget p1, Lcom/giphy/sdk/ui/p$h;->h3:I

    .line 23
    invoke-direct {p0, p1, p3}, Lcom/giphy/sdk/ui/views/u;->b(ILandroid/widget/LinearLayout;)Landroid/view/View;

    move-result-object p1

    .line 24
    new-instance p2, Lcom/giphy/sdk/ui/views/u$e;

    invoke-direct {p2, p0}, Lcom/giphy/sdk/ui/views/u$e;-><init>(Lcom/giphy/sdk/ui/views/u;)V

    invoke-virtual {p1, p2}, Landroid/view/View;->setOnClickListener(Landroid/view/View$OnClickListener;)V

    .line 25
    :cond_11
    invoke-virtual {p3}, Landroid/widget/LinearLayout;->getChildCount()I

    move-result p1

    if-lez p1, :cond_12

    .line 26
    invoke-virtual {p3, v2}, Landroid/widget/LinearLayout;->setVisibility(I)V

    goto :goto_b

    :cond_12
    const/16 p1, 0x8

    .line 27
    invoke-virtual {p3, p1}, Landroid/widget/LinearLayout;->setVisibility(I)V

    :goto_b
    return-void
.end method

.method public final g(Landroid/widget/TextView;)V
    .locals 2
    .param p1    # Landroid/widget/TextView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "channelName"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/User;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    const/4 v1, 0x0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-eqz v0, :cond_2

    const/4 v1, 0x4

    :cond_2
    invoke-virtual {p1, v1}, Landroid/widget/TextView;->setVisibility(I)V

    .line 2
    new-instance v0, Ljava/lang/StringBuilder;

    invoke-direct {v0}, Ljava/lang/StringBuilder;-><init>()V

    const/16 v1, 0x40

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    iget-object v1, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/User;->getUsername()Ljava/lang/String;

    move-result-object v1

    invoke-virtual {v0, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v0}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    invoke-virtual {p1, v0}, Landroid/widget/TextView;->setText(Ljava/lang/CharSequence;)V

    return-void
.end method

.method public final h(Landroid/widget/ImageView;)V
    .locals 1
    .param p1    # Landroid/widget/ImageView;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "verifiedBadge"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {p0}, Lcom/giphy/sdk/ui/views/u;->m()Z

    move-result v0

    if-eqz v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    const/4 v0, 0x4

    :goto_0
    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    return-void
.end method

.method public final i()Landroid/content/Context;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/u;->b:Landroid/content/Context;

    return-object v0
.end method

.method public final j()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/u;->a:Z

    return v0
.end method

.method public final k()Lcom/giphy/sdk/core/models/User;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    return-object v0
.end method

.method public final m()Z
    .locals 3

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/User;->getVerified()Z

    move-result v0

    const/4 v1, 0x0

    const/4 v2, 0x1

    if-ne v0, v2, :cond_2

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/u;->c:Lcom/giphy/sdk/core/models/User;

    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/User;->getDisplayName()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    invoke-interface {v0}, Ljava/lang/CharSequence;->length()I

    move-result v0

    if-nez v0, :cond_0

    goto :goto_0

    :cond_0
    const/4 v0, 0x0

    goto :goto_1

    :cond_1
    :goto_0
    const/4 v0, 0x1

    :goto_1
    if-nez v0, :cond_2

    const/4 v1, 0x1

    :cond_2
    return v1
.end method
