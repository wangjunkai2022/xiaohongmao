.class public Lcom/opensource/svgaplayer/drawer/a;
.super Ljava/lang/Object;
.source "SGVADrawer.kt"


# annotations
.annotation system Ldalvik/annotation/MemberClasses;
    value = {
        Lcom/opensource/svgaplayer/drawer/a$a;
    }
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSGVADrawer.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SGVADrawer.kt\ncom/opensource/svgaplayer/drawer/SGVADrawer\n+ 2 _Collections.kt\nkotlin/collections/CollectionsKt___CollectionsKt\n*L\n1#1,54:1\n1365#2,9:55\n1587#2,2:64\n1374#2:66\n1587#2,2:67\n*E\n*S KotlinDebug\n*F\n+ 1 SGVADrawer.kt\ncom/opensource/svgaplayer/drawer/SGVADrawer\n*L\n28#1,9:55\n28#1,2:64\n28#1:66\n46#1,2:67\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000@\n\u0002\u0018\u0002\n\u0002\u0010\u0000\n\u0002\u0010\u0008\n\u0000\n\u0002\u0010 \n\u0002\u0018\u0002\n\u0002\u0008\u0003\n\u0002\u0010\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0000\n\u0002\u0018\u0002\n\u0002\u0008\u0002\n\u0002\u0018\u0002\n\u0002\u0008\u0004\n\u0002\u0018\u0002\n\u0002\u0008\u0007\u0008\u0010\u0018\u00002\u00020\u0001:\u0001\u0010B\u000f\u0012\u0006\u0010\u0015\u001a\u00020\u0011\u00a2\u0006\u0004\u0008\u001b\u0010\u001cJ!\u0010\u0006\u001a\u000c\u0012\u0008\u0012\u00060\u0005R\u00020\u00000\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0000\u00a2\u0006\u0004\u0008\u0006\u0010\u0007J!\u0010\n\u001a\u00020\t2\u0010\u0010\u0008\u001a\u000c\u0012\u0008\u0012\u00060\u0005R\u00020\u00000\u0004H\u0000\u00a2\u0006\u0004\u0008\n\u0010\u000bJ \u0010\u0010\u001a\u00020\t2\u0006\u0010\r\u001a\u00020\u000c2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u000f\u001a\u00020\u000eH\u0016R\u0017\u0010\u0015\u001a\u00020\u00118\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0012\u0010\u0013\u001a\u0004\u0008\u0012\u0010\u0014R\u0017\u0010\u0017\u001a\u00020\u00168\u0006\u00a2\u0006\u000c\n\u0004\u0008\u0017\u0010\u0018\u001a\u0004\u0008\u0019\u0010\u001a\u00a8\u0006\u001d"
    }
    d2 = {
        "Lcom/opensource/svgaplayer/drawer/a;",
        "",
        "",
        "frameIndex",
        "",
        "Lcom/opensource/svgaplayer/drawer/a$a;",
        "e",
        "(I)Ljava/util/List;",
        "sprites",
        "",
        "d",
        "(Ljava/util/List;)V",
        "Landroid/graphics/Canvas;",
        "canvas",
        "Landroid/widget/ImageView$ScaleType;",
        "scaleType",
        "a",
        "Lcom/opensource/svgaplayer/l;",
        "c",
        "Lcom/opensource/svgaplayer/l;",
        "()Lcom/opensource/svgaplayer/l;",
        "videoItem",
        "Lu4/f;",
        "scaleInfo",
        "Lu4/f;",
        "b",
        "()Lu4/f;",
        "<init>",
        "(Lcom/opensource/svgaplayer/l;)V",
        "com.opensource.svgaplayer"
    }
    k = 0x1
    mv = {
        0x1,
        0x4,
        0x0
    }
.end annotation


# instance fields
.field private final a:Lu4/f;
    .annotation build Lm8/g;
    .end annotation
.end field

.field private final b:Lu4/a$b;
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "Lu4/a$b<",
            "Lcom/opensource/svgaplayer/drawer/a$a;",
            ">;"
        }
    .end annotation
.end field

