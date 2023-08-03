.class public final Lcom/giphy/sdk/ui/universallist/a;
.super Lcom/giphy/sdk/ui/universallist/j;
.source "DynamicTextViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/ui/universallist/a$a;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00008\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\u0008\u0000\u0018\u0000 \u00162\u00020\u0001:\u0001\u000bB\u001b\u0012\u0006\u0010\u0013\u001a\u00020\u0012\u0012\n\u0010\u0011\u001a\u00060\u000eR\u00020\u000f\u00a2\u0006\u0004\u0008\u0014\u0010\u0015J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0002J\u0012\u0010\u0008\u001a\u00020\u00042\u0008\u0010\u0007\u001a\u0004\u0018\u00010\u0006H\u0016J\u0008\u0010\t\u001a\u00020\u0004H\u0016R\u0014\u0010\r\u001a\u00020\n8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000b\u0010\u000cR\u0018\u0010\u0011\u001a\u00060\u000eR\u00020\u000f8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\u0010\u00a8\u0006\u0017"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/universallist/a;",
        "Lcom/giphy/sdk/ui/universallist/j;",
        "",
        "shouldAnimate",
        "",
        "f",
        "",
        "data",
        "b",
        "d",
        "Lcom/giphy/sdk/ui/views/GifView;",
        "a",
        "Lcom/giphy/sdk/ui/views/GifView;",
        "gifView",
        "Lcom/giphy/sdk/ui/universallist/e$a;",
        "Lcom/giphy/sdk/ui/universallist/e;",
        "Lcom/giphy/sdk/ui/universallist/e$a;",
        "adapterHelper",
        "Landroid/view/View;",
        "view",
        "<init>",
        "(Landroid/view/View;Lcom/giphy/sdk/ui/universallist/e$a;)V",
        "c",
        "giphy-ui-2.1.9_release"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x1
    }
.end annotation


# static fields
.field public static final c:Lcom/giphy/sdk/ui/universallist/a$a;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/giphy/sdk/ui/views/GifView;

.field private final b:Lcom/giphy/sdk/ui/universallist/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/giphy/sdk/ui/universallist/a$a;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/giphy/sdk/ui/universallist/a$a;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/giphy/sdk/ui/universallist/a;->c:Lcom/giphy/sdk/ui/universallist/a$a;

    return-void
.end method

.method public constructor <init>(Landroid/view/View;Lcom/giphy/sdk/ui/universallist/e$a;)V
    .locals 1
    .param p1    # Landroid/view/View;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p2    # Lcom/giphy/sdk/ui/universallist/e$a;
        .annotation build Lm8/g;
        .end annotation
    .end param

    const-string v0, "view"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/universallist/j;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/giphy/sdk/ui/universallist/a;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lh2/c;->a(Landroid/view/View;)Lh2/c;

    move-result-object p1

    iget-object p1, p1, Lh2/c;->c:Lcom/giphy/sdk/ui/views/GifView;

    const-string p2, "GphDynamicTextItemBinding.bind(itemView).gifView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/a;->a:Lcom/giphy/sdk/ui/views/GifView;

    return-void
.end method

.method public static final synthetic e(Lcom/giphy/sdk/ui/universallist/a;Z)V
    .locals 0

    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/universallist/a;->f(Z)V

    return-void
.end method

