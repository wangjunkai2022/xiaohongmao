.class public final Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;
.super Ljava/lang/Object;
.source "MsgUtils.java"


# annotations
.annotation runtime Lu7/f;
.end annotation


# static fields
.field public static final q:Ljava/lang/String; = "MsgUtils"

.field private static final r:Z = false


# instance fields
.field public a:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private b:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private c:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private d:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Ljava/lang/CharSequence;",
            ">;"
        }
    .end annotation
.end field

.field private e:Ljava/lang/CharSequence;

.field private f:Ljava/lang/CharSequence;

.field private g:Ljava/lang/CharSequence;

.field private h:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private i:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private j:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private k:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private l:I

.field private m:I
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation
.end field

.field private n:Lcom/qennnsad/aknkaksd/util/e0;

.field private o:Lg5/a;

.field private p:Landroid/util/SparseArray;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Landroid/util/SparseArray<",
            "Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/b;",
            ">;"
        }
    .end annotation
.end field


# direct methods
.method constructor <init>(Landroid/content/Context;Lg5/a;Lcom/qennnsad/aknkaksd/util/e0;)V
    .locals 3
    .param p1    # Landroid/content/Context;
        .annotation build Lm6/b;
        .end annotation
    .end param
    .annotation runtime Lu7/a;
    .end annotation

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    .line 2
    new-instance v0, Landroid/util/SparseArray;

    const/16 v1, 0x80

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->b:Landroid/util/SparseArray;

    .line 3
    new-instance v0, Landroid/util/SparseArray;

    const/4 v1, 0x6

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->c:Landroid/util/SparseArray;

    .line 4
    new-instance v0, Landroid/util/SparseArray;

    const/4 v2, 0x3

    invoke-direct {v0, v2}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->d:Landroid/util/SparseArray;

    const/4 v0, 0x0

    .line 5
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->e:Ljava/lang/CharSequence;

    .line 6
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->f:Ljava/lang/CharSequence;

    .line 7
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->g:Ljava/lang/CharSequence;

    .line 8
    new-instance v0, Landroid/util/SparseArray;

    invoke-direct {v0, v1}, Landroid/util/SparseArray;-><init>(I)V

    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->p:Landroid/util/SparseArray;

    .line 9
    iput-object p3, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->n:Lcom/qennnsad/aknkaksd/util/e0;

    .line 10
    iput-object p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->o:Lg5/a;

    const p2, 0x7f0602b7

    .line 11
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->u(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->h:I

    const p2, 0x7f0602b9

    .line 12
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->u(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->i:I

    const p2, 0x7f060104

    .line 13
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->u(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->j:I

    const p2, 0x7f060070

    .line 14
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->u(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->k:I

    const p2, 0x7f060105

    .line 15
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->u(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m:I

    const p2, 0x7f060033

    .line 16
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->u(Landroid/content/Context;I)I

    move-result p2

    iput p2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->l:I

    const p2, 0x7f060052

    .line 17
    invoke-direct {p0, p1, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->u(Landroid/content/Context;I)I

    move-result p1

    iput p1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->a:I

    return-void
.end method

.method private u(Landroid/content/Context;I)I
    .locals 0
    .param p2    # I
        .annotation build Landroidx/annotation/ColorRes;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/ColorInt;
    .end annotation

    invoke-static {p1, p2}, Landroidx/core/content/ContextCompat;->getColor(Landroid/content/Context;I)I

    move-result p1

    return p1
.end method


# virtual methods
.method public a(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-eqz v0, :cond_0

    return-object v1

    :cond_0
    const-string v0, "room_admin"

    .line 2
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_1

    const/4 p1, 0x1

    goto :goto_0

    :cond_1
    const-string v0, "show_admin"

    .line 3
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v0

    if-eqz v0, :cond_2

    const/4 p1, 0x2

    goto :goto_0

    :cond_2
    const-string v0, "super_admin"

    .line 4
    invoke-virtual {p1, v0}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result p1

    if-eqz p1, :cond_5

    const/4 p1, 0x3

    .line 5
    :goto_0
    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v0

    .line 6
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/z0;->d(I)I

    move-result v2

    if-nez v2, :cond_3

    return-object v1

    .line 7
    :cond_3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070292

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 8
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-virtual {v5, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v4

    .line 9
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v5

    invoke-static {v5, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_4

    return-object v1

    :cond_4
    const/4 v1, 0x0

    .line 10
    invoke-static {v2, v3, v4, v1}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v2

    .line 11
    new-instance v3, Lcom/qennnsad/aknkaksd/util/j1$a;

    invoke-direct {v3, v0, v2}, Lcom/qennnsad/aknkaksd/util/j1$a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 12
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v2

    invoke-direct {v0, v2}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 13
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v2

    const/16 v4, 0x11

    invoke-virtual {v0, v3, v1, v2, v4}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 14
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->d:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0

    :cond_5
    return-object v1
.end method

.method public b(Ljava/lang/CharSequence;I)Ljava/lang/CharSequence;
    .locals 6

    .line 1
    invoke-static {p1}, Landroid/text/TextUtils;->isEmpty(Ljava/lang/CharSequence;)Z

    move-result v0

    const-string v1, ""

    if-nez v0, :cond_4

    if-gtz p2, :cond_0

    goto :goto_1

    .line 2
    :cond_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    if-eqz v0, :cond_1

    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, p2}, Landroid/util/SparseArray;->get(I)Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/b;

    goto :goto_0

    :cond_1
    const/4 v0, 0x0

    :goto_0
    const/4 v2, 0x0

    if-nez v0, :cond_3

    .line 3
    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v0

    .line 4
    invoke-static {p2}, Lcom/qennnsad/aknkaksd/util/s1;->h(I)I

    move-result v3

    invoke-static {v0, v3}, Lcom/qennnsad/aknkaksd/util/z0;->i(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_2

    return-object v1

    .line 5
    :cond_2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v4, 0x7f0700dc

    invoke-virtual {v1, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 6
    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getWidth()I

    move-result v4

    invoke-virtual {v3}, Landroid/graphics/Bitmap;->getHeight()I

    move-result v5

    div-int/2addr v4, v5

    int-to-float v4, v4

    int-to-float v5, v1

    mul-float v5, v5, v4

    float-to-int v4, v5

    .line 7
    invoke-static {v3, v4, v1, v2}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v3

    .line 8
    new-instance v4, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/b;

    mul-int/lit8 v1, v1, 0x3

    shr-int/lit8 v1, v1, 0x2

    int-to-float v1, v1

    invoke-direct {v4, v0, v3, v1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/b;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;F)V

    .line 9
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->p:Landroid/util/SparseArray;

    invoke-virtual {v0, p2, v4}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    move-object v0, v4

    .line 10
    :cond_3
    new-instance p2, Landroid/text/SpannableStringBuilder;

    invoke-direct {p2, p1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 11
    invoke-interface {p1}, Ljava/lang/CharSequence;->length()I

    move-result p1

    const/16 v1, 0x11

    invoke-virtual {p2, v0, v2, p1, v1}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    const-string p1, " "

    .line 12
    invoke-virtual {p2, p1}, Landroid/text/SpannableStringBuilder;->append(Ljava/lang/CharSequence;)Landroid/text/SpannableStringBuilder;

    move-result-object p1

    return-object p1

    :cond_4
    :goto_1
    return-object v1
.end method

.method public c(Ljava/lang/String;ILjava/lang/String;F)Ljava/lang/CharSequence;
    .locals 8
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-lez p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->o:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->e()Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;->getFanclub()Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->n:Lcom/qennnsad/aknkaksd/util/e0;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;->getFanclub()Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/qennnsad/aknkaksd/util/e0;->k(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;I)Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->n:Lcom/qennnsad/aknkaksd/util/e0;

    invoke-virtual {v0, p2}, Lcom/qennnsad/aknkaksd/util/e0;->n(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;)I

    move-result v4

    .line 4
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->n:Lcom/qennnsad/aknkaksd/util/e0;

    invoke-virtual {v0, p2}, Lcom/qennnsad/aknkaksd/util/e0;->m(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;)I

    move-result v5

    const/4 p2, 0x1

    new-array p2, p2, [Ljava/lang/Object;

    const/4 v0, 0x0

    .line 5
    new-instance v7, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;

    move-object v1, v7

    move-object v2, p3

    move-object v3, p1

    move v6, p4

    invoke-direct/range {v1 .. v6}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/a;-><init>(Ljava/lang/String;Ljava/lang/String;IIF)V

    aput-object v7, p2, v0

    const-string p3, ""

    invoke-static {p3, p1, p2}, Lcom/qennnsad/aknkaksd/util/j1;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public d(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 4
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    if-lez p2, :cond_1

    .line 1
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->o:Lg5/a;

    invoke-virtual {v0}, Lg5/a;->e()Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;

    move-result-object v0

    if-eqz v0, :cond_0

    .line 2
    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;->getFanclub()Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;

    move-result-object v1

    if-eqz v1, :cond_0

    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->n:Lcom/qennnsad/aknkaksd/util/e0;

    invoke-virtual {v0}, Lcom/qennnsad/aknkaksd/data/bean/ConfigBean;->getFanclub()Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;

    move-result-object v0

    invoke-virtual {v1, v0, p2}, Lcom/qennnsad/aknkaksd/util/e0;->k(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubConfig;I)Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;

    move-result-object p2

    goto :goto_0

    :cond_0
    const/4 p2, 0x0

    .line 3
    :goto_0
    iget-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->n:Lcom/qennnsad/aknkaksd/util/e0;

    invoke-virtual {v0, p2}, Lcom/qennnsad/aknkaksd/util/e0;->n(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;)I

    move-result v0

    .line 4
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->n:Lcom/qennnsad/aknkaksd/util/e0;

    invoke-virtual {v1, p2}, Lcom/qennnsad/aknkaksd/util/e0;->m(Lcom/qennnsad/aknkaksd/data/bean/fanclub/FanClubLevel;)I

    move-result p2

    const/4 v1, 0x1

    new-array v1, v1, [Ljava/lang/Object;

    const/4 v2, 0x0

    .line 5
    new-instance v3, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/i;

    invoke-direct {v3, p1, v0, p2}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/i;-><init>(Ljava/lang/String;II)V

    aput-object v3, v1, v2

    const-string p2, ""

    invoke-static {p2, p1, v1}, Lcom/qennnsad/aknkaksd/util/j1;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    .line 6
    :cond_1
    invoke-virtual {p0, p1}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m(Ljava/lang/String;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public e()Ljava/lang/CharSequence;
    .locals 6
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07029a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0804d0

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v5, 0x0

    .line 5
    invoke-static {v3, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/qennnsad/aknkaksd/util/j1$a;

    invoke-direct {v2, v0, v1}, Lcom/qennnsad/aknkaksd/util/j1$a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->f:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public f()Ljava/lang/CharSequence;
    .locals 6
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .line 1
    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07029a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0804d1

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v5, 0x0

    .line 5
    invoke-static {v3, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/qennnsad/aknkaksd/util/j1$a;

    invoke-direct {v2, v0, v1}, Lcom/qennnsad/aknkaksd/util/j1$a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->g:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public g(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->a:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ""

    invoke-static {v1, p1, v0}, Lcom/qennnsad/aknkaksd/util/j1;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public h(I)Ljava/lang/CharSequence;
    .locals 7
    .annotation build Landroidx/annotation/CheckResult;
    .end annotation

    .annotation build Landroidx/annotation/Nullable;
    .end annotation

    const/4 v0, 0x0

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f070299

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 3
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f070297

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    .line 4
    invoke-static {v1, p1}, Lcom/qennnsad/aknkaksd/util/z0;->e(Landroid/content/Context;I)Landroid/graphics/Bitmap;

    move-result-object v4

    const/4 v5, 0x1

    const/4 v6, 0x0

    if-nez v4, :cond_1

    new-array v1, v5, [Ljava/lang/Object;

    .line 5
    invoke-static {p1}, Ljava/lang/Integer;->valueOf(I)Ljava/lang/Integer;

    move-result-object p1

    aput-object p1, v1, v6

    const-string p1, "MsgUtils"

    const-string v2, "Cannot decode bitmap for level %d!"

    invoke-static {p1, v2, v1}, Lcom/qennnsad/aknkaksd/util/o0;->e(Ljava/lang/String;Ljava/lang/String;[Ljava/lang/Object;)V

    return-object v0

    .line 6
    :cond_1
    invoke-static {v4, v2, v3, v6}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7
    new-instance v2, Lcom/qennnsad/aknkaksd/util/j1$a;

    invoke-direct {v2, v1, v0}, Lcom/qennnsad/aknkaksd/util/j1$a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 8
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v6, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 10
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->b:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    const/4 p1, 0x2

    new-array p1, p1, [Ljava/lang/CharSequence;

    aput-object v0, p1, v6

    const-string v0, "  "

    aput-object v0, p1, v5

    .line 11
    invoke-static {p1}, Landroid/text/TextUtils;->concat([Ljava/lang/CharSequence;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public i()Ljava/lang/CharSequence;
    .locals 6

    .line 1
    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v0

    .line 2
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v1

    const v2, 0x7f07029b

    invoke-virtual {v1, v2}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v1

    .line 3
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v2

    const v3, 0x7f07029a

    invoke-virtual {v2, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v2

    .line 4
    invoke-virtual {v0}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0804d2

    invoke-static {v3, v4}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v3

    if-nez v3, :cond_0

    const-string v0, ""

    return-object v0

    :cond_0
    const/4 v5, 0x0

    .line 5
    invoke-static {v3, v1, v2, v5}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v1

    .line 6
    new-instance v2, Lcom/qennnsad/aknkaksd/util/j1$a;

    invoke-direct {v2, v0, v1}, Lcom/qennnsad/aknkaksd/util/j1$a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 7
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-static {v4}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 8
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v5, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 9
    iput-object v0, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->e:Ljava/lang/CharSequence;

    return-object v0
.end method

.method public j(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 7
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x5

    const/4 v1, 0x0

    const/4 v2, 0x1

    const-string v3, ""

    if-eqz p1, :cond_1

    .line 1
    invoke-virtual {p1, v3}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    const-string v4, "null"

    invoke-virtual {p1, v4}, Ljava/lang/String;->equals(Ljava/lang/Object;)Z

    move-result v4

    if-eqz v4, :cond_0

    goto :goto_0

    :cond_0
    const/4 v4, 0x2

    new-array v4, v4, [Ljava/lang/Object;

    .line 2
    new-instance v5, Landroid/text/style/RelativeSizeSpan;

    const v6, 0x3f59999a    # 0.85f

    invoke-direct {v5, v6}, Landroid/text/style/RelativeSizeSpan;-><init>(F)V

    aput-object v5, v4, v1

    new-instance v1, Lcom/qennnsad/aknkaksd/util/d1;

    iget v5, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->h:I

    invoke-direct {v1, v5, v0}, Lcom/qennnsad/aknkaksd/util/d1;-><init>(II)V

    aput-object v1, v4, v2

    invoke-static {v3, p1, v4}, Lcom/qennnsad/aknkaksd/util/j1;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1

    :cond_1
    :goto_0
    new-array p1, v2, [Ljava/lang/Object;

    .line 3
    new-instance v2, Lcom/qennnsad/aknkaksd/util/d1;

    iget v4, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->h:I

    invoke-direct {v2, v4, v0}, Lcom/qennnsad/aknkaksd/util/d1;-><init>(II)V

    aput-object v2, p1, v1

    invoke-static {v3, v3, p1}, Lcom/qennnsad/aknkaksd/util/j1;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public k(I)Ljava/lang/CharSequence;
    .locals 5

    const-string v0, ""

    if-nez p1, :cond_0

    return-object v0

    .line 1
    :cond_0
    invoke-static {}, Lcom/qennnsad/aknkaksd/BaseBeautyApplication;->getContextInstance()Landroid/content/Context;

    move-result-object v1

    .line 2
    invoke-static {p1}, Lcom/qennnsad/aknkaksd/util/z0;->h(I)I

    move-result v2

    if-nez v2, :cond_1

    return-object v0

    .line 3
    :cond_1
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    invoke-static {v3, v2}, Landroid/graphics/BitmapFactory;->decodeResource(Landroid/content/res/Resources;I)Landroid/graphics/Bitmap;

    move-result-object v2

    if-nez v2, :cond_2

    return-object v0

    .line 4
    :cond_2
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v0

    const v3, 0x7f07029c

    invoke-virtual {v0, v3}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v0

    add-int/lit8 v0, v0, 0xa

    .line 5
    invoke-virtual {v1}, Landroid/content/Context;->getResources()Landroid/content/res/Resources;

    move-result-object v3

    const v4, 0x7f0700dc

    invoke-virtual {v3, v4}, Landroid/content/res/Resources;->getDimensionPixelSize(I)I

    move-result v3

    const/4 v4, 0x0

    .line 6
    invoke-static {v2, v0, v3, v4}, Landroid/graphics/Bitmap;->createScaledBitmap(Landroid/graphics/Bitmap;IIZ)Landroid/graphics/Bitmap;

    move-result-object v0

    .line 7
    new-instance v2, Lcom/qennnsad/aknkaksd/util/j1$a;

    invoke-direct {v2, v1, v0}, Lcom/qennnsad/aknkaksd/util/j1$a;-><init>(Landroid/content/Context;Landroid/graphics/Bitmap;)V

    .line 8
    new-instance v0, Landroid/text/SpannableStringBuilder;

    invoke-static {p1}, Ljava/lang/String;->valueOf(I)Ljava/lang/String;

    move-result-object v1

    invoke-direct {v0, v1}, Landroid/text/SpannableStringBuilder;-><init>(Ljava/lang/CharSequence;)V

    .line 9
    invoke-virtual {v0}, Landroid/text/SpannableStringBuilder;->length()I

    move-result v1

    const/16 v3, 0x11

    invoke-virtual {v0, v2, v4, v1, v3}, Landroid/text/SpannableStringBuilder;->setSpan(Ljava/lang/Object;III)V

    .line 10
    iget-object v1, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->c:Landroid/util/SparseArray;

    invoke-virtual {v1, p1, v0}, Landroid/util/SparseArray;->put(ILjava/lang/Object;)V

    return-object v0
.end method

.method public l(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->l:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ""

    invoke-static {v1, p1, v0}, Lcom/qennnsad/aknkaksd/util/j1;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public m(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->j:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ""

    invoke-static {v1, p1, v0}, Lcom/qennnsad/aknkaksd/util/j1;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public n(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->k:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ""

    invoke-static {v1, p1, v0}, Lcom/qennnsad/aknkaksd/util/j1;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public o(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->i:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ""

    invoke-static {v1, p1, v0}, Lcom/qennnsad/aknkaksd/util/j1;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public p(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->m:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    const/4 v2, 0x0

    aput-object v1, v0, v2

    const-string v1, ""

    invoke-static {v1, p1, v0}, Lcom/qennnsad/aknkaksd/util/j1;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public q(Ljava/lang/String;)Ljava/lang/CharSequence;
    .locals 1
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    invoke-virtual {p0, p1, v0}, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->t(Ljava/lang/String;Z)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public r(Ljava/lang/String;I)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x1

    new-array v1, v0, [Ljava/lang/Object;

    const/4 v2, 0x0

    aput-object p1, v1, v2

    const-string p1, "%s:  "

    invoke-static {p1, v1}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    new-array v0, v0, [Ljava/lang/Object;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v1, v0, v2

    const-string p2, ""

    invoke-static {p2, p1, v0}, Lcom/qennnsad/aknkaksd/util/j1;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public s(Ljava/lang/String;IZ)Ljava/lang/CharSequence;
    .locals 2
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p3, :cond_0

    new-array p3, v1, [Ljava/lang/Object;

    aput-object p1, p3, v0

    const-string p1, "%s:  "

    invoke-static {p1, p3}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-array p3, v1, [Ljava/lang/Object;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    invoke-direct {v1, p2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v1, p3, v0

    const-string p2, ""

    invoke-static {p2, p1, p3}, Lcom/qennnsad/aknkaksd/util/j1;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method

.method public t(Ljava/lang/String;Z)Ljava/lang/CharSequence;
    .locals 3
    .param p1    # Ljava/lang/String;
        .annotation build Landroidx/annotation/NonNull;
        .end annotation
    .end param

    const/4 v0, 0x0

    const/4 v1, 0x1

    if-eqz p2, :cond_0

    new-array p2, v1, [Ljava/lang/Object;

    aput-object p1, p2, v0

    const-string p1, "%s:  "

    invoke-static {p1, p2}, Ljava/lang/String;->format(Ljava/lang/String;[Ljava/lang/Object;)Ljava/lang/String;

    move-result-object p1

    :cond_0
    new-array p2, v1, [Ljava/lang/Object;

    new-instance v1, Landroid/text/style/ForegroundColorSpan;

    iget v2, p0, Lcom/qennnsad/aknkaksd/presentation/ui/room/pubmsg/c;->i:I

    invoke-direct {v1, v2}, Landroid/text/style/ForegroundColorSpan;-><init>(I)V

    aput-object v1, p2, v0

    const-string v0, ""

    invoke-static {v0, p1, p2}, Lcom/qennnsad/aknkaksd/util/j1;->b(Ljava/lang/CharSequence;Ljava/lang/CharSequence;[Ljava/lang/Object;)Ljava/lang/CharSequence;

    move-result-object p1

    return-object p1
.end method
