.class public Lcom/giphy/sdk/ui/views/GPHMediaView;
.super Lcom/giphy/sdk/ui/views/GifView;
.source "GPHMediaView.kt"


# annotations
.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000T\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000e\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u000b\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0002\u0008\u0007\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\u0008\u0016\u0018\u00002\u00020\u0001B\'\u0008\u0007\u0012\u0006\u0010#\u001a\u00020\"\u0012\n\u0008\u0002\u0010%\u001a\u0004\u0018\u00010$\u0012\u0008\u0008\u0002\u0010\'\u001a\u00020&\u00a2\u0006\u0004\u0008(\u0010)J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0014J&\u0010\u000c\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u00062\u0008\u0010\t\u001a\u0004\u0018\u00010\u00082\u0008\u0010\u000b\u001a\u0004\u0018\u00010\nH\u0016J\u0008\u0010\r\u001a\u00020\u0004H\u0014R\u0018\u0010\u0011\u001a\u0004\u0018\u00010\u000e8\u0002@\u0002X\u0082\u000e\u00a2\u0006\u0006\n\u0004\u0008\u000f\u0010\u0010R\"\u0010\u0019\u001a\u00020\u00128\u0000@\u0000X\u0080\u000e\u00a2\u0006\u0012\n\u0004\u0008\u0013\u0010\u0014\u001a\u0004\u0008\u0015\u0010\u0016\"\u0004\u0008\u0017\u0010\u0018R\"\u0010!\u001a\u00020\u001a8\u0006@\u0006X\u0086\u000e\u00a2\u0006\u0012\n\u0004\u0008\u001b\u0010\u001c\u001a\u0004\u0008\u001d\u0010\u001e\"\u0004\u0008\u001f\u0010 \u00a8\u0006*"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/views/GPHMediaView;",
        "Lcom/giphy/sdk/ui/views/GifView;",
        "Landroid/graphics/Canvas;",
        "canvas",
        "",
        "onDraw",
        "",
        "id",
        "Lcom/facebook/imagepipeline/image/g;",
        "imageInfo",
        "Landroid/graphics/drawable/Animatable;",
        "anim",
        "A",
        "B",
        "Lcom/giphy/sdk/ui/drawables/a;",
        "F",
        "Lcom/giphy/sdk/ui/drawables/a;",
        "brandingDrawer",
        "",
        "G",
        "Z",
        "getShowAttribution$giphy_ui_2_1_9_release",
        "()Z",
        "setShowAttribution$giphy_ui_2_1_9_release",
        "(Z)V",
        "showAttribution",
        "Lcom/giphy/sdk/ui/views/c;",
        "H",
        "Lcom/giphy/sdk/ui/views/c;",
        "getMediaActionsView",
        "()Lcom/giphy/sdk/ui/views/c;",
        "setMediaActionsView",
        "(Lcom/giphy/sdk/ui/views/c;)V",
        "mediaActionsView",
        "Landroid/content/Context;",
        "context",
        "Landroid/util/AttributeSet;",
        "attrs",
        "",
        "defStyleAttr",
        "<init>",
        "(Landroid/content/Context;Landroid/util/AttributeSet;I)V",
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
.field private F:Lcom/giphy/sdk/ui/drawables/a;

.field private G:Z

.field private H:Lcom/giphy/sdk/ui/views/c;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Landroid/content/Context;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v2, 0x0

    const/4 v3, 0x0

    const/4 v4, 0x6

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    invoke-direct/range {v0 .. v5}, Lcom/giphy/sdk/ui/views/GPHMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;)V
    .locals 6
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const/4 v3, 0x0

    const/4 v4, 0x4

    const/4 v5, 0x0

    move-object v0, p0

    move-object v1, p1

    move-object v2, p2

    invoke-direct/range {v0 .. v5}, Lcom/giphy/sdk/ui/views/GPHMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V

    return-void
.end method