.field private final c:Lcom/opensource/svgaplayer/l;
    .annotation build Lm8/g;
    .end annotation
.end field


# direct methods
.method public constructor <init>(Lcom/opensource/svgaplayer/l;)V
    .locals 1
    .param p1    # Lcom/opensource/svgaplayer/l;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    iput-object p1, p0, Lcom/opensource/svgaplayer/drawer/a;->c:Lcom/opensource/svgaplayer/l;

    .line 2
    new-instance v0, Lu4/f;

    invoke-direct {v0}, Lu4/f;-><init>()V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/a;->a:Lu4/f;

    .line 3
    invoke-virtual {p1}, Lcom/opensource/svgaplayer/l;->s()Ljava/util/List;

    move-result-object p1

    invoke-interface {p1}, Ljava/util/List;->size()I

    move-result p1

    const/4 v0, 0x1

    invoke-static {v0, p1}, Ljava/lang/Math;->max(II)I

    move-result p1

    new-instance v0, Lu4/a$b;

    invoke-direct {v0, p1}, Lu4/a$b;-><init>(I)V

    iput-object v0, p0, Lcom/opensource/svgaplayer/drawer/a;->b:Lu4/a$b;

    return-void
.end method


# virtual methods
.method public a(Landroid/graphics/Canvas;ILandroid/widget/ImageView$ScaleType;)V
    .locals 6
    .param p1    # Landroid/graphics/Canvas;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .param p3    # Landroid/widget/ImageView$ScaleType;
        .annotation build Lm8/g;
        .end annotation
    .end param

    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/a;->a:Lu4/f;

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getWidth()I

    move-result p2

    int-to-float v1, p2

    invoke-virtual {p1}, Landroid/graphics/Canvas;->getHeight()I

    move-result p1

    int-to-float v2, p1

    iget-object p1, p0, Lcom/opensource/svgaplayer/drawer/a;->c:Lcom/opensource/svgaplayer/l;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/l;->t()Lu4/d;

    move-result-object p1

    invoke-virtual {p1}, Lu4/d;->b()D

    move-result-wide p1

    double-to-float v3, p1

    iget-object p1, p0, Lcom/opensource/svgaplayer/drawer/a;->c:Lcom/opensource/svgaplayer/l;

    invoke-virtual {p1}, Lcom/opensource/svgaplayer/l;->t()Lu4/d;

    move-result-object p1

    invoke-virtual {p1}, Lu4/d;->a()D

    move-result-wide p1

    double-to-float v4, p1

    move-object v5, p3

    invoke-virtual/range {v0 .. v5}, Lu4/f;->g(FFFFLandroid/widget/ImageView$ScaleType;)V

    return-void
.end method

.method public final b()Lu4/f;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/a;->a:Lu4/f;

    return-object v0
.end method

.method public final c()Lcom/opensource/svgaplayer/l;
    .locals 1
    .annotation build Lm8/g;
    .end annotation

    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/a;->c:Lcom/opensource/svgaplayer/l;

    return-object v0
.end method

