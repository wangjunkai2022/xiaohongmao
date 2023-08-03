.class public final Lcom/opensource/svgaplayer/l$b;
.super Ljava/lang/Object;
.source "SVGAVideoEntity.kt"

# interfaces
.implements Lcom/opensource/svgaplayer/k$a;


# annotations
.annotation system Ldalvik/annotation/EnclosingMethod;
    value = Lcom/opensource/svgaplayer/l;->I(Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V
.end annotation

.annotation system Ldalvik/annotation/InnerClass;
    accessFlags = 0x19
    name = null
.end annotation

.annotation system Ldalvik/annotation/SourceDebugExtension;
    value = "SMAP\nSVGAVideoEntity.kt\nKotlin\n*S Kotlin\n*F\n+ 1 SVGAVideoEntity.kt\ncom/opensource/svgaplayer/SVGAVideoEntity$setupSoundPool$1\n*L\n1#1,348:1\n*E\n"
.end annotation

.annotation runtime Lkotlin/Metadata;
    bv = {}
    d1 = {
        "\u0000\u0017\n\u0000\n\u0002\u0018\u0002\n\u0002\u0010\u0007\n\u0000\n\u0002\u0010\u0002\n\u0002\u0008\u0003*\u0001\u0000\u0008\n\u0018\u00002\u00020\u0001J\u0010\u0010\u0005\u001a\u00020\u00042\u0006\u0010\u0003\u001a\u00020\u0002H\u0016J\u0008\u0010\u0006\u001a\u00020\u0004H\u0016\u00a8\u0006\u0007"
    }
    d2 = {
        "com/opensource/svgaplayer/l$b",
        "Lcom/opensource/svgaplayer/k$a;",
        "",
        "value",
        "",
        "a",
        "onComplete",
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
.field final synthetic a:Lcom/opensource/svgaplayer/l;

.field final synthetic b:Lkotlin/jvm/internal/Ref$IntRef;

.field final synthetic c:Lcom/opensource/svgaplayer/proto/MovieEntity;

.field final synthetic d:Lkotlin/jvm/functions/Function0;


# direct methods
.method constructor <init>(Lcom/opensource/svgaplayer/l;Lkotlin/jvm/internal/Ref$IntRef;Lcom/opensource/svgaplayer/proto/MovieEntity;Lkotlin/jvm/functions/Function0;)V
    .locals 0
    .annotation system Ldalvik/annotation/Signature;
        value = {
            "(",
            "Lkotlin/jvm/internal/Ref$IntRef;",
            "Lcom/opensource/svgaplayer/proto/MovieEntity;",
            "Lkotlin/jvm/functions/Function0;",
            ")V"
        }
    .end annotation

    iput-object p1, p0, Lcom/opensource/svgaplayer/l$b;->a:Lcom/opensource/svgaplayer/l;

    iput-object p2, p0, Lcom/opensource/svgaplayer/l$b;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iput-object p3, p0, Lcom/opensource/svgaplayer/l$b;->c:Lcom/opensource/svgaplayer/proto/MovieEntity;

    iput-object p4, p0, Lcom/opensource/svgaplayer/l$b;->d:Lkotlin/jvm/functions/Function0;

    invoke-direct {p0}, Ljava/lang/Object;-><init>()V

    return-void
.end method


# virtual methods
.method public a(F)V
    .locals 2

    sget-object v0, Lcom/opensource/svgaplayer/k;->e:Lcom/opensource/svgaplayer/k;

    iget-object v1, p0, Lcom/opensource/svgaplayer/l$b;->a:Lcom/opensource/svgaplayer/l;

    invoke-virtual {v0, p1, v1}, Lcom/opensource/svgaplayer/k;->m(FLcom/opensource/svgaplayer/l;)V

    return-void
.end method

.method public onComplete()V
    .locals 3

    .line 1
    iget-object v0, p0, Lcom/opensource/svgaplayer/l$b;->b:Lkotlin/jvm/internal/Ref$IntRef;

    iget v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    add-int/lit8 v1, v1, 0x1

    iput v1, v0, Lkotlin/jvm/internal/Ref$IntRef;->element:I

    .line 2
    iget-object v0, p0, Lcom/opensource/svgaplayer/l$b;->c:Lcom/opensource/svgaplayer/proto/MovieEntity;

    iget-object v0, v0, Lcom/opensource/svgaplayer/proto/MovieEntity;->audios:Ljava/util/List;

    const-string v2, "entity.audios"

    invoke-static {v0, v2}, Lkotlin/jvm/internal/Intrinsics;->checkExpressionValueIsNotNull(Ljava/lang/Object;Ljava/lang/String;)V

    invoke-interface {v0}, Ljava/util/Collection;->size()I

    move-result v0

    if-lt v1, v0, :cond_0

    .line 3
    iget-object v0, p0, Lcom/opensource/svgaplayer/l$b;->d:Lkotlin/jvm/functions/Function0;

    invoke-interface {v0}, Lkotlin/jvm/functions/Function0;->invoke()Ljava/lang/Object;

    :cond_0
    return-void
.end method