.method private final f(Z)V
    .locals 4

    .line 1
    iget-object v0, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {v0}, Lh2/c;->a(Landroid/view/View;)Lh2/c;

    move-result-object v0

    .line 2
    iget-object v1, v0, Lh2/c;->d:Landroid/widget/ImageView;

    const-string v2, "loader"

    invoke-static {v1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-virtual {v1}, Landroid/widget/ImageView;->getBackground()Landroid/graphics/drawable/Drawable;

    move-result-object v1

    const-string v3, "null cannot be cast to non-null type android.graphics.drawable.AnimationDrawable"

    invoke-static {v1, v3}, Ljava/util/Objects;->requireNonNull(Ljava/lang/Object;Ljava/lang/String;)Ljava/lang/Object;

    check-cast v1, Landroid/graphics/drawable/AnimationDrawable;

    if-eqz p1, :cond_0

    .line 3
    iget-object p1, v0, Lh2/c;->d:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/4 v0, 0x0

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 4
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->start()V

    goto :goto_0

    .line 5
    :cond_0
    iget-object p1, v0, Lh2/c;->d:Landroid/widget/ImageView;

    invoke-static {p1, v2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    const/16 v0, 0x8

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setVisibility(I)V

    .line 6
    invoke-virtual {v1}, Landroid/graphics/drawable/AnimationDrawable;->stop()V

    :goto_0
    return-void
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 8
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    const/4 v0, 0x1

    .line 1
    invoke-direct {p0, v0}, Lcom/giphy/sdk/ui/universallist/a;->f(Z)V

    .line 2
    iget-object v1, p0, Lcom/giphy/sdk/ui/universallist/a;->a:Lcom/giphy/sdk/ui/views/GifView;

    new-instance v2, Lcom/giphy/sdk/ui/universallist/a$b;

    invoke-direct {v2, p0}, Lcom/giphy/sdk/ui/universallist/a$b;-><init>(Lcom/giphy/sdk/ui/universallist/a;)V

    invoke-virtual {v1, v2}, Lcom/giphy/sdk/ui/views/GifView;->setGifCallback(Lcom/giphy/sdk/ui/views/GifView$b;)V

    .line 3
    instance-of v1, p1, Lcom/giphy/sdk/core/models/Media;

    if-nez v1, :cond_0

    const/4 v1, 0x0

    goto :goto_0

    :cond_0
    move-object v1, p1

    :goto_0
    check-cast v1, Lcom/giphy/sdk/core/models/Media;

    if-eqz v1, :cond_2

    .line 4
    iget-object v2, p0, Lcom/giphy/sdk/ui/universallist/a;->a:Lcom/giphy/sdk/ui/views/GifView;

    sget-object v3, Lcom/facebook/drawee/drawable/s$c;->e:Lcom/facebook/drawee/drawable/s$c;

    invoke-virtual {v2, v3}, Lcom/giphy/sdk/ui/views/GifView;->setScaleType(Lcom/facebook/drawee/drawable/s$c;)V

    .line 5
    iget-object v2, p0, Lcom/giphy/sdk/ui/universallist/a;->a:Lcom/giphy/sdk/ui/views/GifView;

    iget-object v3, p0, Lcom/giphy/sdk/ui/universallist/a;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {v3}, Lcom/giphy/sdk/ui/universallist/e$a;->i()Z

    move-result v3

    invoke-virtual {v2, v3}, Lcom/giphy/sdk/ui/views/GifView;->setBackgroundVisible(Z)V

    .line 6
    iget-object v2, p0, Lcom/giphy/sdk/ui/universallist/a;->a:Lcom/giphy/sdk/ui/views/GifView;

    iget-object v3, p0, Lcom/giphy/sdk/ui/universallist/a;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {v3}, Lcom/giphy/sdk/ui/universallist/e$a;->f()Lcom/giphy/sdk/ui/drawables/ImageFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/giphy/sdk/ui/views/GifView;->setImageFormat(Lcom/giphy/sdk/ui/drawables/ImageFormat;)V

    .line 7
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    add-int/2addr v3, v0

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v0, " of "

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/a;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/e$a;->g()I

    move-result v0

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v0, 0x20

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 8
    invoke-virtual {v1}, Lcom/giphy/sdk/core/models/Media;->getTitle()Ljava/lang/String;

    move-result-object v1

    if-eqz v1, :cond_1

    .line 9
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v2, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2, v1}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v0

    .line 10
    :cond_1
    iget-object v1, p0, Lcom/giphy/sdk/ui/universallist/a;->a:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {v1, v0}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 11
    iget-object v2, p0, Lcom/giphy/sdk/ui/universallist/a;->a:Lcom/giphy/sdk/ui/views/GifView;

    .line 12
    move-object v3, p1

    check-cast v3, Lcom/giphy/sdk/core/models/Media;

    .line 13
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/a;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/universallist/e$a;->h()Lcom/giphy/sdk/core/models/enums/RenditionType;

    move-result-object v4

    const/4 v5, 0x0

    const/4 v6, 0x4

    const/4 v7, 0x0

    .line 14
    invoke-static/range {v2 .. v7}, Lcom/giphy/sdk/ui/views/GifView;->J(Lcom/giphy/sdk/ui/views/GifView;Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/enums/RenditionType;Landroid/graphics/drawable/Drawable;ILjava/lang/Object;)V

    .line 15
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/a;->a:Lcom/giphy/sdk/ui/views/GifView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 16
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/a;->a:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/a;->a:Lcom/giphy/sdk/ui/views/GifView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/views/GifView;->setGifCallback(Lcom/giphy/sdk/ui/views/GifView$b;)V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/a;->a:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/GifView;->E()V

    return-void
.end method
