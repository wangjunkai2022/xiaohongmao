.class public final Lcom/giphy/sdk/ui/universallist/c;
.super Lcom/giphy/sdk/ui/universallist/j;
.source "SmartGifViewHolder.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/giphy/sdk/ui/universallist/c$b;
    }
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000<\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0010\u0002\n\u0000\n\u0002\u0010\u000b\n\u0000\n\u0002\u0010\u0000\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0018\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0005\n\u0002\u0018\u0002\n\u0002\u0008\u0004\u0018\u0000 \n2\u00020\u0001:\u0001\tB\u001b\u0012\u0006\u0010\u0017\u001a\u00020\u0016\u0012\n\u0010\u0012\u001a\u00060\u000fR\u00020\u0010\u00a2\u0006\u0004\u0008\u0018\u0010\u0019J\u0016\u0010\u0006\u001a\u00020\u00052\u000c\u0010\u0004\u001a\u0008\u0012\u0004\u0012\u00020\u00030\u0002H\u0016J\u0012\u0010\t\u001a\u00020\u00032\u0008\u0010\u0008\u001a\u0004\u0018\u00010\u0007H\u0016J\u0008\u0010\n\u001a\u00020\u0003H\u0016R\u0014\u0010\u000e\u001a\u00020\u000b8\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\u000c\u0010\rR\u0018\u0010\u0012\u001a\u00060\u000fR\u00020\u00108\u0002X\u0082\u0004\u00a2\u0006\u0006\n\u0004\u0008\t\u0010\u0011R\u0014\u0010\u0015\u001a\u00020\u00058BX\u0082\u0004\u00a2\u0006\u0006\u001a\u0004\u0008\u0013\u0010\u0014\u00a8\u0006\u001a"
    }
    d2 = {
        "Lcom/giphy/sdk/ui/universallist/c;",
        "Lcom/giphy/sdk/ui/universallist/j;",
        "Lkotlin/Function0;",
        "",
        "onLoad",
        "",
        "c",
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
        "f",
        "()Z",
        "isGifLoaded",
        "Landroid/view/View;",
        "itemView",
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

.field public static final d:Lcom/giphy/sdk/ui/universallist/c$b;
    .annotation build Lm8/g;
    .end annotation
.end field


# instance fields
.field private final a:Lcom/giphy/sdk/ui/views/GifView;

.field private final b:Lcom/giphy/sdk/ui/universallist/e$a;


# direct methods
.method static constructor <clinit>()V
    .locals 2

    new-instance v0, Lcom/giphy/sdk/ui/universallist/c$b;

    const/4 v1, 0x0

    invoke-direct {v0, v1}, Lcom/giphy/sdk/ui/universallist/c$b;-><init>(Lkotlin/jvm/internal/DefaultConstructorMarker;)V

    sput-object v0, Lcom/giphy/sdk/ui/universallist/c;->d:Lcom/giphy/sdk/ui/universallist/c$b;

    sget-object v0, Lcom/giphy/sdk/ui/universallist/c$a;->a:Lcom/giphy/sdk/ui/universallist/c$a;

    sput-object v0, Lcom/giphy/sdk/ui/universallist/c;->c:Lkotlin/jvm/functions/Function2;

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

    const-string v0, "itemView"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    const-string v0, "adapterHelper"

    invoke-static {p2, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0, p1}, Lcom/giphy/sdk/ui/universallist/j;-><init>(Landroid/view/View;)V

    iput-object p2, p0, Lcom/giphy/sdk/ui/universallist/c;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    .line 2
    check-cast p1, Lcom/giphy/sdk/ui/views/GifView;

    iput-object p1, p0, Lcom/giphy/sdk/ui/universallist/c;->a:Lcom/giphy/sdk/ui/views/GifView;

    return-void
.end method

.method public static final synthetic e()Lkotlin/jvm/functions/Function2;
    .locals 1

    sget-object v0, Lcom/giphy/sdk/ui/universallist/c;->c:Lkotlin/jvm/functions/Function2;

    return-object v0
.end method

.method private final f()Z
    .locals 1

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/c;->a:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/GifView;->getLoaded()Z

    move-result v0

    return v0
.end method


# virtual methods
.method public b(Ljava/lang/Object;)V
    .locals 9
    .param p1    # Ljava/lang/Object;
        .annotation build Lm8/h;
        .end annotation
    .end param

    .line 1
    instance-of v0, p1, Lcom/giphy/sdk/core/models/Media;

    const/4 v1, 0x0

    if-nez v0, :cond_0

    move-object v0, v1

    goto :goto_0

    :cond_0
    move-object v0, p1

    :goto_0
    check-cast v0, Lcom/giphy/sdk/core/models/Media;

    if-eqz v0, :cond_11

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/c;->a:Lcom/giphy/sdk/ui/views/GifView;

    iget-object v2, p0, Lcom/giphy/sdk/ui/universallist/c;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/universallist/e$a;->j()Z

    move-result v2

    if-eqz v2, :cond_1

    iget-object v2, p0, Lcom/giphy/sdk/ui/universallist/c;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/universallist/e$a;->a()Ljava/lang/Float;

    move-result-object v2

    goto :goto_1

    :cond_1
    move-object v2, v1

    :goto_1
    invoke-virtual {v0, v2}, Lcom/giphy/sdk/ui/views/GifView;->setFixedAspectRatio(Ljava/lang/Float;)V

    .line 3
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/c;->a:Lcom/giphy/sdk/ui/views/GifView;

    iget-object v2, p0, Lcom/giphy/sdk/ui/universallist/c;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/universallist/e$a;->j()Z

    move-result v2

    if-eqz v2, :cond_2

    sget-object v2, Lcom/facebook/drawee/drawable/s$c;->e:Lcom/facebook/drawee/drawable/s$c;

    goto :goto_2

    :cond_2
    move-object v2, v1

    :goto_2
    invoke-virtual {v0, v2}, Lcom/giphy/sdk/ui/views/GifView;->setScaleType(Lcom/facebook/drawee/drawable/s$c;)V

    .line 4
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/c;->a:Lcom/giphy/sdk/ui/views/GifView;

    iget-object v2, p0, Lcom/giphy/sdk/ui/universallist/c;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/universallist/e$a;->i()Z

    move-result v2

    invoke-virtual {v0, v2}, Lcom/giphy/sdk/ui/views/GifView;->setBackgroundVisible(Z)V

    .line 5
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/c;->a:Lcom/giphy/sdk/ui/views/GifView;

    iget-object v2, p0, Lcom/giphy/sdk/ui/universallist/c;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {v2}, Lcom/giphy/sdk/ui/universallist/e$a;->f()Lcom/giphy/sdk/ui/drawables/ImageFormat;

    move-result-object v2

    invoke-virtual {v0, v2}, Lcom/giphy/sdk/ui/views/GifView;->setImageFormat(Lcom/giphy/sdk/ui/drawables/ImageFormat;)V

    .line 6
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/c;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/universallist/e$a;->c()Lcom/giphy/sdk/ui/GPHContentType;

    move-result-object v0

    const/4 v2, 0x0

    const/4 v3, 0x1

    if-nez v0, :cond_3

    goto :goto_3

    :cond_3
    sget-object v4, Lcom/giphy/sdk/ui/universallist/d;->$EnumSwitchMapping$0:[I

    invoke-virtual {v0}, Ljava/lang/Enum;->ordinal()I

    move-result v0

    aget v0, v4, v0

    if-eq v0, v3, :cond_7

    const/4 v4, 0x2

    if-eq v0, v4, :cond_6

    const/4 v4, 0x3

    if-eq v0, v4, :cond_5

    const/4 v4, 0x4

    if-eq v0, v4, :cond_4

    :goto_3
    const/4 v0, 0x0

    :goto_4
    const/4 v4, 0x0

    :goto_5
    const/4 v5, 0x0

    :goto_6
    const/4 v6, 0x0

    goto :goto_7

    :cond_4
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x0

    const/4 v6, 0x1

    goto :goto_7

    :cond_5
    const/4 v0, 0x0

    const/4 v4, 0x1

    goto :goto_5

    :cond_6
    const/4 v0, 0x0

    const/4 v4, 0x0

    const/4 v5, 0x1

    goto :goto_6

    :cond_7
    const/4 v0, 0x1

    goto :goto_4

    .line 7
    :goto_7
    iget-object v7, p0, Lcom/giphy/sdk/ui/universallist/c;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {v7}, Lcom/giphy/sdk/ui/universallist/e$a;->d()Lcom/giphy/sdk/ui/n;

    move-result-object v7

    if-eqz v7, :cond_8

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v8

    invoke-interface {v7, v8}, Lcom/giphy/sdk/ui/n;->a(I)Landroid/graphics/drawable/Drawable;

    move-result-object v7

    if-eqz v7, :cond_8

    move-object v1, v7

    goto :goto_8

    :cond_8
    if-nez v0, :cond_a

    if-nez v4, :cond_a

    if-nez v5, :cond_a

    if-eqz v6, :cond_9

    goto :goto_8

    .line 8
    :cond_9
    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v1

    .line 9
    invoke-static {v1}, Lcom/giphy/sdk/ui/b;->d(I)Landroid/graphics/drawable/Drawable;

    move-result-object v1

    .line 10
    :cond_a
    :goto_8
    new-instance v6, Ljava/lang/StringBuilder;

    invoke-direct {v6}, Ljava/lang/StringBuilder;-><init>()V

    const-string v7, "Media # "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {p0}, Landroidx/recyclerview/widget/RecyclerView$ViewHolder;->getAdapterPosition()I

    move-result v7

    add-int/2addr v7, v3

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const-string v7, " of "

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    iget-object v7, p0, Lcom/giphy/sdk/ui/universallist/c;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {v7}, Lcom/giphy/sdk/ui/universallist/e$a;->g()I

    move-result v7

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(I)Ljava/lang/StringBuilder;

    const/16 v7, 0x20

    invoke-virtual {v6, v7}, Ljava/lang/StringBuilder;->append(C)Ljava/lang/StringBuilder;

    invoke-virtual {v6}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 11
    check-cast p1, Lcom/giphy/sdk/core/models/Media;

    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->getTitle()Ljava/lang/String;

    move-result-object v7

    if-eqz v7, :cond_b

    .line 12
    new-instance v8, Ljava/lang/StringBuilder;

    invoke-direct {v8}, Ljava/lang/StringBuilder;-><init>()V

    invoke-virtual {v8, v6}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8, v7}, Ljava/lang/StringBuilder;->append(Ljava/lang/String;)Ljava/lang/StringBuilder;

    invoke-virtual {v8}, Ljava/lang/StringBuilder;->toString()Ljava/lang/String;

    move-result-object v6

    .line 13
    :cond_b
    iget-object v7, p0, Lcom/giphy/sdk/ui/universallist/c;->a:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {v7, v6}, Landroid/widget/ImageView;->setContentDescription(Ljava/lang/CharSequence;)V

    .line 14
    iget-object v6, p0, Lcom/giphy/sdk/ui/universallist/c;->a:Lcom/giphy/sdk/ui/views/GifView;

    .line 15
    iget-object v7, p0, Lcom/giphy/sdk/ui/universallist/c;->b:Lcom/giphy/sdk/ui/universallist/e$a;

    invoke-virtual {v7}, Lcom/giphy/sdk/ui/universallist/e$a;->h()Lcom/giphy/sdk/core/models/enums/RenditionType;

    move-result-object v7

    .line 16
    invoke-virtual {v6, p1, v7, v1}, Lcom/giphy/sdk/ui/views/GifView;->I(Lcom/giphy/sdk/core/models/Media;Lcom/giphy/sdk/core/models/enums/RenditionType;Landroid/graphics/drawable/Drawable;)V

    .line 17
    invoke-virtual {p1}, Lcom/giphy/sdk/core/models/Media;->isHidden()Z

    move-result p1

    if-eqz p1, :cond_c

    .line 18
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/c;->a:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/GifView;->H()V

    goto :goto_9

    .line 19
    :cond_c
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/c;->a:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {p1}, Lcom/giphy/sdk/ui/views/GifView;->F()V

    :goto_9
    if-nez v0, :cond_d

    if-nez v4, :cond_d

    if-eqz v5, :cond_e

    :cond_d
    const/4 v2, 0x1

    .line 20
    :cond_e
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/c;->a:Lcom/giphy/sdk/ui/views/GifView;

    const v1, 0x3f333333    # 0.7f

    const/high16 v3, 0x3f800000    # 1.0f

    if-eqz v2, :cond_f

    const v6, 0x3f333333    # 0.7f

    goto :goto_a

    :cond_f
    const/high16 v6, 0x3f800000    # 1.0f

    :goto_a
    invoke-virtual {p1, v6}, Landroid/widget/ImageView;->setScaleX(F)V

    .line 21
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/c;->a:Lcom/giphy/sdk/ui/views/GifView;

    if-eqz v2, :cond_10

    goto :goto_b

    :cond_10
    const/high16 v1, 0x3f800000    # 1.0f

    :goto_b
    invoke-virtual {p1, v1}, Landroid/widget/ImageView;->setScaleY(F)V

    if-nez v0, :cond_11

    if-nez v4, :cond_11

    if-nez v5, :cond_11

    .line 22
    iget-object p1, p0, Lcom/giphy/sdk/ui/universallist/c;->a:Lcom/giphy/sdk/ui/views/GifView;

    sget-object v0, Lcom/giphy/sdk/ui/views/GifView;->E:Lcom/giphy/sdk/ui/views/GifView$a;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/GifView$a;->a()F

    move-result v0

    invoke-virtual {p1, v0}, Lcom/giphy/sdk/ui/views/GifView;->setCornerRadius(F)V

    :cond_11
    return-void
.end method

.method public c(Lkotlin/jvm/functions/Function0;)Z
    .locals 2
    .param p1    # Lkotlin/jvm/functions/Function0;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/functions/Function0<",
            "Lkotlin/Unit;",
            ">;)Z"
        }
    .end annotation

    const-string v0, "onLoad"

    invoke-static {p1, v0}, Lkotlin/jvm/internal/Intrinsics;->checkNotNullParameter(Ljava/lang/Object;Ljava/lang/String;)V

    .line 1
    invoke-direct {p0}, Lcom/giphy/sdk/ui/universallist/c;->f()Z

    move-result v0

    if-nez v0, :cond_0

    .line 2
    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/c;->a:Lcom/giphy/sdk/ui/views/GifView;

    new-instance v1, Lcom/giphy/sdk/ui/universallist/c$c;

    invoke-direct {v1, p1}, Lcom/giphy/sdk/ui/universallist/c$c;-><init>(Lkotlin/jvm/functions/Function0;)V

    invoke-virtual {v0, v1}, Lcom/giphy/sdk/ui/views/GifView;->setOnPingbackGifLoadSuccess(Lkotlin/jvm/functions/Function0;)V

    .line 3
    :cond_0
    invoke-direct {p0}, Lcom/giphy/sdk/ui/universallist/c;->f()Z

    move-result p1

    return p1
.end method

.method public d()V
    .locals 1

    iget-object v0, p0, Lcom/giphy/sdk/ui/universallist/c;->a:Lcom/giphy/sdk/ui/views/GifView;

    invoke-virtual {v0}, Lcom/giphy/sdk/ui/views/GifView;->E()V

    return-void
.end method
