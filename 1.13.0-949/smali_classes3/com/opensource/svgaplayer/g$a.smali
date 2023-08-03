.class public final Lcom/opensource/svgaplayer/g$a;
.super Ljava/lang/Object;
.source "SVGADynamicEntity.kt"

# interfaces
.implements Lcom/opensource/svgaplayer/b;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/g;->n(Ljava/util/List;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGADynamicEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGADynamicEntity.kt\ncom/opensource/svgaplayer/SVGADynamicEntity$setClickArea$1\n*L\n1#1,153:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u001f\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u000e\n\u0000\n\u0002\u0010\u0008\n\u0002\u0008\u0004\n\u0002\u0010\u0002\n\u0002\u0008\u0002*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J0\u0010\n\u001a\u00020\t2\u0006\u0010\u0003\u001a\u00020\u00022\u0006\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0006\u001a\u00020\u00042\u0006\u0010\u0007\u001a\u00020\u00042\u0006\u0010\u0008\u001a\u00020\u0004H\u0016\u00a8\u0006\u000b"
    }
    d2 = {
        "com/opensource/svgaplayer/g$a",
        "Lcom/opensource/svgaplayer/b;",
        "",
        "key",
        "",
        "x0",
        "y0",
        "x1",
        "y1",
        "",
        "a",
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
.field final synthetic a:Lcom/opensource/svgaplayer/g;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/g;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "()V"
        }
    .end annotation

    iput-object p1, p0, Lcom/opensource/svgaplayer/g$a;->a:Lcom/opensource/svgaplayer/g;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(Ljava/lang/String;IIII)V
    .locals 6
    .param p1    # Ljava/lang/String;
        .annotation build Lm8/g;
        .end annotation
    .end param

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/g$a;->a:Lcom/opensource/svgaplayer/g;

    invoke-virtual {v0}, Lcom/opensource/svgaplayer/g;->k()Ljava/util/HashMap;

    move-result-object v0

    .line 2
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object v1

    const/4 v2, 0x3

    const/4 v3, 0x2

    const/4 v4, 0x1

    const/4 v5, 0x0

    if-nez v1, :cond_0

    const/4 v1, 0x4

    new-array v1, v1, [I

    aput p2, v1, v5

    aput p3, v1, v4

    aput p4, v1, v3

    aput p5, v1, v2

    .line 3
    invoke-virtual {v0, p1, v1}, Ljava/util/HashMap;->put(Ljava/lang/Object;Ljava/lang/Object;)Ljava/lang/Object;

    goto :goto_0

    .line 4
    :cond_0
    invoke-virtual {v0, p1}, Ljava/util/HashMap;->get(Ljava/lang/Object;)Ljava/lang/Object;

    move-result-object p1

    check-cast p1, [I

    if-eqz p1, :cond_1

    .line 5
    aput p2, p1, v5

    .line 6
    aput p3, p1, v4

    .line 7
    aput p4, p1, v3

    .line 8
    aput p5, p1, v2

    :cond_1
    :goto_0
    return-void
.end method