.method public constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Landroid/util/AttributeSet;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .annotation build Lkotlin/jvm/JvmOverloads;
    .end annotation

    const-string v0, "context"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 2
    invoke-direct {p0, p1, p2, p3}, Lcom/giphy/sdk/ui/views/GifView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    const/4 p2, 0x1

    .line 3
    iput-boolean p2, p0, Lcom/giphy/sdk/ui/views/GPHMediaView;->G:Z

    .line 4
    new-instance p3, Lcom/giphy/sdk/ui/drawables/a;

    invoke-direct {p3, p1}, Lcom/giphy/sdk/ui/drawables/a;-><init>(Landroid/content/Context;)V

    iput-object p3, p0, Lcom/giphy/sdk/ui/views/GPHMediaView;->F:Lcom/giphy/sdk/ui/drawables/a;

    .line 5
    new-instance p3, Lcom/giphy/sdk/ui/views/c;

    const/4 v0, 0x2

    new-array v0, v0, [Lcom/giphy/sdk/ui/views/GPHActions;

    sget-object v1, Lcom/giphy/sdk/ui/views/GPHActions;->CopyLink:Lcom/giphy/sdk/ui/views/GPHActions;

    const/4 v2, 0x0

    aput-object v1, v0, v2

    sget-object v1, Lcom/giphy/sdk/ui/views/GPHActions;->OpenGiphy:Lcom/giphy/sdk/ui/views/GPHActions;

    aput-object v1, v0, p2

    invoke-direct {p3, p1, v0}, Lcom/giphy/sdk/ui/views/c;-><init>(Landroid/content/Context;[Lcom/giphy/sdk/ui/views/GPHActions;)V

    iput-object p3, p0, Lcom/giphy/sdk/ui/views/GPHMediaView;->H:Lcom/giphy/sdk/ui/views/c;

    .line 6
    new-instance p1, Lcom/giphy/sdk/ui/views/GPHMediaView$a;

    invoke-direct {p1, p0}, Lcom/giphy/sdk/ui/views/GPHMediaView$a;-><init>(Lcom/giphy/sdk/ui/views/GPHMediaView;)V

    invoke-virtual {p0, p1}, Landroid/widget/ImageView;->setOnLongClickListener(Landroid/view/View$OnLongClickListener;)V

    return-void
.end method

.method public synthetic constructor <init>(Landroid/content/Context;Landroid/util/AttributeSet;IILkotlin/jvm/internal/DefaultConstructorMarker;)V
    .locals 0

    and-int/lit8 p5, p4, 0x2

    if-eqz p5, :cond_0

    const/4 p2, 0x0

    :cond_0
    and-int/lit8 p4, p4, 0x4

    if-eqz p4, :cond_1

    const/4 p3, 0x0

    .line 1
    :cond_1
    invoke-direct {p0, p1, p2, p3}, Lcom/giphy/sdk/ui/views/GPHMediaView;-><init>(Landroid/content/Context;Landroid/util/AttributeSet;I)V

    return-void
.end method


# virtual methods
.method public A(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V
    .locals 0
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p2    # Lcom/facebook/imagepipeline/image/g;
        .annotation build Lm8/h;
        .end annotation
    .end param
    .param p3    # Landroid/graphics/drawable/Animatable;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    invoke-super {p0, p1, p2, p3}, Lcom/giphy/sdk/ui/views/GifView;->A(Ljava/lang/String;Lcom/facebook/imagepipeline/image/g;Landroid/graphics/drawable/Animatable;)V

    .line 2
    invoke-virtual {p0}, Landroid/widget/ImageView;->invalidate()V

    .line 3
    iget-boolean p1, p0, Lcom/giphy/sdk/ui/views/GPHMediaView;->G:Z

    if-eqz p1, :cond_0

    .line 4
    iget-object p1, p0, Lcom/giphy/sdk/ui/views/GPHMediaView;->F:Lcom/giphy/sdk/ui/drawables/a;

    if-eqz p1, :cond_0

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/drawables/a;->d()V

    :cond_0
    return-void
.end method

.method protected B()V
    .locals 2

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GPHMediaView;->H:Lcom/giphy/sdk/ui/views/c;

    invoke-virtual {p0}, Lcom/giphy/sdk/ui/views/GifView;->getMedia()Lcom/giphy/sdk/core/models/Media;

    move-result-object v1

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/views/c;->j(Lcom/giphy/sdk/core/models/Media;)V

    return-void
.end method

.method public final getMediaActionsView()Lcom/giphy/sdk/ui/views/c;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GPHMediaView;->H:Lcom/giphy/sdk/ui/views/c;

    return-object v0
.end method

.method public final getShowAttribution$giphy_ui_2_1_9_release()Z
    .locals 1

    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/GPHMediaView;->G:Z

    return v0
.end method

.method protected onDraw(Landroid/graphics/Canvas;)V
    .locals 1
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "canvas"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-super {p0, p1}, Landroid/widget/ImageView;->onDraw(Landroid/graphics/Canvas;)V

    .line 2
    iget-boolean v0, p0, Lcom/giphy/sdk/ui/views/GPHMediaView;->G:Z

    if-eqz v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/views/GPHMediaView;->F:Lcom/giphy/sdk/ui/drawables/a;

    if-eqz v0, :cond_0

    invoke-virtual {v0, p1}, Lcom/giphy/sdk/ui/drawables/a;->b(Landroid/graphics/Canvas;)V

    :cond_0
    return-void
.end method

.method public final setMediaActionsView(Lcom/giphy/sdk/ui/views/c;)V
    .locals 1
    .param p1    # Lcom/giphy/sdk/ui/views/c;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "<set-?>"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/views/GPHMediaView;->H:Lcom/giphy/sdk/ui/views/c;

    return-void
.end method

.method public final setShowAttribution$giphy_ui_2_1_9_release(Z)V
    .locals 0

    iput-boolean p1, p0, Lcom/giphy/sdk/ui/views/GPHMediaView;->G:Z

    return-void
.end method
