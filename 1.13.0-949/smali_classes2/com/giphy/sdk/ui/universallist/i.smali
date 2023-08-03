.class public final Lcom/giphy/sdk/ui/universallist/i;
.super Lcom/giphy/sdk/ui/universallist/j;
.source "SmartVideoPreviewViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/ui/universallist/i$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u00002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0008\u0000\u0018\u0000 \u00062\u00020\u0001:\u0001\u0005B\u001b\u0012\u0006\u0010\u0010\u001a\u00020\u000f\u0012\n\u0010\u000e\u001a\u00060\u000bR\u00020\u000c\u00a2\u0006\u0004\u0008\u0011\u0010\u0012J\u0012\u0010\u0005\u001a\u00020\u00042\u0008\u0010\u0003\u001a\u0004\u0018\u00010\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016R\u0014\u0010\n\u001a\u00020\u00078\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0008\u0010\tR\u0018\u0010\u000e\u001a\u00060\u000bR\u00020\u000c8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u0005\u0010\r\u00a8\u0006\u0013"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/universallist/i;",
        "Lcom/giphy/sdk/ui/universallist/j;",
        "",
        "data",
        "",
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
.field private static final c:Lkotlin/jvm/functions/Function2;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lkotlin/jvm/functions/Function2<",
            "Landroid/view/ViewGroup;",
            "Lcom/giphy/sdk/ui/universallist/e$a;",
            "Lcom/giphy/sdk/ui/universallist/j;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation
.end field

.field public static final d:Lcom/giphy/sdk/ui/universallist/i$b;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/giphy/sdk/ui/views/GifView;

.field private final b:Lcom/giphy/sdk/ui/universallist/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/giphy/sdk/ui/universallist/i$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/giphy/sdk/ui/universallist/i$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/giphy/sdk/ui/universallist/i;->d:Lcom/giphy/sdk/ui/universallist/i$b;

    sget-object v0, Lcom/giphy/sdk/ui/universallist/i$a;->a:Lcom/giphy/sdk/ui/universallist/i$a;

    sput-object v0, Lcom/giphy/sdk/ui/universallist/i;->c:Lkotlin/jvm/functions/Function2;

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

    iput-object p2, p0, Lcom/giphy/sdk/ui/universallist/i;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    .line 2
    iget-object p1, p0, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->itemView:Landroid/view/View;

    invoke-static {p1}, Lh2/l;->a(Landroid/view/View;)Lh2/l;

    move-result-object p1

    iget-object p1, p1, Lh2/l;->b:Lcom/giphy/sdk/ui/views/GifView;

    const-string p2, "GphSmartVideoPreviewItem\u2026ng.bind(itemView).gifView"

    invoke-static {p1, p2}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullExpressionValue(Ljava/lang/Object;Ljava/lang/String;)V

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/i;->a:Lcom/giphy/sdk/ui/views/GifView;

    return-void
.end method

.method public static final synthetic e()Lkotlin/jvm/functions/Function2;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/ui/universallist/i;->c:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 4
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/giphy/sdk/core/models/Media;

    if-nez v0, :cond_0

    const/4 v0, 0x0

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lcom/giphy/sdk/core/models/Media;

    if-eqz v0, :cond_2

    .line 2
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 3
    invoke-static {v1}, Lcom/giphy/sdk/ui/b;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 4
    iget-object v2, p0, Lcom/giphy/sdk/ui/universallist/i;->a:Lcom/giphy/sdk/ui/views/GifView;

    iget-object v3, p0, Lcom/giphy/sdk/ui/universallist/i;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {v3}, Lcom/giphy/sdk/ui/universallist/e$a;->f()Lcom/giphy/sdk/ui/drawables/ImageFormat;

    move-result-object v3

    invoke-virtual {v2, v3}, Lcom/giphy/sdk/ui/views/GifView;->setImageFormat(Lcom/giphy/sdk/ui/drawables/ImageFormat;)V

    .line 5
    new-instance v2, Ljava/lang/StringBuilder;

    invoke-direct {v2}, Ljava/lang/StringBuilder;-><init>()V

    const-string v3, "Media # "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v3

    add-int/lit8 v3, v3, 0x1

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v3, " of "

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v3, p0, Lcom/giphy/sdk/ui/universallist/i;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {v3}, Lcom/giphy/sdk/ui/universallist/e$a;->g()I

    move-result v3

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v3, 0x20

    invoke-virtual {v2, v3}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v2}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 6
    invoke-virtual {v0}, Lcom/giphy/sdk/core/models/Media;->getTitle()Ljava/lang/String;

    move-result-object v0

    if-eqz v0, :cond_1

    .line 7
    new-instance v3, Ljava/lang/StringBuilder;

    invoke-direct {v3}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v3, v2}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3, v0}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v3}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v2

    .line 8
    :cond_1
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/i;->a:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {v0, v2}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 9
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/i;->a:Lcom/giphy/sdk/ui/views/GifView;

    .line 10
    check-cast p1, Lcom/giphy/sdk/core/models/Media;

    .line 11
    iget-object v2, p0, Lcom/giphy/sdk/ui/universallist/i;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/universallist/e$a;->b()Lcom/giphy/sdk/core/models/enums/RenditionType;

    move-result-object v2

    .line 12
    invoke-virtual {v0, p1, v2, v1}, Lcom/giphy/sdk/ui/views/GifView;->I(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/enums/RenditionType;Landroid/graphics/drawable/Drawable;)V

    .line 13
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/i;->a:Lcom/giphy/sdk/ui/views/GifView;

    const/high16 v0, 0x3f800000    # 1.0f

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 14
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/i;->a:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {p1, v0}, Landroid/widget/ImageView;->setScaleY(F)V

    .line 15
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/i;->a:Lcom/giphy/sdk/ui/views/GifView;

    sget-object v0, Lcom/giphy/sdk/ui/views/GifView;->E:Lcom/giphy/sdk/ui/views/GifView$a;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/GifView$a;->a()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/giphy/sdk/ui/views/GifView;->setCornerRadius(F)V

    :cond_2
    return-void
.end method

.method public d()V
    .locals 2

    .line 1
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/i;->a:Lcom/giphy/sdk/ui/views/GifView;

    const/4 v1, 0x0

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/views/GifView;->setGifCallback(Lcom/giphy/sdk/ui/views/GifView$b;)V

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/i;->a:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/GifView;->E()V

    return-void
.end method