.method public final d(Ljava/util/List;)V
    .locals 2
    .param p1    # Ljava/util/List;
        .annotation build Lm8/g;
        .end annotation
    .end param
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/drawer/a$a;",
            ">;)V"
        }
    .end annotation

    .line 1
    invoke-interface {p1}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object p1

    :goto_0
    invoke-interface {p1}, Ljava/util/Iterator;->hasNext()Z

    move-result v0

    if-eqz v0, :cond_0

    invoke-interface {p1}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v0

    check-cast v0, Lcom/opensource/svgaplayer/drawer/a$a;

    .line 2
    iget-object v1, p0, Lcom/opensource/svgaplayer/drawer/a;->b:Lu4/a$b;

    invoke-virtual {v1, v0}, Lu4/a$b;->release(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_0
    return-void
.end method

.method public final e(I)Ljava/util/List;
    .locals 11
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(I)",
            "Ljava/util/List<",
            "Lcom/opensource/svgaplayer/drawer/a$a;",
            ">;"
        }
    .end annotation

    .annotation build Lm8/g;
    .end annotation

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/drawer/a;->c:Lcom/opensource/svgaplayer/l;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/l;->s()Ljava/util/List;

    move-result-object v0

    .line 2
    new-instance v1, Ljava/util/ArrayList;

    invoke-direct {v1}, Ljava/util/ArrayList;-><init>()V

    .line 3
    invoke-interface {v0}, Ljava/lang/Iterable;->iterator()Ljava/util/Iterator;

    move-result-object v0

    :cond_0
    :goto_0
    invoke-interface {v0}, Ljava/util/Iterator;->hasNext()Z

    move-result v2

    if-eqz v2, :cond_4

    invoke-interface {v0}, Ljava/util/Iterator;->next()Ljava/lang/Object;

    move-result-object v2

    .line 4
    check-cast v2, Lt4/f;

    const/4 v3, 0x0

    if-ltz p1, :cond_3

    .line 5
    invoke-virtual {v2}, Lt4/f;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4}, Ljava/util/List;->size()I

    move-result v4

    if-ge p1, v4, :cond_3

    .line 6
    invoke-virtual {v2}, Lt4/f;->b()Ljava/lang/String;

    move-result-object v4

    if-eqz v4, :cond_3

    const/4 v5, 0x0

    const/4 v6, 0x2

    const-string v7, ".matte"

    .line 7
    invoke-static {v4, v7, v5, v6, v3}, Lkotlin/text/StringsKt;->endsWith$default(Ljava/lang/String;Ljava/lang/String;ZILjava/lang/Object;)Z

    move-result v4

    if-nez v4, :cond_1

    invoke-virtual {v2}, Lt4/f;->a()Ljava/util/List;

    move-result-object v4

    invoke-interface {v4, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v4

    check-cast v4, Lt4/g;

    invoke-virtual {v4}, Lt4/g;->a()D

    move-result-wide v4

    const-wide/16 v6, 0x0

    cmpg-double v8, v4, v6

    if-gtz v8, :cond_1

    goto :goto_2

    .line 8
    :cond_1
    iget-object v3, p0, Lcom/opensource/svgaplayer/drawer/a;->b:Lu4/a$b;

    invoke-virtual {v3}, Lu4/a$b;->acquire()Ljava/lang/Object;

    move-result-object v3

    check-cast v3, Lcom/opensource/svgaplayer/drawer/a$a;

    if-eqz v3, :cond_2

    goto :goto_1

    :cond_2
    new-instance v3, Lcom/opensource/svgaplayer/drawer/a$a;

    const/4 v6, 0x0

    const/4 v7, 0x0

    const/4 v8, 0x0

    const/4 v9, 0x7

    const/4 v10, 0x0

    move-object v4, v3

    move-object v5, p0

    invoke-direct/range {v4 .. v10}, Lcom/opensource/svgaplayer/drawer/a$a;-><init>(Lcom/opensource/svgaplayer/drawer/a;Ljava/lang/String;Ljava/lang/String;Lt4/g;ILkotlin/jvm/internal/DefaultConstructorMarker;)V

    .line 9
    :goto_1
    invoke-virtual {v2}, Lt4/f;->c()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/opensource/svgaplayer/drawer/a$a;->i(Ljava/lang/String;)V

    .line 10
    invoke-virtual {v2}, Lt4/f;->b()Ljava/lang/String;

    move-result-object v4

    invoke-virtual {v3, v4}, Lcom/opensource/svgaplayer/drawer/a$a;->h(Ljava/lang/String;)V

    .line 11
    invoke-virtual {v2}, Lt4/f;->a()Ljava/util/List;

    move-result-object v2

    invoke-interface {v2, p1}, Ljava/util/List;->get(I)Ljava/lang/Object;

    move-result-object v2

    check-cast v2, Lt4/g;

    invoke-virtual {v3, v2}, Lcom/opensource/svgaplayer/drawer/a$a;->g(Lt4/g;)V

    :cond_3
    :goto_2
    if-eqz v3, :cond_0

    .line 12
    invoke-interface {v1, v3}, Ljava/util/Collection;->add(Ljava/lang/Object;)Z

    goto :goto_0

    :cond_4
    return-object v1
.end method
